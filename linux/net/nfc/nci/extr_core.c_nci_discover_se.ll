; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_discover_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_discover_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nci_dev*)* }

@NCI_NFCEE_DISCOVERY_ACTION_ENABLE = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @nci_discover_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_discover_se(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %6 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %7 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %6)
  store %struct.nci_dev* %7, %struct.nci_dev** %5, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %9 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)** %11, align 8
  %13 = icmp ne i32 (%struct.nci_dev*)* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %16 = load i32, i32* @NCI_NFCEE_DISCOVERY_ACTION_ENABLE, align 4
  %17 = call i32 @nci_nfcee_discover(%struct.nci_dev* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NCI_STATUS_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EPROTO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)** %28, align 8
  %30 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %31 = call i32 %29(%struct.nci_dev* %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nci_nfcee_discover(%struct.nci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
