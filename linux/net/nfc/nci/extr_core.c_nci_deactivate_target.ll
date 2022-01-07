; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_deactivate_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_deactivate_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.nci_dev = type { i32, i64 }

@NCI_DEACTIVATE_TYPE_IDLE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unable to deactivate target, no active target\0A\00", align 1
@NCI_DEACTIVATE_TYPE_SLEEP_MODE = common dso_local global i32 0, align 4
@NCI_POLL_ACTIVE = common dso_local global i64 0, align 8
@nci_rf_deactivate_req = common dso_local global i32 0, align 4
@NCI_RF_DEACTIVATE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_dev*, %struct.nfc_target*, i32)* @nci_deactivate_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_deactivate_target(%struct.nfc_dev* %0, %struct.nfc_target* %1, i32 %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %10 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %9)
  store %struct.nci_dev* %10, %struct.nci_dev** %7, align 8
  %11 = load i32, i32* @NCI_DEACTIVATE_TYPE_IDLE_MODE, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %14 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %25 [
    i32 128, label %23
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @NCI_DEACTIVATE_TYPE_SLEEP_MODE, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %23
  %26 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %26, i32 0, i32 0
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %33 = load i32, i32* @nci_rf_deactivate_req, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NCI_RF_DEACTIVATE_TIMEOUT, align 4
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @nci_request(%struct.nci_dev* %32, i32 %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %17, %31, %25
  ret void
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
