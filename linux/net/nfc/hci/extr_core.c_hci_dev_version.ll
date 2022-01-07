; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32* }

@NFC_HCI_ID_MGMT_GATE = common dso_local global i32 0, align 4
@NFC_HCI_ID_MGMT_VERSION_SW = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Software/Hardware info not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFC_HCI_ID_MGMT_VERSION_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SOFTWARE INFO:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"RomLib         : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Patch          : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"FlashLib Major : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"FlashLib Minor : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"HARDWARE INFO:\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Derivative     : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"HW Version     : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"#MPW           : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Software       : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"BSID Version   : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @hci_dev_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_version(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = load i32, i32* @NFC_HCI_ID_MGMT_GATE, align 4
  %8 = load i32, i32* @NFC_HCI_ID_MGMT_VERSION_SW, align 4
  %9 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %6, i32 %7, i32 %8, %struct.sk_buff** %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %165

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %165

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 240
  %38 = ashr i32 %37, 4
  %39 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  %65 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %66 = load i32, i32* @NFC_HCI_ID_MGMT_GATE, align 4
  %67 = load i32, i32* @NFC_HCI_ID_MGMT_VERSION_HW, align 4
  %68 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %65, i32 %66, i32 %67, %struct.sk_buff** %5)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %31
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %165

73:                                               ; preds = %31
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %165

83:                                               ; preds = %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 224
  %90 = ashr i32 %89, 5
  %91 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %92 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 31
  %99 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 192
  %107 = ashr i32 %106, 6
  %108 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 63
  %116 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %124 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = call i32 @kfree_skb(%struct.sk_buff* %125)
  %127 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %133 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %137 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %141 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %145 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %146 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %147)
  %149 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %150 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %155)
  %157 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %158 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %162 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %83, %78, %71, %26, %19, %14
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
