; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify_bmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64, i32, %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i64 }
%struct.xfrm_replay_state_esn = type { i64, i64 }
%struct.km_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i32)* @xfrm_replay_notify_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_notify_bmp(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.km_event, align 4
  %6 = alloca %struct.xfrm_replay_state_esn*, align 8
  %7 = alloca %struct.xfrm_replay_state_esn*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 3
  %10 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  store %struct.xfrm_replay_state_esn* %10, %struct.xfrm_replay_state_esn** %6, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 4
  %13 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %12, align 8
  store %struct.xfrm_replay_state_esn* %13, %struct.xfrm_replay_state_esn** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %73 [
    i32 128, label %15
    i32 129, label %55
  ]

15:                                               ; preds = %2
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %6, align 8
  %22 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %25 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %20
  %33 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %37 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %32, %15
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 129, i32* %4, align 4
  br label %53

52:                                               ; preds = %44
  br label %111

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %32, %20
  br label %73

55:                                               ; preds = %2
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 3
  %58 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %57, align 8
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 4
  %61 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %60, align 8
  %62 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %6, align 8
  %63 = call i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn* %62)
  %64 = call i32 @memcmp(%struct.xfrm_replay_state_esn* %58, %struct.xfrm_replay_state_esn* %61, i32 %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %111

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %2, %72, %54
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %75 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %74, i32 0, i32 4
  %76 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %75, align 8
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %78 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %77, i32 0, i32 3
  %79 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %78, align 8
  %80 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %6, align 8
  %81 = call i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn* %80)
  %82 = call i32 @memcpy(%struct.xfrm_replay_state_esn* %76, %struct.xfrm_replay_state_esn* %79, i32 %81)
  %83 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %84 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %89 = call i32 @km_state_notify(%struct.xfrm_state* %88, %struct.km_event* %5)
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %73
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 2
  %97 = load i64, i64* @jiffies, align 8
  %98 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %99 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = call i32 @mod_timer(i32* %96, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %52, %66, %104, %94, %73
  ret void
}

declare dso_local i32 @memcmp(%struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i32) #1

declare dso_local i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn*) #1

declare dso_local i32 @memcpy(%struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i32) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
