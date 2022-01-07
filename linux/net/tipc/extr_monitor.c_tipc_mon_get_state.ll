; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_mon_state = type { i32, i32, i64, i64, i32 }
%struct.tipc_monitor = type { i64, i64, i32 }
%struct.tipc_peer = type { i32, i32, i32 }

@MAX_PEER_DOWN_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_mon_get_state(%struct.net* %0, i32 %1, %struct.tipc_mon_state* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_mon_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_monitor*, align 8
  %10 = alloca %struct.tipc_peer*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tipc_mon_state* %2, %struct.tipc_mon_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %11, i32 %12)
  store %struct.tipc_monitor* %13, %struct.tipc_monitor** %9, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %16 = call i32 @tipc_mon_is_active(%struct.net* %14, %struct.tipc_monitor* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %20 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %22 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %103

23:                                               ; preds = %4
  %24 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %25 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %30 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %33 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %38 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %41 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %103

45:                                               ; preds = %36, %28, %23
  %46 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %47 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %46, i32 0, i32 2
  %48 = call i32 @read_lock_bh(i32* %47)
  %49 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.tipc_peer* @get_peer(%struct.tipc_monitor* %49, i32 %50)
  store %struct.tipc_peer* %51, %struct.tipc_peer** %10, align 8
  %52 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %53 = icmp ne %struct.tipc_peer* %52, null
  br i1 %53, label %54, label %99

54:                                               ; preds = %45
  %55 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %56 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %59 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %64 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %66 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %69 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %73 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MAX_PEER_DOWN_EVENTS, align 4
  %76 = icmp sge i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %79 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %83 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %86 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %88 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %91 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %95 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %7, align 8
  %98 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %54, %45
  %100 = load %struct.tipc_monitor*, %struct.tipc_monitor** %9, align 8
  %101 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %100, i32 0, i32 2
  %102 = call i32 @read_unlock_bh(i32* %101)
  br label %103

103:                                              ; preds = %99, %44, %18
  ret void
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

declare dso_local i32 @tipc_mon_is_active(%struct.net*, %struct.tipc_monitor*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_peer* @get_peer(%struct.tipc_monitor*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
