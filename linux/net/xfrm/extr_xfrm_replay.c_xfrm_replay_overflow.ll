; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@XFRM_TYPE_REPLAY_PROT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_replay_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_replay_overflow(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = call %struct.net* @xs_net(%struct.xfrm_state* %8)
  store %struct.net* %9, %struct.net** %7, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFRM_TYPE_REPLAY_PROT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %2
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %18
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state* %48, %struct.sk_buff* %49)
  %51 = load i32, i32* @EOVERFLOW, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %70

54:                                               ; preds = %18
  %55 = load %struct.net*, %struct.net** %7, align 8
  %56 = call i64 @xfrm_aevent_is_on(%struct.net* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %62, align 8
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %65 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %66 = call i32 %63(%struct.xfrm_state* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %54
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i64 @xfrm_aevent_is_on(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
