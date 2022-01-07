; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_get_sum_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_get_sum_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sum_mgr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sum_desc = type { i32 }
%struct.sum = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't meet SUM resource request!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)* @get_sum_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sum_rsc(%struct.sum_mgr* %0, %struct.sum_desc* %1, %struct.sum** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sum_mgr*, align 8
  %6 = alloca %struct.sum_desc*, align 8
  %7 = alloca %struct.sum**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sum*, align 8
  %12 = alloca i64, align 8
  store %struct.sum_mgr* %0, %struct.sum_mgr** %5, align 8
  store %struct.sum_desc* %1, %struct.sum_desc** %6, align 8
  store %struct.sum** %2, %struct.sum*** %7, align 8
  %13 = load %struct.sum**, %struct.sum*** %7, align 8
  store %struct.sum* null, %struct.sum** %13, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sum* @kzalloc(i32 8, i32 %14)
  store %struct.sum* %15, %struct.sum** %11, align 8
  %16 = load %struct.sum*, %struct.sum** %11, align 8
  %17 = icmp ne %struct.sum* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %107

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %22 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %23 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %22, i32 0, i32 0
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %47, %21
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sum_desc*, %struct.sum_desc** %6, align 8
  %29 = getelementptr inbounds %struct.sum_desc, %struct.sum_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %34 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %33, i32 0, i32 1
  %35 = call i32 @mgr_get_resource(i32* %34, i32 1, i32* %10)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %50

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sum*, %struct.sum** %11, align 8
  %42 = getelementptr inbounds %struct.sum, %struct.sum* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %26

50:                                               ; preds = %38, %26
  %51 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %52 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %51, i32 0, i32 0
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %59 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %75

64:                                               ; preds = %50
  %65 = load %struct.sum*, %struct.sum** %11, align 8
  %66 = load %struct.sum_desc*, %struct.sum_desc** %6, align 8
  %67 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %68 = call i32 @sum_rsc_init(%struct.sum* %65, %struct.sum_desc* %66, %struct.sum_mgr* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %75

72:                                               ; preds = %64
  %73 = load %struct.sum*, %struct.sum** %11, align 8
  %74 = load %struct.sum**, %struct.sum*** %7, align 8
  store %struct.sum* %73, %struct.sum** %74, align 8
  store i32 0, i32* %4, align 4
  br label %107

75:                                               ; preds = %71, %57
  %76 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %77 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %76, i32 0, i32 0
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %96, %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %87 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %86, i32 0, i32 1
  %88 = load %struct.sum*, %struct.sum** %11, align 8
  %89 = getelementptr inbounds %struct.sum, %struct.sum* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mgr_put_resource(i32* %87, i32 1, i32 %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load %struct.sum_mgr*, %struct.sum_mgr** %5, align 8
  %101 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %100, i32 0, i32 0
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.sum*, %struct.sum** %11, align 8
  %105 = call i32 @kfree(%struct.sum* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %99, %72, %18
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.sum* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mgr_get_resource(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sum_rsc_init(%struct.sum*, %struct.sum_desc*, %struct.sum_mgr*) #1

declare dso_local i32 @mgr_put_resource(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
