; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_store_general_bytes_nfc_dep.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_store_general_bytes_nfc_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i8*, i32 }
%struct.nci_rf_intf_activated_ntf = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@NCI_STATUS_OK = common dso_local global i32 0, align 4
@__u8 = common dso_local global i32 0, align 4
@NFC_ATR_RES_GT_OFFSET = common dso_local global i64 0, align 8
@NFC_ATR_RES_GB_MAXSIZE = common dso_local global i32 0, align 4
@NFC_ATR_REQ_GT_OFFSET = common dso_local global i64 0, align 8
@NFC_ATR_REQ_GB_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unsupported activation_rf_tech_and_mode 0x%x\0A\00", align 1
@NCI_STATUS_RF_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*)* @nci_store_general_bytes_nfc_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_store_general_bytes_nfc_dep(%struct.nci_dev* %0, %struct.nci_rf_intf_activated_ntf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.nci_rf_intf_activated_ntf*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store %struct.nci_rf_intf_activated_ntf* %1, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %6 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %6, i32 0, i32 0
  store i8* null, i8** %7, align 8
  %8 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %9 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @NCI_STATUS_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %16 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %72 [
    i32 130, label %18
    i32 128, label %18
    i32 131, label %45
    i32 129, label %45
  ]

18:                                               ; preds = %14, %14
  %19 = load i32, i32* @__u8, align 4
  %20 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %21 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFC_ATR_RES_GT_OFFSET, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i32, i32* @NFC_ATR_RES_GB_MAXSIZE, align 4
  %28 = call i8* @min_t(i32 %19, i64 %26, i32 %27)
  %29 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %35 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NFC_ATR_RES_GT_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @memcpy(i32 %33, i64 %40, i8* %43)
  br label %78

45:                                               ; preds = %14, %14
  %46 = load i32, i32* @__u8, align 4
  %47 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %48 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NFC_ATR_REQ_GT_OFFSET, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* @NFC_ATR_REQ_GB_MAXSIZE, align 4
  %55 = call i8* @min_t(i32 %46, i64 %53, i32 %54)
  %56 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %62 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NFC_ATR_REQ_GT_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @memcpy(i32 %60, i64 %67, i8* %70)
  br label %78

72:                                               ; preds = %14
  %73 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %5, align 8
  %74 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @NCI_STATUS_RF_PROTOCOL_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %45, %18
  %79 = load i32, i32* @NCI_STATUS_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %72, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @min_t(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i64, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
