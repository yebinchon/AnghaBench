; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_listen_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_listen_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { i32 }

@NCI_LA_SEL_INFO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NCI_LA_SEL_INFO = common dso_local global i32 0, align 4
@NCI_LF_PROTOCOL_TYPE_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NCI_LF_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@NCI_LF_CON_BITR_F_212 = common dso_local global i32 0, align 4
@NCI_LF_CON_BITR_F_424 = common dso_local global i32 0, align 4
@NCI_LF_CON_BITR_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @nci_set_listen_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_set_listen_parameters(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %7 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %8 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %7)
  store %struct.nci_dev* %8, %struct.nci_dev** %4, align 8
  %9 = load i32, i32* @NCI_LA_SEL_INFO_NFC_DEP_MASK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %11 = load i32, i32* @NCI_LA_SEL_INFO, align 4
  %12 = call i32 @nci_set_config(%struct.nci_dev* %10, i32 %11, i32 1, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @NCI_LF_PROTOCOL_TYPE_NFC_DEP_MASK, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %20 = load i32, i32* @NCI_LF_PROTOCOL_TYPE, align 4
  %21 = call i32 @nci_set_config(%struct.nci_dev* %19, i32 %20, i32 1, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @NCI_LF_CON_BITR_F_212, align 4
  %28 = load i32, i32* @NCI_LF_CON_BITR_F_424, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %31 = load i32, i32* @NCI_LF_CON_BITR_F, align 4
  %32 = call i32 @nci_set_config(%struct.nci_dev* %30, i32 %31, i32 1, i32* %6)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %24, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nci_set_config(%struct.nci_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
