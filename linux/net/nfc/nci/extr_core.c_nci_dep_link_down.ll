; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_dep_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_dep_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i64 }
%struct.nci_dev = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"entry\0A\00", align 1
@NFC_RF_INITIATOR = common dso_local global i64 0, align 8
@NCI_DEACTIVATE_TYPE_IDLE_MODE = common dso_local global i32 0, align 4
@NCI_LISTEN_ACTIVE = common dso_local global i64 0, align 8
@NCI_DISCOVERY = common dso_local global i64 0, align 8
@nci_rf_deactivate_req = common dso_local global i32 0, align 4
@NCI_RF_DEACTIVATE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error when signaling tm deactivation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @nci_dep_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_dep_link_down(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  %5 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %6 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %5)
  store %struct.nci_dev* %6, %struct.nci_dev** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NFC_RF_INITIATOR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %15 = load i32, i32* @NCI_DEACTIVATE_TYPE_IDLE_MODE, align 4
  %16 = call i32 @nci_deactivate_target(%struct.nfc_dev* %14, i32* null, i32 %15)
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %18, i32 0, i32 0
  %20 = call i64 @atomic_read(i32* %19)
  %21 = load i64, i64* @NCI_LISTEN_ACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = load i64, i64* @NCI_DISCOVERY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %17
  %30 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %31 = load i32, i32* @nci_rf_deactivate_req, align 4
  %32 = load i32, i32* @NCI_RF_DEACTIVATE_TIMEOUT, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @nci_request(%struct.nci_dev* %30, i32 %31, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %37 = call i32 @nfc_tm_deactivated(%struct.nfc_dev* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %13
  ret i32 0
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nci_deactivate_target(%struct.nfc_dev*, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nfc_tm_deactivated(%struct.nfc_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
