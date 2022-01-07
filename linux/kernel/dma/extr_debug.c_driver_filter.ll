; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_driver_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_driver_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i64 }
%struct.device = type { %struct.device_driver* }

@current_driver_name = common dso_local global i32* null, align 8
@current_driver = common dso_local global %struct.device_driver* null, align 8
@driver_name_lock = common dso_local global i32 0, align 4
@NAME_MAX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @driver_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_filter(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32*, i32** @current_driver_name, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %18 = icmp ne %struct.device_driver* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_driver*, %struct.device_driver** %24, align 8
  %26 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %27 = icmp eq %struct.device_driver* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %71

29:                                               ; preds = %22, %19, %16
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %71

33:                                               ; preds = %29
  %34 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %35 = icmp ne %struct.device_driver* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** @current_driver_name, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %33
  store i32 0, i32* %2, align 4
  br label %71

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load %struct.device_driver*, %struct.device_driver** %44, align 8
  store %struct.device_driver* %45, %struct.device_driver** %4, align 8
  %46 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %47 = icmp ne %struct.device_driver* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %71

49:                                               ; preds = %42
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @read_lock_irqsave(i32* @driver_name_lock, i64 %50)
  store i32 0, i32* %6, align 4
  %52 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %53 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32*, i32** @current_driver_name, align 8
  %58 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %59 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NAME_MAX_LEN, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i64 @strncmp(i32* %57, i64 %60, i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  store %struct.device_driver* %66, %struct.device_driver** @current_driver, align 8
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %56, %49
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @read_unlock_irqrestore(i32* @driver_name_lock, i64 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %48, %41, %32, %28, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @strncmp(i32*, i64, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
