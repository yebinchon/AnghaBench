; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_transceive.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_transceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* }

@.str = private unnamed_addr constant [15 x i8] c"target_idx=%d\0A\00", align 1
@HCI_CB_TYPE_TRANSCEIVE = common dso_local global i32 0, align 4
@NFC_HCI_WR_XCHG_DATA = common dso_local global i32 0, align 4
@hci_transceive_cb = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* @hci_transceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_transceive(%struct.nfc_dev* %0, %struct.nfc_target* %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nfc_hci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %14 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %13)
  store %struct.nfc_hci_dev* %14, %struct.nfc_hci_dev** %11, align 8
  %15 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %16 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %20 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %72 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %5, %5
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %24 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)** %26, align 8
  %28 = icmp ne i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %31 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)** %33, align 8
  %35 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %36 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 %34(%struct.nfc_hci_dev* %35, %struct.nfc_target* %36, %struct.sk_buff* %37, i32 %38, i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %101

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i64 @skb_push(%struct.sk_buff* %46, i32 1)
  %48 = inttoptr i64 %47 to i32*
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @HCI_CB_TYPE_TRANSCEIVE, align 4
  %50 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %51 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %54 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %57 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %59 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %60 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NFC_HCI_WR_XCHG_DATA, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @hci_transceive_cb, align 4
  %70 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %71 = call i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev* %58, i32 %61, i32 %62, i32 %65, i32 %68, i32 %69, %struct.nfc_hci_dev* %70)
  store i32 %71, i32* %12, align 4
  br label %101

72:                                               ; preds = %5
  %73 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %74 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)** %76, align 8
  %78 = icmp ne i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %81 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)** %83, align 8
  %85 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %86 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 %84(%struct.nfc_hci_dev* %85, %struct.nfc_target* %86, %struct.sk_buff* %87, i32 %88, i8* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %79
  br label %100

97:                                               ; preds = %72
  %98 = load i32, i32* @ENOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %100, %45, %43
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  %104 = load i32, i32* %12, align 4
  ret i32 %104
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev*, i32, i32, i32, i32, i32, %struct.nfc_hci_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
