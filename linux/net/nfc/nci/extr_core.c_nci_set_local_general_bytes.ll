; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_local_general_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_local_general_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { i32 }
%struct.nci_set_config_param = type { i64, i32, i32* }

@NFC_MAX_GT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NCI_PN_ATR_REQ_GEN_BYTES = common dso_local global i32 0, align 4
@nci_set_config_req = common dso_local global i32 0, align 4
@NCI_SET_CONFIG_TIMEOUT = common dso_local global i32 0, align 4
@NCI_LN_ATR_RES_GEN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @nci_set_local_general_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_set_local_general_bytes(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.nci_set_config_param, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %7 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %8 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %7)
  store %struct.nci_dev* %8, %struct.nci_dev** %4, align 8
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 0
  %11 = call i32* @nfc_get_local_general_bytes(%struct.nfc_dev* %9, i64* %10)
  %12 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 2
  store i32* %11, i32** %12, align 8
  %13 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFC_MAX_GT_LEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load i32, i32* @NCI_PN_ATR_REQ_GEN_BYTES, align 4
  %31 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %33 = load i32, i32* @nci_set_config_req, align 4
  %34 = ptrtoint %struct.nci_set_config_param* %5 to i64
  %35 = load i32, i32* @NCI_SET_CONFIG_TIMEOUT, align 4
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @nci_request(%struct.nci_dev* %32, i32 %33, i64 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load i32, i32* @NCI_LN_ATR_RES_GEN_BYTES, align 4
  %44 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %5, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %46 = load i32, i32* @nci_set_config_req, align 4
  %47 = ptrtoint %struct.nci_set_config_param* %5 to i64
  %48 = load i32, i32* @NCI_SET_CONFIG_TIMEOUT, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i32 @nci_request(%struct.nci_dev* %45, i32 %46, i64 %47, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %40, %26, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32* @nfc_get_local_general_bytes(%struct.nfc_dev*, i64*) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
