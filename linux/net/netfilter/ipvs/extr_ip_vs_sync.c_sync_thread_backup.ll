; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_sync_thread_backup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_sync_thread_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_thread_data = type { i32, %struct.TYPE_6__*, i32, %struct.netns_ipvs* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.netns_ipvs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"sync thread started: state = BACKUP, mcast_ifn = %s, syncid = %d, id = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"receiving message error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sync_thread_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_thread_backup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ip_vs_sync_thread_data*, align 8
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ip_vs_sync_thread_data*
  store %struct.ip_vs_sync_thread_data* %7, %struct.ip_vs_sync_thread_data** %3, align 8
  %8 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %9 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %8, i32 0, i32 3
  %10 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  store %struct.netns_ipvs* %10, %struct.netns_ipvs** %4, align 8
  %11 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %12 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %16 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %20 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %89, %1
  %24 = call i64 (...) @kthread_should_stop()
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %90

27:                                               ; preds = %23
  %28 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %29 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32* @sk_sleep(%struct.TYPE_5__* %32)
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %36 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @skb_queue_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = call i64 (...) @kthread_should_stop()
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %43, %27
  %47 = phi i1 [ true, %27 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @wait_event_interruptible(i32 %34, i32 %48)
  br label %50

50:                                               ; preds = %82, %46
  %51 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %52 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @skb_queue_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %89

60:                                               ; preds = %50
  %61 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %62 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %65 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %68 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ip_vs_receive(%struct.TYPE_6__* %63, i32 %66, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  br label %89

82:                                               ; preds = %60
  %83 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %84 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %85 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ip_vs_process_message(%struct.netns_ipvs* %83, i32 %86, i32 %87)
  br label %50

89:                                               ; preds = %81, %50
  br label %23

90:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32* @sk_sleep(%struct.TYPE_5__*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @ip_vs_receive(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ip_vs_process_message(%struct.netns_ipvs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
