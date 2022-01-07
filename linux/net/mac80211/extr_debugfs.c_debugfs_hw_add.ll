; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs.c_debugfs_hw_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs.c_debugfs_hw_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@total_ps_buffered = common dso_local global i32 0, align 4
@wep_iv = common dso_local global i32 0, align 4
@rate_ctrl_alg = common dso_local global i32 0, align 4
@queues = common dso_local global i32 0, align 4
@misc = common dso_local global i32 0, align 4
@hwflags = common dso_local global i32 0, align 4
@user_power = common dso_local global i32 0, align 4
@power = common dso_local global i32 0, align 4
@force_tx_status = common dso_local global i32 0, align 4
@aqm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"airtime_flags\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@dot11ACKFailureCount = common dso_local global i32 0, align 4
@dot11RTSFailureCount = common dso_local global i32 0, align 4
@dot11FCSErrorCount = common dso_local global i32 0, align 4
@dot11RTSSuccessCount = common dso_local global i32 0, align 4
@dot11FailedCount = common dso_local global i32 0, align 4
@dot11FrameDuplicateCount = common dso_local global i32 0, align 4
@dot11MulticastReceivedFrameCount = common dso_local global i32 0, align 4
@dot11MulticastTransmittedFrameCount = common dso_local global i32 0, align 4
@dot11MultipleRetryCount = common dso_local global i32 0, align 4
@dot11ReceivedFragmentCount = common dso_local global i32 0, align 4
@dot11RetryCount = common dso_local global i32 0, align 4
@dot11TransmittedFragmentCount = common dso_local global i32 0, align 4
@dot11TransmittedFrameCount = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@rx_expand_skb_head_defrag = common dso_local global i32 0, align 4
@rx_handlers_drop = common dso_local global i32 0, align 4
@rx_handlers_drop_defrag = common dso_local global i32 0, align 4
@rx_handlers_drop_nullfunc = common dso_local global i32 0, align 4
@rx_handlers_fragments = common dso_local global i32 0, align 4
@rx_handlers_queued = common dso_local global i32 0, align 4
@tx_expand_skb_head = common dso_local global i32 0, align 4
@tx_expand_skb_head_cloned = common dso_local global i32 0, align 4
@tx_handlers_drop = common dso_local global i32 0, align 4
@tx_handlers_drop_not_assoc = common dso_local global i32 0, align 4
@tx_handlers_drop_unauth_port = common dso_local global i32 0, align 4
@tx_handlers_drop_wep = common dso_local global i32 0, align 4
@tx_handlers_queued = common dso_local global i32 0, align 4
@tx_status_drop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugfs_hw_add(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @total_ps_buffered, align 4
  %21 = call i32 @DEBUGFS_ADD(i32 %20)
  %22 = load i32, i32* @wep_iv, align 4
  %23 = call i32 @DEBUGFS_ADD(i32 %22)
  %24 = load i32, i32* @rate_ctrl_alg, align 4
  %25 = call i32 @DEBUGFS_ADD(i32 %24)
  %26 = load i32, i32* @queues, align 4
  %27 = call i32 @DEBUGFS_ADD(i32 %26)
  %28 = load i32, i32* @misc, align 4
  %29 = call i32 @DEBUGFS_ADD(i32 %28)
  %30 = load i32, i32* @hwflags, align 4
  %31 = call i32 @DEBUGFS_ADD(i32 %30)
  %32 = load i32, i32* @user_power, align 4
  %33 = call i32 @DEBUGFS_ADD(i32 %32)
  %34 = load i32, i32* @power, align 4
  %35 = call i32 @DEBUGFS_ADD(i32 %34)
  %36 = load i32, i32* @force_tx_status, align 4
  %37 = call i32 @DEBUGFS_ADD_MODE(i32 %36, i32 384)
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %14
  %45 = load i32, i32* @aqm, align 4
  %46 = call i32 @DEBUGFS_ADD_MODE(i32 %45, i32 384)
  br label %47

47:                                               ; preds = %44, %14
  %48 = load %struct.dentry*, %struct.dentry** %3, align 8
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %49, i32 0, i32 0
  %51 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %48, i32* %50)
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %52)
  %54 = bitcast i8* %53 to %struct.dentry*
  store %struct.dentry* %54, %struct.dentry** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  %56 = icmp ne %struct.dentry* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %67

58:                                               ; preds = %47
  %59 = load i32, i32* @dot11ACKFailureCount, align 4
  %60 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %59)
  %61 = load i32, i32* @dot11RTSFailureCount, align 4
  %62 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %61)
  %63 = load i32, i32* @dot11FCSErrorCount, align 4
  %64 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %63)
  %65 = load i32, i32* @dot11RTSSuccessCount, align 4
  %66 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %65)
  br label %67

67:                                               ; preds = %58, %57, %13
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD(i32) #1

declare dso_local i32 @DEBUGFS_ADD_MODE(i32, i32) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @DEBUGFS_DEVSTATS_ADD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
