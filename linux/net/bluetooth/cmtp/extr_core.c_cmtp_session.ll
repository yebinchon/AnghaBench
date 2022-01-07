; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@current = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@cmtp_session_sem = common dso_local global i32 0, align 4
@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmtp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_session(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cmtp_session*
  store %struct.cmtp_session* %7, %struct.cmtp_session** %3, align 8
  %8 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %9 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @woken_wake_function, align 4
  %15 = call i32 @DEFINE_WAIT_FUNC(i32 %13, i32 %14)
  %16 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %16)
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @set_user_nice(i32 %18, i32 -15)
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @sk_sleep(%struct.sock* %20)
  %22 = call i32 @add_wait_queue(i32 %21, i32* @wait)
  br label %23

23:                                               ; preds = %1, %56
  %24 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %25 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BT_CONNECTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %62

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %55, %36
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = call %struct.sk_buff* @skb_dequeue(i32* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %5, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_orphan(%struct.sk_buff* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @skb_linearize(%struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @cmtp_recv_frame(%struct.cmtp_session* %49, %struct.sk_buff* %50)
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %58 = call i32 @cmtp_process_transmit(%struct.cmtp_session* %57)
  %59 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %60 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %61 = call i32 @wait_woken(i32* @wait, i32 %59, i32 %60)
  br label %23

62:                                               ; preds = %35, %28
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = call i32 @sk_sleep(%struct.sock* %63)
  %65 = call i32 @remove_wait_queue(i32 %64, i32* @wait)
  %66 = call i32 @down_write(i32* @cmtp_session_sem)
  %67 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %68 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CMTP_LOOPBACK, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %76 = call i32 @cmtp_detach_device(%struct.cmtp_session* %75)
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %79 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fput(i32 %82)
  %84 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %85 = call i32 @__cmtp_unlink_session(%struct.cmtp_session* %84)
  %86 = call i32 @up_write(i32* @cmtp_session_sem)
  %87 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %88 = call i32 @kfree(%struct.cmtp_session* %87)
  %89 = call i32 @module_put_and_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @cmtp_recv_frame(%struct.cmtp_session*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cmtp_process_transmit(%struct.cmtp_session*) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cmtp_detach_device(%struct.cmtp_session*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @__cmtp_unlink_session(%struct.cmtp_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.cmtp_session*) #1

declare dso_local i32 @module_put_and_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
