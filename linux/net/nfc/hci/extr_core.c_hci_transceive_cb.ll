; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_transceive_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_transceive_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_hci_dev = type { i32, i32, i32 (i32, %struct.sk_buff*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @hci_transceive_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_transceive_cb(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_hci_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nfc_hci_dev*
  store %struct.nfc_hci_dev* %9, %struct.nfc_hci_dev** %7, align 8
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %11 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %33 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @skb_trim(%struct.sk_buff* %17, i32 %21)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %24, i32 0, i32 2
  %26 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %25, align 8
  %27 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %26(i32 %29, %struct.sk_buff* %30, i32 %31)
  br label %40

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %23
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
