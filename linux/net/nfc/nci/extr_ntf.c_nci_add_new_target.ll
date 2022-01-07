; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_add_new_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_add_new_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, %struct.nfc_target* }
%struct.nfc_target = type { i64 }
%struct.nci_rf_discover_ntf = type { i64, i32, i32, i32 }

@NCI_MAX_DISCOVERED_TARGETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"not enough room, ignoring new target...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"logical idx %d, n_targets %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.nci_rf_discover_ntf*)* @nci_add_new_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_add_new_target(%struct.nci_dev* %0, %struct.nci_rf_discover_ntf* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.nci_rf_discover_ntf*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.nci_rf_discover_ntf* %1, %struct.nci_rf_discover_ntf** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %15, i32 0, i32 1
  %17 = load %struct.nfc_target*, %struct.nfc_target** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %17, i64 %19
  store %struct.nfc_target* %20, %struct.nfc_target** %5, align 8
  %21 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %22 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %25 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %14
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %31 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %32 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %35 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %38 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %37, i32 0, i32 1
  %39 = call i32 @nci_add_new_protocol(%struct.nci_dev* %29, %struct.nfc_target* %30, i32 %33, i32 %36, i32* %38)
  br label %91

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NCI_MAX_DISCOVERED_TARGETS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %91

52:                                               ; preds = %44
  %53 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %53, i32 0, i32 1
  %55 = load %struct.nfc_target*, %struct.nfc_target** %54, align 8
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %55, i64 %59
  store %struct.nfc_target* %60, %struct.nfc_target** %5, align 8
  %61 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %62 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %63 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %64 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %67 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %70 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %69, i32 0, i32 1
  %71 = call i32 @nci_add_new_protocol(%struct.nci_dev* %61, %struct.nfc_target* %62, i32 %65, i32 %68, i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %52
  %75 = load %struct.nci_rf_discover_ntf*, %struct.nci_rf_discover_ntf** %4, align 8
  %76 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %79 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %85 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %89)
  br label %91

91:                                               ; preds = %28, %50, %74, %52
  ret void
}

declare dso_local i32 @nci_add_new_protocol(%struct.nci_dev*, %struct.nfc_target*, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
