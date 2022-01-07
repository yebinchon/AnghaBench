; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_variable_u32_array.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_variable_u32_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s malformed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s not a multiple of %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32*, i32, i32)* @madera_get_variable_u32_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_variable_u32_array(%struct.device* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @device_property_count_u32(%struct.device* %14, i8* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %62

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = srem i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %62

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @device_property_read_u32_array(%struct.device* %51, i8* %52, i32* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %58, %36, %25, %24
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
