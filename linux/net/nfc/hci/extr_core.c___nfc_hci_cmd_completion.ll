; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c___nfc_hci_cmd_completion.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c___nfc_hci_cmd_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*, i32, %struct.sk_buff*)* @__nfc_hci_cmd_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfc_hci_cmd_completion(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %7, i32 0, i32 2
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.sk_buff*, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %20, align 8
  %22 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 %21(i32 %26, %struct.sk_buff* %27, i32 %28)
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @kfree(%struct.TYPE_2__* %36)
  %38 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
