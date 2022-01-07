; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i64, i8*, i8*, i64 }
%struct.irq_desc = type { i32, i32, i32 }

@IRQ_NOTCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_COND_SUSPEND = common dso_local global i64 0, align 8
@IRQF_IRQPOLL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i64 0, align 8
@IRQF_NOBALANCING = common dso_local global i64 0, align 8
@IRQS_NMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_nmi(i32 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.irqaction*, align 8
  %13 = alloca %struct.irq_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IRQ_NOTCONNECTED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOTCONN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %149

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @IRQF_SHARED, align 8
  %25 = load i64, i64* @IRQF_COND_SUSPEND, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @IRQF_IRQPOLL, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %23, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %149

34:                                               ; preds = %22
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @IRQF_PERCPU, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %149

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %149

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.irq_desc* @irq_to_desc(i32 %49)
  store %struct.irq_desc* %50, %struct.irq_desc** %13, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %52 = icmp ne %struct.irq_desc* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %55 = call i64 @irq_settings_can_autoenable(%struct.irq_desc* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %59 = call i32 @irq_settings_can_request(%struct.irq_desc* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %63 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %62)
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %68 = call i32 @irq_supports_nmi(%struct.irq_desc* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %61, %57, %53, %48
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %149

73:                                               ; preds = %66
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.irqaction* @kzalloc(i32 32, i32 %74)
  store %struct.irqaction* %75, %struct.irqaction** %12, align 8
  %76 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %77 = icmp ne %struct.irqaction* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %149

81:                                               ; preds = %73
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %84 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @IRQF_NO_THREAD, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @IRQF_NOBALANCING, align 8
  %89 = or i64 %87, %88
  %90 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %91 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %94 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %97 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %99 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %98, i32 0, i32 0
  %100 = call i32 @irq_chip_pm_get(i32* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %81
  br label %145

104:                                              ; preds = %81
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %107 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %108 = call i32 @__setup_irq(i32 %105, %struct.irq_desc* %106, %struct.irqaction* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %141

112:                                              ; preds = %104
  %113 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %114 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %113, i32 0, i32 1
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @raw_spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load i32, i32* @IRQS_NMI, align 4
  %118 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %119 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %123 = call i32 @irq_nmi_setup(%struct.irq_desc* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %112
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %129 = call i32 @__cleanup_nmi(i32 %127, %struct.irq_desc* %128)
  %130 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %131 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %130, i32 0, i32 1
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @raw_spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %149

136:                                              ; preds = %112
  %137 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %138 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %137, i32 0, i32 1
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @raw_spin_unlock_irqrestore(i32* %138, i64 %139)
  store i32 0, i32* %6, align 4
  br label %149

141:                                              ; preds = %111
  %142 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %143 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %142, i32 0, i32 0
  %144 = call i32 @irq_chip_pm_put(i32* %143)
  br label %145

145:                                              ; preds = %141, %103
  %146 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %147 = call i32 @kfree(%struct.irqaction* %146)
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %145, %136, %126, %78, %70, %45, %39, %31, %19
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @irq_settings_can_autoenable(%struct.irq_desc*) #1

declare dso_local i32 @irq_settings_can_request(%struct.irq_desc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc*) #1

declare dso_local i32 @irq_supports_nmi(%struct.irq_desc*) #1

declare dso_local %struct.irqaction* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_chip_pm_get(i32*) #1

declare dso_local i32 @__setup_irq(i32, %struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irq_nmi_setup(%struct.irq_desc*) #1

declare dso_local i32 @__cleanup_nmi(i32, %struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_chip_pm_put(i32*) #1

declare dso_local i32 @kfree(%struct.irqaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
