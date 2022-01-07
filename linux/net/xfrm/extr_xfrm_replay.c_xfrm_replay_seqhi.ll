; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_seqhi.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_seqhi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_replay_state_esn = type { i64, i64, i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfrm_replay_seqhi(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfrm_replay_state_esn*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 1
  %12 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  store %struct.xfrm_replay_state_esn* %12, %struct.xfrm_replay_state_esn** %9, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XFRM_STATE_ESN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ntohl(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %25 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %28 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %31 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %29, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %37 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %40 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp sge i64 %38, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %21
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %55, %48
  br label %70

59:                                               ; preds = %21
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sge i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %70, %20
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
