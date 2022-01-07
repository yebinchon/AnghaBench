; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_extract_rf_params_nfcv_passive_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_extract_rf_params_nfcv_passive_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.rf_tech_specific_params_nfcv_poll = type { i32, i32 }

@NFC_ISO15693_UID_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nci_dev*, %struct.rf_tech_specific_params_nfcv_poll*, i32*)* @nci_extract_rf_params_nfcv_passive_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nci_extract_rf_params_nfcv_passive_poll(%struct.nci_dev* %0, %struct.rf_tech_specific_params_nfcv_poll* %1, i32* %2) #0 {
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.rf_tech_specific_params_nfcv_poll*, align 8
  %6 = alloca i32*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store %struct.rf_tech_specific_params_nfcv_poll* %1, %struct.rf_tech_specific_params_nfcv_poll** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.rf_tech_specific_params_nfcv_poll*, %struct.rf_tech_specific_params_nfcv_poll** %5, align 8
  %13 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, %struct.rf_tech_specific_params_nfcv_poll* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rf_tech_specific_params_nfcv_poll*, %struct.rf_tech_specific_params_nfcv_poll** %5, align 8
  %15 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, %struct.rf_tech_specific_params_nfcv_poll* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @NFC_ISO15693_UID_MAXSIZE, align 4
  %19 = call i32 @memcpy(i32 %16, i32* %17, i32 %18)
  %20 = load i32, i32* @NFC_ISO15693_UID_MAXSIZE, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  ret i32* %24
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
