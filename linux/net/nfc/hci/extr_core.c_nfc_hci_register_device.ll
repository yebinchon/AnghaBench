; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@nfc_hci_msg_tx_work = common dso_local global i32 0, align 4
@nfc_hci_cmd_timeout = common dso_local global i32 0, align 4
@nfc_hci_msg_rx_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_register_device(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %3 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %3, i32 0, i32 7
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %6, i32 0, i32 6
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %9, i32 0, i32 5
  %11 = load i32, i32* @nfc_hci_msg_tx_work, align 4
  %12 = call i32 @INIT_WORK(i32* %10, i32 %11)
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %13, i32 0, i32 4
  %15 = load i32, i32* @nfc_hci_cmd_timeout, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %17, i32 0, i32 3
  %19 = call i32 @skb_queue_head_init(i32* %18)
  %20 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* @nfc_hci_msg_rx_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %24, i32 0, i32 1
  %26 = call i32 @skb_queue_head_init(i32* %25)
  %27 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nfc_register_device(i32 %29)
  ret i32 %30
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @nfc_register_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
