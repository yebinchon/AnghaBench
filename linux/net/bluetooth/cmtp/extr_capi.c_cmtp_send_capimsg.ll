; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_send_capimsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_send_capimsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.cmtp_scb = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@CAPI_DATA_B3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*, %struct.sk_buff*)* @cmtp_send_capimsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_send_capimsg(%struct.cmtp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cmtp_scb*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.cmtp_scb*
  store %struct.cmtp_scb* %10, %struct.cmtp_scb** %5, align 8
  %11 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %11, %struct.sk_buff* %12, i32 %15)
  %17 = load %struct.cmtp_scb*, %struct.cmtp_scb** %5, align 8
  %18 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @CAPIMSG_COMMAND(i32 %21)
  %23 = load i64, i64* @CAPI_DATA_B3, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.cmtp_scb*, %struct.cmtp_scb** %5, align 8
  %27 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %29 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_queue_tail(i32* %29, %struct.sk_buff* %30)
  %32 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %33 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sk_sleep(i32 %36)
  %38 = call i32 @wake_up_interruptible(i32 %37)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, %struct.sk_buff*, i32) #1

declare dso_local i64 @CAPIMSG_COMMAND(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @sk_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
