; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_set_irq_wake.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_set_irq_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i64, i32 }

@IRQ_GET_DESC_CHECK_GLOBAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQS_NMI = common dso_local global i32 0, align 4
@IRQD_WAKEUP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unbalanced IRQ %d wake disable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_set_irq_wake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IRQ_GET_DESC_CHECK_GLOBAL, align 4
  %11 = call %struct.irq_desc* @irq_get_desc_buslock(i32 %9, i64* %6, i32 %10)
  store %struct.irq_desc* %11, %struct.irq_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %13 = icmp ne %struct.irq_desc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IRQS_NMI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %84

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @set_irq_wake_real(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 2
  %48 = load i32, i32* @IRQD_WAKEUP_STATE, align 4
  %49 = call i32 @irqd_set(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %30
  br label %83

52:                                               ; preds = %27
  %53 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %82

60:                                               ; preds = %52
  %61 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %62 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @set_irq_wake_real(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 1
  store i64 1, i64* %74, align 8
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %77 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %76, i32 0, i32 2
  %78 = load i32, i32* @IRQD_WAKEUP_STATE, align 4
  %79 = call i32 @irqd_clear(i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83, %24
  %85 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @irq_put_desc_busunlock(%struct.irq_desc* %85, i64 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.irq_desc* @irq_get_desc_buslock(i32, i64*, i32) #1

declare dso_local i32 @set_irq_wake_real(i32, i32) #1

declare dso_local i32 @irqd_set(i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @irqd_clear(i32*, i32) #1

declare dso_local i32 @irq_put_desc_busunlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
