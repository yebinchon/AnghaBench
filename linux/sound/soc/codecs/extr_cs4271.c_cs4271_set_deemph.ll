; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs4271_private = type { i32, i64, i64 }

@CS4271_DACCTL_DEM_DIS = common dso_local global i32 0, align 4
@cs4271_deemph = common dso_local global i64* null, align 8
@CS4271_DACCTL = common dso_local global i32 0, align 4
@CS4271_DACCTL_DEM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs4271_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4271_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs4271_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs4271_private* %9, %struct.cs4271_private** %4, align 8
  %10 = load i32, i32* @CS4271_DACCTL_DEM_DIS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %12 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  store i32 2, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i64*, i64** @cs4271_deemph, align 8
  %19 = call i32 @ARRAY_SIZE(i64* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = load i64*, i64** @cs4271_deemph, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %28 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i64 @abs(i64 %30)
  %32 = load i64*, i64** @cs4271_deemph, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %38 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i64 @abs(i64 %40)
  %42 = icmp slt i64 %31, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %21
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %54 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CS4271_DACCTL, align 4
  %57 = load i32, i32* @CS4271_DACCTL_DEM_MASK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
