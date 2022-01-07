; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.km_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i32)* @xfrm_replay_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_notify(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.km_event, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %65 [
    i32 128, label %7
    i32 129, label %51
  ]

7:                                                ; preds = %2
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %16, %20
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %12
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26, %7
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 129, i32* %4, align 4
  br label %49

48:                                               ; preds = %40
  br label %99

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %26, %12
  br label %65

51:                                               ; preds = %2
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 3
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 4
  %56 = call i32 @memcmp(%struct.TYPE_8__* %53, %struct.TYPE_7__* %55, i32 4)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %99

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %2, %64, %50
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 4
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 3
  %70 = call i32 @memcpy(%struct.TYPE_7__* %67, %struct.TYPE_8__* %69, i32 4)
  %71 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %72 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = call i32 @km_state_notify(%struct.xfrm_state* %76, %struct.km_event* %5)
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %65
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 2
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @mod_timer(i32* %84, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %48, %58, %92, %82, %65
  ret void
}

declare dso_local i32 @memcmp(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
