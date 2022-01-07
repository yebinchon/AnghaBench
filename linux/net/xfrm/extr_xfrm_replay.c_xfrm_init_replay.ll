; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_init_replay.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_init_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32*, %struct.TYPE_2__, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_replay_state_esn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@xfrm_replay_esn = common dso_local global i32 0, align 4
@xfrm_replay_bmp = common dso_local global i32 0, align 4
@xfrm_replay_legacy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_init_replay(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_replay_state_esn*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %6 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %5, i32 0, i32 2
  %7 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %6, align 8
  store %struct.xfrm_replay_state_esn* %7, %struct.xfrm_replay_state_esn** %4, align 8
  %8 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %9 = icmp ne %struct.xfrm_replay_state_esn* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %16 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = mul i64 %19, 8
  %21 = icmp ugt i64 %14, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %10
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @XFRM_STATE_ESN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 0
  store i32* @xfrm_replay_esn, i32** %43, align 8
  br label %47

44:                                               ; preds = %25
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 0
  store i32* @xfrm_replay_bmp, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %51

48:                                               ; preds = %1
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 0
  store i32* @xfrm_replay_legacy, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %38, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
