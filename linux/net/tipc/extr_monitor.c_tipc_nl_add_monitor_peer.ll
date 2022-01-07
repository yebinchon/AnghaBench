; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_nl_add_monitor_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_nl_add_monitor_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32 }
%struct.tipc_monitor = type { i32, %struct.tipc_peer* }
%struct.tipc_peer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_add_monitor_peer(%struct.net* %0, %struct.tipc_nl_msg* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_nl_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tipc_monitor*, align 8
  %11 = alloca %struct.tipc_peer*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %12, i64 %13)
  store %struct.tipc_monitor* %14, %struct.tipc_monitor** %10, align 8
  %15 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %16 = icmp ne %struct.tipc_monitor* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %69

20:                                               ; preds = %4
  %21 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %22 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %21, i32 0, i32 0
  %23 = call i32 @read_lock_bh(i32* %22)
  %24 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %25 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %24, i32 0, i32 1
  %26 = load %struct.tipc_peer*, %struct.tipc_peer** %25, align 8
  store %struct.tipc_peer* %26, %struct.tipc_peer** %11, align 8
  br label %27

27:                                               ; preds = %58, %20
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.tipc_peer*, %struct.tipc_peer** %11, align 8
  %33 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64*, i64** %9, align 8
  store i64 0, i64* %39, align 8
  br label %41

40:                                               ; preds = %31
  br label %58

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.tipc_peer*, %struct.tipc_peer** %11, align 8
  %44 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %45 = call i64 @__tipc_nl_add_monitor_peer(%struct.tipc_peer* %43, %struct.tipc_nl_msg* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.tipc_peer*, %struct.tipc_peer** %11, align 8
  %49 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %53 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %52, i32 0, i32 0
  %54 = call i32 @read_unlock_bh(i32* %53)
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %69

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.tipc_peer*, %struct.tipc_peer** %11, align 8
  %60 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %59)
  store %struct.tipc_peer* %60, %struct.tipc_peer** %11, align 8
  %61 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %62 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %61, i32 0, i32 1
  %63 = load %struct.tipc_peer*, %struct.tipc_peer** %62, align 8
  %64 = icmp ne %struct.tipc_peer* %60, %63
  br i1 %64, label %27, label %65

65:                                               ; preds = %58
  %66 = load %struct.tipc_monitor*, %struct.tipc_monitor** %10, align 8
  %67 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %66, i32 0, i32 0
  %68 = call i32 @read_unlock_bh(i32* %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %47, %17
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i64) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @__tipc_nl_add_monitor_peer(%struct.tipc_peer*, %struct.tipc_nl_msg*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local %struct.tipc_peer* @peer_nxt(%struct.tipc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
