; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, %struct.sock* }
%struct.sock = type { i64, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@bnep_session_sem = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bnep_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_session(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.bnep_session*
  store %struct.bnep_session* %8, %struct.bnep_session** %3, align 8
  %9 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %10 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %13 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %5, align 8
  %17 = load i32, i32* @wait, align 4
  %18 = load i32, i32* @woken_wake_function, align 4
  %19 = call i32 @DEFINE_WAIT_FUNC(i32 %17, i32 %18)
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @set_user_nice(i32 %21, i32 -15)
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i32 @sk_sleep(%struct.sock* %23)
  %25 = call i32 @add_wait_queue(i32 %24, i32* @wait)
  br label %26

26:                                               ; preds = %1, %72
  %27 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %28 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %78

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %51, %32
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 3
  %36 = call %struct.sk_buff* @skb_dequeue(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_orphan(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @skb_linearize(%struct.sk_buff* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @bnep_rx_frame(%struct.bnep_session* %45, %struct.sk_buff* %46)
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BT_CONNECTED, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %78

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %71, %59
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  %63 = call %struct.sk_buff* @skb_dequeue(i32* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i64 @bnep_tx_frame(%struct.bnep_session* %66, %struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %72

71:                                               ; preds = %65
  br label %60

72:                                               ; preds = %70, %60
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netif_wake_queue(%struct.net_device* %73)
  %75 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %76 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %77 = call i32 @wait_woken(i32* @wait, i32 %75, i32 %76)
  br label %26

78:                                               ; preds = %58, %31
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = call i32 @sk_sleep(%struct.sock* %79)
  %81 = call i32 @remove_wait_queue(i32 %80, i32* @wait)
  %82 = call i32 @down_write(i32* @bnep_session_sem)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @unregister_netdev(%struct.net_device* %83)
  %85 = load i32, i32* @EUNATCH, align 4
  %86 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %87 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.sock*, %struct.sock** %89, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 1
  store i32 %85, i32* %91, align 8
  %92 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %93 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load %struct.sock*, %struct.sock** %95, align 8
  %97 = call i32 @sk_sleep(%struct.sock* %96)
  %98 = call i32 @wake_up_interruptible(i32 %97)
  %99 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %100 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @fput(i32 %103)
  %105 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %106 = call i32 @__bnep_unlink_session(%struct.bnep_session* %105)
  %107 = call i32 @up_write(i32* @bnep_session_sem)
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = call i32 @free_netdev(%struct.net_device* %108)
  %110 = call i32 @module_put_and_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @bnep_rx_frame(%struct.bnep_session*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @bnep_tx_frame(%struct.bnep_session*, %struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @__bnep_unlink_session(%struct.bnep_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @module_put_and_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
