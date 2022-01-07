; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow_bmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.xfrm_replay_state_esn* }
%struct.TYPE_9__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_replay_state_esn = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@XFRM_TYPE_REPLAY_PROT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_replay_overflow_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_replay_overflow_bmp(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_replay_state_esn*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 2
  %11 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %10, align 8
  store %struct.xfrm_replay_state_esn* %11, %struct.xfrm_replay_state_esn** %7, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %13 = call %struct.net* @xs_net(%struct.xfrm_state* %12)
  store %struct.net* %13, %struct.net** %8, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XFRM_TYPE_REPLAY_PROT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %2
  %23 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %24 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.TYPE_10__* @XFRM_SKB_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_10__* @XFRM_SKB_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %38 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %22
  %45 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %46 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state* %49, %struct.sk_buff* %50)
  %52 = load i32, i32* @EOVERFLOW, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %71

55:                                               ; preds = %22
  %56 = load %struct.net*, %struct.net** %8, align 8
  %57 = call i64 @xfrm_aevent_is_on(%struct.net* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %63, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %66 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %67 = call i32 %64(%struct.xfrm_state* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %55
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %44
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.TYPE_10__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i64 @xfrm_aevent_is_on(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
