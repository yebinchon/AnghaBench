; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32, i32, %struct.nci_ops* }
%struct.nci_ops = type { i64, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"supported_protocols 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@NCI_MAX_PROPRIETARY_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Too many proprietary commands: %zd\0A\00", align 1
@nci_nfc_ops = common dso_local global i32 0, align 4
@NCI_DATA_HDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nci_dev* @nci_allocate_device(%struct.nci_ops* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca %struct.nci_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nci_dev*, align 8
  store %struct.nci_ops* %0, %struct.nci_ops** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %14 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %19 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %24 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %4
  store %struct.nci_dev* null, %struct.nci_dev** %5, align 8
  br label %105

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.nci_dev* null, %struct.nci_dev** %5, align 8
  br label %105

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nci_dev* @kzalloc(i32 32, i32 %33)
  store %struct.nci_dev* %34, %struct.nci_dev** %10, align 8
  %35 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %36 = icmp ne %struct.nci_dev* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.nci_dev* null, %struct.nci_dev** %5, align 8
  br label %105

38:                                               ; preds = %32
  %39 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %40 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %41 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %40, i32 0, i32 5
  store %struct.nci_ops* %39, %struct.nci_ops** %41, align 8
  %42 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %43 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NCI_MAX_PROPRIETARY_CMD, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %49 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %53 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.nci_ops*, %struct.nci_ops** %6, align 8
  %55 = getelementptr inbounds %struct.nci_ops, %struct.nci_ops* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %47, %38
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %59 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %62 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %64 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %63, i32 0, i32 4
  %65 = call i32 @init_completion(i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @nfc_allocate_device(i32* @nci_nfc_ops, i32 %66, i64 %70, i32 %71)
  %73 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %74 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %76 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %56
  br label %102

80:                                               ; preds = %56
  %81 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %82 = call i32 @nci_hci_allocate(%struct.nci_dev* %81)
  %83 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %84 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %86 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %97

90:                                               ; preds = %80
  %91 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %92 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %95 = call i32 @nfc_set_drvdata(i32 %93, %struct.nci_dev* %94)
  %96 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  store %struct.nci_dev* %96, %struct.nci_dev** %5, align 8
  br label %105

97:                                               ; preds = %89
  %98 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %99 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @nfc_free_device(i32 %100)
  br label %102

102:                                              ; preds = %97, %79
  %103 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %104 = call i32 @kfree(%struct.nci_dev* %103)
  store %struct.nci_dev* null, %struct.nci_dev** %5, align 8
  br label %105

105:                                              ; preds = %102, %90, %37, %31, %27
  %106 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  ret %struct.nci_dev* %106
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.nci_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @nfc_allocate_device(i32*, i32, i64, i32) #1

declare dso_local i32 @nci_hci_allocate(%struct.nci_dev*) #1

declare dso_local i32 @nfc_set_drvdata(i32, %struct.nci_dev*) #1

declare dso_local i32 @nfc_free_device(i32) #1

declare dso_local i32 @kfree(%struct.nci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
