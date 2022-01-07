; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_mgr = type { i32, i32, i32, i32, %struct.hw*, i32 }
%struct.hw = type { i32 (i32*)*, i32 (i32*)*, i32 (i32*)*, i32 (%struct.hw*, i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NUM_RSCTYP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid resource type value %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get manager control block!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsc_mgr_init(%struct.rsc_mgr* %0, i32 %1, i32 %2, %struct.hw* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsc_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw*, align 8
  %10 = alloca i32, align 4
  store %struct.rsc_mgr* %0, %struct.rsc_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hw* %3, %struct.hw** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @NUM_RSCTYP, align 4
  %12 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %14, 8
  %16 = sub i32 %15, 1
  %17 = udiv i32 %16, 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %21 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %23 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %99

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %61 [
    i32 130, label %31
    i32 129, label %38
    i32 132, label %45
    i32 131, label %52
    i32 128, label %60
  ]

31:                                               ; preds = %29
  %32 = load %struct.hw*, %struct.hw** %9, align 8
  %33 = getelementptr inbounds %struct.hw, %struct.hw* %32, i32 0, i32 0
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %36 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %35, i32 0, i32 5
  %37 = call i32 %34(i32* %36)
  store i32 %37, i32* %10, align 4
  br label %71

38:                                               ; preds = %29
  %39 = load %struct.hw*, %struct.hw** %9, align 8
  %40 = getelementptr inbounds %struct.hw, %struct.hw* %39, i32 0, i32 1
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %43 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %42, i32 0, i32 5
  %44 = call i32 %41(i32* %43)
  store i32 %44, i32* %10, align 4
  br label %71

45:                                               ; preds = %29
  %46 = load %struct.hw*, %struct.hw** %9, align 8
  %47 = getelementptr inbounds %struct.hw, %struct.hw* %46, i32 0, i32 2
  %48 = load i32 (i32*)*, i32 (i32*)** %47, align 8
  %49 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %50 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %49, i32 0, i32 5
  %51 = call i32 %48(i32* %50)
  store i32 %51, i32* %10, align 4
  br label %71

52:                                               ; preds = %29
  %53 = load %struct.hw*, %struct.hw** %9, align 8
  %54 = getelementptr inbounds %struct.hw, %struct.hw* %53, i32 0, i32 3
  %55 = load i32 (%struct.hw*, i32*)*, i32 (%struct.hw*, i32*)** %54, align 8
  %56 = load %struct.hw*, %struct.hw** %9, align 8
  %57 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %58 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %57, i32 0, i32 5
  %59 = call i32 %55(%struct.hw* %56, i32* %58)
  store i32 %59, i32* %10, align 4
  br label %71

60:                                               ; preds = %29
  br label %71

61:                                               ; preds = %29
  %62 = load %struct.hw*, %struct.hw** %9, align 8
  %63 = getelementptr inbounds %struct.hw, %struct.hw* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %93

71:                                               ; preds = %60, %52, %45, %38, %31
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.hw*, %struct.hw** %9, align 8
  %76 = getelementptr inbounds %struct.hw, %struct.hw* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %93

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %84 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %87 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %89 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.hw*, %struct.hw** %9, align 8
  %91 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %92 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %91, i32 0, i32 4
  store %struct.hw* %90, %struct.hw** %92, align 8
  store i32 0, i32* %5, align 4
  br label %99

93:                                               ; preds = %74, %61
  %94 = load %struct.rsc_mgr*, %struct.rsc_mgr** %6, align 8
  %95 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kfree(i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %81, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
