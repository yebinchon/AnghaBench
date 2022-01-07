; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_recv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_2__*, %struct.smp_chan* }
%struct.TYPE_2__ = type { i32 }
%struct.smp_chan = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@HCI_ERROR_AUTH_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @smp_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_recv_cb(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smp_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7)
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @smp_sig_channel(%struct.l2cap_chan* %9, %struct.sk_buff* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 1
  %17 = load %struct.smp_chan*, %struct.smp_chan** %16, align 8
  store %struct.smp_chan* %17, %struct.smp_chan** %6, align 8
  %18 = load %struct.smp_chan*, %struct.smp_chan** %6, align 8
  %19 = icmp ne %struct.smp_chan* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.smp_chan*, %struct.smp_chan** %6, align 8
  %22 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %21, i32 0, i32 0
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HCI_ERROR_AUTH_FAILURE, align 4
  %31 = call i32 @hci_disconnect(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @smp_sig_channel(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @hci_disconnect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
