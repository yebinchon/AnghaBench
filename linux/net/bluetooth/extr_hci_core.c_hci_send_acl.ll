; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_send_acl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_send_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s chan %p flags 0x%4.4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_send_acl(%struct.hci_chan* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  store %struct.hci_chan* %0, %struct.hci_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %9 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  store %struct.hci_dev* %12, %struct.hci_dev** %7, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.hci_chan* %16, i32 %17)
  %19 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %20 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %21 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @hci_queue_acl(%struct.hci_chan* %19, i32* %21, %struct.sk_buff* %22, i32 %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_chan*, i32) #1

declare dso_local i32 @hci_queue_acl(%struct.hci_chan*, i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
