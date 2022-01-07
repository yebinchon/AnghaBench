; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_dep_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_dep_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.nci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"target_idx %d, comm_mode %d\0A\00", align 1
@NFC_PROTO_NFC_DEP = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)* @nci_dep_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_dep_link_up(%struct.nfc_dev* %0, %struct.nfc_target* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nci_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %15 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %14)
  store %struct.nci_dev* %15, %struct.nci_dev** %12, align 8
  %16 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %17 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %22 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %23 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  %24 = call i32 @nci_activate_target(%struct.nfc_dev* %21, %struct.nfc_target* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %50

29:                                               ; preds = %5
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %31 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %32 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %35 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfc_set_remote_general_bytes(%struct.nfc_dev* %30, i32 %33, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %42 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %43 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %46 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %47 = call i32 @nfc_dep_link_is_up(%struct.nfc_dev* %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %40, %29
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @nci_activate_target(%struct.nfc_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @nfc_set_remote_general_bytes(%struct.nfc_dev*, i32, i32) #1

declare dso_local i32 @nfc_dep_link_is_up(%struct.nfc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
