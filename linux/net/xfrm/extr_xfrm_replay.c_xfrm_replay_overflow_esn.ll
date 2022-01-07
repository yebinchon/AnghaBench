; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow_esn.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.xfrm_replay_state_esn* }
%struct.TYPE_9__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_replay_state_esn = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@XFRM_TYPE_REPLAY_PROT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_replay_overflow_esn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_replay_overflow_esn(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
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
  br i1 %21, label %22, label %91

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
  %32 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %33 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_10__* @XFRM_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i64 %34, i64* %39, align 8
  %40 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %41 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %22
  %48 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %49 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.TYPE_10__* @XFRM_SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 %51, i64* %56, align 8
  %57 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %58 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %47
  %62 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %63 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %67 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state* %70, %struct.sk_buff* %71)
  %73 = load i32, i32* @EOVERFLOW, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %93

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76, %22
  %78 = load %struct.net*, %struct.net** %8, align 8
  %79 = call i64 @xfrm_aevent_is_on(%struct.net* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %85, align 8
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %88 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %89 = call i32 %86(%struct.xfrm_state* %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %77
  br label %91

91:                                               ; preds = %90, %2
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %61
  %94 = load i32, i32* %3, align 4
  ret i32 %94
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
