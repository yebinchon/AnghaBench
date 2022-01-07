; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_autobind.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_table = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.net = type { i32 }

@nl_table = common dso_local global %struct.netlink_table* null, align 8
@current = common dso_local global i32 0, align 4
@S32_MIN = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @netlink_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_autobind(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.netlink_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %10 = load %struct.socket*, %struct.socket** %2, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %4, align 8
  %15 = load %struct.netlink_table*, %struct.netlink_table** @nl_table, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %15, i64 %18
  store %struct.netlink_table* %19, %struct.netlink_table** %5, align 8
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @task_tgid_vnr(i32 %20)
  store i32 %21, i32* %6, align 4
  store i32 -4096, i32* %8, align 4
  br label %22

22:                                               ; preds = %60, %49, %1
  %23 = call i32 (...) @cond_resched()
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.netlink_table*, %struct.netlink_table** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.net*, %struct.net** %4, align 8
  %28 = call i32 @__netlink_lookup(%struct.netlink_table* %25, i32 %26, %struct.net* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -4096
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @S32_MIN, align 4
  %40 = load i32, i32* @S32_MIN, align 4
  %41 = sub nsw i32 -4096, %40
  %42 = call i32 @prandom_u32_max(i32 %41)
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, -4096
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -4097, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  store i32 %50, i32* %6, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @netlink_insert(%struct.sock* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EADDRINUSE, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %22

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @task_tgid_vnr(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__netlink_lookup(%struct.netlink_table*, i32, %struct.net*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @netlink_insert(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
