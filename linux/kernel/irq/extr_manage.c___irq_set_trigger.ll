; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___irq_set_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___irq_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.irq_chip* }
%struct.irq_chip = type { i32 (%struct.TYPE_8__*, i64)*, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"No set_type function for IRQ %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@IRQCHIP_SET_TYPE_MASKED = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i64 0, align 8
@IRQD_TRIGGER_MASK = common dso_local global i64 0, align 8
@IRQD_LEVEL = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Setting trigger mode %lu for irq %u failed (%pS)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__irq_set_trigger(%struct.irq_desc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  store %struct.irq_chip* %12, %struct.irq_chip** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %14 = icmp ne %struct.irq_chip* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %17 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_8__*, i64)* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %22 = call i32 @irq_desc_get_irq(%struct.irq_desc* %21)
  %23 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %24 = icmp ne %struct.irq_chip* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %27 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = inttoptr i64 %28 to i8*
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %32 ]
  br label %36

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %37)
  store i32 0, i32* %3, align 4
  br label %123

39:                                               ; preds = %15
  %40 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %41 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IRQCHIP_SET_TYPE_MASKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %48 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %47, i32 0, i32 0
  %49 = call i32 @irqd_irq_masked(%struct.TYPE_8__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %53 = call i32 @mask_irq(%struct.irq_desc* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %56 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %55, i32 0, i32 0
  %57 = call i32 @irqd_irq_disabled(%struct.TYPE_8__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i64, i64* @IRQ_TYPE_SENSE_MASK, align 8
  %63 = load i64, i64* %5, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %5, align 8
  %65 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %66 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %66, align 8
  %68 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 %67(%struct.TYPE_8__* %69, i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  switch i32 %72, label %107 [
    i32 130, label %73
    i32 129, label %73
    i32 128, label %82
  ]

73:                                               ; preds = %61, %61
  %74 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %75 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %74, i32 0, i32 0
  %76 = load i64, i64* @IRQD_TRIGGER_MASK, align 8
  %77 = call i32 @irqd_clear(%struct.TYPE_8__* %75, i64 %76)
  %78 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 0
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @irqd_set(%struct.TYPE_8__* %79, i64 %80)
  br label %82

82:                                               ; preds = %61, %73
  %83 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %84 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %83, i32 0, i32 0
  %85 = call i64 @irqd_get_trigger_type(%struct.TYPE_8__* %84)
  store i64 %85, i64* %5, align 8
  %86 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @irq_settings_set_trigger_mask(%struct.irq_desc* %86, i64 %87)
  %89 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %90 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %89, i32 0, i32 0
  %91 = load i64, i64* @IRQD_LEVEL, align 8
  %92 = call i32 @irqd_clear(%struct.TYPE_8__* %90, i64 %91)
  %93 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %94 = call i32 @irq_settings_clr_level(%struct.irq_desc* %93)
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @IRQ_TYPE_LEVEL_MASK, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %82
  %100 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %101 = call i32 @irq_settings_set_level(%struct.irq_desc* %100)
  %102 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %103 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %102, i32 0, i32 0
  %104 = load i64, i64* @IRQD_LEVEL, align 8
  %105 = call i32 @irqd_set(%struct.TYPE_8__* %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %82
  store i32 0, i32* %7, align 4
  br label %115

107:                                              ; preds = %61
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %110 = call i32 @irq_desc_get_irq(%struct.irq_desc* %109)
  %111 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %112 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %112, align 8
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %108, i32 %110, i32 (%struct.TYPE_8__*, i64)* %113)
  br label %115

115:                                              ; preds = %107, %106
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %120 = call i32 @unmask_irq(%struct.irq_desc* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %36
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i32 @irqd_irq_masked(%struct.TYPE_8__*) #1

declare dso_local i32 @mask_irq(%struct.irq_desc*) #1

declare dso_local i32 @irqd_irq_disabled(%struct.TYPE_8__*) #1

declare dso_local i32 @irqd_clear(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @irqd_set(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @irqd_get_trigger_type(%struct.TYPE_8__*) #1

declare dso_local i32 @irq_settings_set_trigger_mask(%struct.irq_desc*, i64) #1

declare dso_local i32 @irq_settings_clr_level(%struct.irq_desc*) #1

declare dso_local i32 @irq_settings_set_level(%struct.irq_desc*) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i32 (%struct.TYPE_8__*, i64)*) #1

declare dso_local i32 @unmask_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
