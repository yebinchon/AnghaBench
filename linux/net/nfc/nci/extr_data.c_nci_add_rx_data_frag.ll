; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_add_rx_data_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_add_rx_data_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"error adding room for accumulated rx data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NCI_PBF_CONT = common dso_local global i32 0, align 4
@NFC_RF_TARGET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to handle received data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*, i32, i32, i32)* @nci_add_rx_data_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_add_rx_data_frag(%struct.nci_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %12, align 4
  br label %70

17:                                               ; preds = %5
  %18 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %23, i32 0, i32 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @skb_cow_head(%struct.sk_buff* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %36 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 1
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %41 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %40, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %41, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %70

44:                                               ; preds = %22
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @skb_push(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %49 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %52, i32 %53)
  %55 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %55, i32 0, i32 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %59, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  br label %61

61:                                               ; preds = %44, %17
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @NCI_PBF_CONT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %67, i32 0, i32 1
  store %struct.sk_buff* %66, %struct.sk_buff** %68, align 8
  br label %95

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %32, %15
  %71 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NFC_RF_TARGET, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %80 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call i32 @nfc_tm_data_received(%struct.TYPE_2__* %81, %struct.sk_buff* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %78
  br label %95

89:                                               ; preds = %70
  %90 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @nci_data_exchange_complete(%struct.nci_dev* %90, %struct.sk_buff* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %65, %89, %88
  ret void
}

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_tm_data_received(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @nci_data_exchange_complete(%struct.nci_dev*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
