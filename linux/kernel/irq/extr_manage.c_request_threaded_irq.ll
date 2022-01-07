; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i64, i8*, %struct.irqaction*, i8*, i32 (i32, i8*)*, i32 (i32, i8*)* }
%struct.irq_desc = type { i32 }

@IRQ_NOTCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_COND_SUSPEND = common dso_local global i64 0, align 8
@IRQF_NO_SUSPEND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca i32 (i32, i8*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.irqaction*, align 8
  %15 = alloca %struct.irq_desc*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %9, align 8
  store i32 (i32, i8*)* %2, i32 (i32, i8*)** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IRQ_NOTCONNECTED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOTCONN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %136

23:                                               ; preds = %6
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @IRQF_SHARED, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @IRQF_SHARED, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @IRQF_COND_SUSPEND, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %31
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @IRQF_NO_SUSPEND, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @IRQF_COND_SUSPEND, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %36, %28
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %136

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.irq_desc* @irq_to_desc(i32 %55)
  store %struct.irq_desc* %56, %struct.irq_desc** %15, align 8
  %57 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %58 = icmp ne %struct.irq_desc* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %136

62:                                               ; preds = %54
  %63 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %64 = call i32 @irq_settings_can_request(%struct.irq_desc* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %68 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %67)
  %69 = call i64 @WARN_ON(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %136

74:                                               ; preds = %66
  %75 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %76 = icmp ne i32 (i32, i8*)* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %79 = icmp ne i32 (i32, i8*)* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %136

83:                                               ; preds = %77
  store i32 (i32, i8*)* @irq_default_primary_handler, i32 (i32, i8*)** %9, align 8
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.irqaction* @kzalloc(i32 48, i32 %85)
  store %struct.irqaction* %86, %struct.irqaction** %14, align 8
  %87 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %88 = icmp ne %struct.irqaction* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %136

92:                                               ; preds = %84
  %93 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %94 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %95 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %94, i32 0, i32 5
  store i32 (i32, i8*)* %93, i32 (i32, i8*)** %95, align 8
  %96 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %97 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %98 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %97, i32 0, i32 4
  store i32 (i32, i8*)* %96, i32 (i32, i8*)** %98, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %101 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %104 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %107 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %109 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %108, i32 0, i32 0
  %110 = call i32 @irq_chip_pm_get(i32* %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %92
  %114 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %115 = call i32 @kfree(%struct.irqaction* %114)
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %7, align 4
  br label %136

117:                                              ; preds = %92
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %120 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %121 = call i32 @__setup_irq(i32 %118, %struct.irq_desc* %119, %struct.irqaction* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %126 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %125, i32 0, i32 0
  %127 = call i32 @irq_chip_pm_put(i32* %126)
  %128 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %129 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %128, i32 0, i32 2
  %130 = load %struct.irqaction*, %struct.irqaction** %129, align 8
  %131 = call i32 @kfree(%struct.irqaction* %130)
  %132 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %133 = call i32 @kfree(%struct.irqaction* %132)
  br label %134

134:                                              ; preds = %124, %117
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %113, %89, %80, %71, %59, %51, %20
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @irq_settings_can_request(%struct.irq_desc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc*) #1

declare dso_local i32 @irq_default_primary_handler(i32, i8*) #1

declare dso_local %struct.irqaction* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_chip_pm_get(i32*) #1

declare dso_local i32 @kfree(%struct.irqaction*) #1

declare dso_local i32 @__setup_irq(i32, %struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @irq_chip_pm_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
