; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_table = type { i32 }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }

@nl_table = common dso_local global %struct.netlink_table* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @netlink_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_insert(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.netlink_table*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.netlink_table*, %struct.netlink_table** @nl_table, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %7, i64 %10
  store %struct.netlink_table* %11, %struct.netlink_table** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @lock_sock(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %72

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @sock_hold(%struct.sock* %37)
  %39 = load %struct.netlink_table*, %struct.netlink_table** %5, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @__netlink_insert(%struct.netlink_table* %39, %struct.sock* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EOVERFLOW, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EADDRINUSE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call i32 @sock_put(%struct.sock* %64)
  br label %72

66:                                               ; preds = %32
  %67 = call i32 (...) @smp_wmb()
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %63, %31
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 @release_sock(%struct.sock* %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @__netlink_insert(%struct.netlink_table*, %struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
