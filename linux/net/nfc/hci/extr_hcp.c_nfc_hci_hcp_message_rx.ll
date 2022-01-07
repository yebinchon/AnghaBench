; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_hcp.c_nfc_hci_hcp_message_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_hcp.c_nfc_hci_hcp_message_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"UNKNOWN MSG Type %d, instruction=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfc_hci_hcp_message_rx(%struct.nfc_hci_dev* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %29 [
    i32 128, label %12
    i32 130, label %17
    i32 129, label %23
  ]

12:                                               ; preds = %5
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = call i32 @nfc_hci_resp_received(%struct.nfc_hci_dev* %13, i32 %14, %struct.sk_buff* %15)
  br label %35

17:                                               ; preds = %5
  %18 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call i32 @nfc_hci_cmd_received(%struct.nfc_hci_dev* %18, i32 %19, i32 %20, %struct.sk_buff* %21)
  br label %35

23:                                               ; preds = %5
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = call i32 @nfc_hci_event_received(%struct.nfc_hci_dev* %24, i32 %25, i32 %26, %struct.sk_buff* %27)
  br label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %29, %23, %17, %12
  ret void
}

declare dso_local i32 @nfc_hci_resp_received(%struct.nfc_hci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_cmd_received(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_event_received(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
