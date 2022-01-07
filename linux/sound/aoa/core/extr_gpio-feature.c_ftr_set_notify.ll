; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_ftr_set_notify.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_ftr_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.gpio_notification, %struct.gpio_notification, %struct.gpio_notification }
%struct.gpio_notification = type { i64, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"headphone-detect\00", align 1
@headphone_detect_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"linein-detect\00", align 1
@linein_detect_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"lineout-detect\00", align 1
@lineout_detect_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ftr_handle_notify_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_runtime*, i32, i64, i8*)* @ftr_set_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftr_set_notify(%struct.gpio_runtime* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gpio_notification*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %30 [
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %4
  %19 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %19, i32 0, i32 2
  store %struct.gpio_notification* %20, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %21 = load i32, i32* @headphone_detect_irq, align 4
  store i32 %21, i32* %12, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %23, i32 0, i32 1
  store %struct.gpio_notification* %24, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %25 = load i32, i32* @linein_detect_irq, align 4
  store i32 %25, i32* %12, align 4
  br label %33

26:                                               ; preds = %4
  %27 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %27, i32 0, i32 0
  store %struct.gpio_notification* %28, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %29 = load i32, i32* @lineout_detect_irq, align 4
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %108

33:                                               ; preds = %26, %22, %18
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %108

39:                                               ; preds = %33
  %40 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %41 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %44 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %103

52:                                               ; preds = %48, %39
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %64 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %62, %58
  br label %103

70:                                               ; preds = %55, %52
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %79 = call i32 @free_irq(i32 %77, %struct.gpio_notification* %78)
  br label %80

80:                                               ; preds = %76, %73, %70
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @ftr_handle_notify_irq, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %91 = call i32 @request_irq(i32 %87, i32 %88, i32 0, i8* %89, %struct.gpio_notification* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %103

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %83, %80
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %99 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %102 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %96, %94, %69, %51
  %104 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %105 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %36, %30
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.gpio_notification*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.gpio_notification*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
