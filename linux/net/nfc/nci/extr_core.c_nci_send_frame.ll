; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"len %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RAW_PAYLOAD_NCI = common dso_local global i32 0, align 4
@NFC_DIRECTION_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_send_frame(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %11 = icmp ne %struct.nci_dev* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @skb_orphan(%struct.sk_buff* %18)
  %20 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @RAW_PAYLOAD_NCI, align 4
  %25 = load i32, i32* @NFC_DIRECTION_TX, align 4
  %26 = call i32 @nfc_send_to_raw_sock(i32 %22, %struct.sk_buff* %23, i32 %24, i32 %25)
  %27 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.nci_dev*, %struct.sk_buff*)**
  %32 = load i32 (%struct.nci_dev*, %struct.sk_buff*)*, i32 (%struct.nci_dev*, %struct.sk_buff*)** %31, align 8
  %33 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 %32(%struct.nci_dev* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %17, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @nfc_send_to_raw_sock(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
