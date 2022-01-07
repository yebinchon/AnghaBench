; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_check_bmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_check_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfrm_replay_state_esn = type { i64, i64, i32* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32)* @xfrm_replay_check_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_replay_check_bmp(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_replay_state_esn*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %15, align 8
  store %struct.xfrm_replay_state_esn* %16, %struct.xfrm_replay_state_esn** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ntohl(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %20 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %12, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %25 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

29:                                               ; preds = %3
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %112

36:                                               ; preds = %29
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %39 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %119

46:                                               ; preds = %36
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %49 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %112

58:                                               ; preds = %46
  %59 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %60 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %64 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = srem i64 %62, %65
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %75 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = srem i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  br label %88

79:                                               ; preds = %58
  %80 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %81 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %83, %84
  %86 = sub nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* %8, align 4
  %90 = lshr i32 %89, 5
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 31
  store i32 %92, i32* %8, align 4
  %93 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  %94 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %88
  br label %106

105:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %119

106:                                              ; preds = %104
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %52, %35
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @xfrm_audit_state_replay(%struct.xfrm_state* %113, %struct.sk_buff* %114, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %105, %45, %28
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xfrm_audit_state_replay(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
