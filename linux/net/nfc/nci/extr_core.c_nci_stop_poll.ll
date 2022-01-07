; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_stop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_stop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { i32 }

@NCI_DISCOVERY = common dso_local global i64 0, align 8
@NCI_W4_ALL_DISCOVERIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"unable to stop poll, since poll is not active\0A\00", align 1
@nci_rf_deactivate_req = common dso_local global i32 0, align 4
@NCI_DEACTIVATE_TYPE_IDLE_MODE = common dso_local global i32 0, align 4
@NCI_RF_DEACTIVATE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_dev*)* @nci_stop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_stop_poll(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca %struct.nci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %5 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %4)
  store %struct.nci_dev* %5, %struct.nci_dev** %3, align 8
  %6 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %6, i32 0, i32 0
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load i64, i64* @NCI_DISCOVERY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = load i64, i64* @NCI_W4_ALL_DISCOVERIES, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %26

19:                                               ; preds = %11, %1
  %20 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %21 = load i32, i32* @nci_rf_deactivate_req, align 4
  %22 = load i32, i32* @NCI_DEACTIVATE_TYPE_IDLE_MODE, align 4
  %23 = load i32, i32* @NCI_RF_DEACTIVATE_TIMEOUT, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  %25 = call i32 @nci_request(%struct.nci_dev* %20, i32 %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %19, %17
  ret void
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
