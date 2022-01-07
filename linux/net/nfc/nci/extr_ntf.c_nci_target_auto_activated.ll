; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_target_auto_activated.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_target_auto_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i64, %struct.nfc_target*, i32 }
%struct.nfc_target = type { i32 }
%struct.nci_rf_intf_activated_ntf = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"logical idx %d, n_targets %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*)* @nci_target_auto_activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_target_auto_activated(%struct.nci_dev* %0, %struct.nci_rf_intf_activated_ntf* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.nci_rf_intf_activated_ntf*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.nci_rf_intf_activated_ntf* %1, %struct.nci_rf_intf_activated_ntf** %4, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %7, i32 0, i32 1
  %9 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %10 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i64 %12
  store %struct.nfc_target* %13, %struct.nfc_target** %5, align 8
  %14 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %15 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %16 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %4, align 8
  %17 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %4, align 8
  %20 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %4, align 8
  %23 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %22, i32 0, i32 1
  %24 = call i32 @nci_add_new_protocol(%struct.nci_dev* %14, %struct.nfc_target* %15, i32 %18, i32 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.nci_rf_intf_activated_ntf*, %struct.nci_rf_intf_activated_ntf** %4, align 8
  %30 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %33 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %39 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %43)
  %45 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %48, i32 0, i32 1
  %50 = load %struct.nfc_target*, %struct.nfc_target** %49, align 8
  %51 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nfc_targets_found(i32 %47, %struct.nfc_target* %50, i64 %53)
  br label %55

55:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @nci_add_new_protocol(%struct.nci_dev*, %struct.nfc_target*, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @nfc_targets_found(i32, %struct.nfc_target*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
