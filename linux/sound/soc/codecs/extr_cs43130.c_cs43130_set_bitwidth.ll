; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_bitwidth.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_bitwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.cs43130_bitwidth_map = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS43130_ASP_CH_1_SZ_EN = common dso_local global i32 0, align 4
@CS43130_CH_BITSIZE_MASK = common dso_local global i32 0, align 4
@CS43130_ASP_CH_2_SZ_EN = common dso_local global i32 0, align 4
@CS43130_SP_BITSIZE = common dso_local global i32 0, align 4
@CS43130_ASP_BITSIZE_MASK = common dso_local global i32 0, align 4
@CS43130_XSP_CH_1_SZ_EN = common dso_local global i32 0, align 4
@CS43130_XSP_CH_2_SZ_EN = common dso_local global i32 0, align 4
@CS43130_XSP_BITSIZE_MASK = common dso_local global i32 0, align 4
@CS43130_XSP_BITSIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.regmap*)* @cs43130_set_bitwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_set_bitwidth(i32 %0, i32 %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.cs43130_bitwidth_map*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.cs43130_bitwidth_map* @cs43130_get_bitwidth_table(i32 %9)
  store %struct.cs43130_bitwidth_map* %10, %struct.cs43130_bitwidth_map** %8, align 8
  %11 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %12 = icmp ne %struct.cs43130_bitwidth_map* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %64 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %40
  ]

18:                                               ; preds = %16, %16
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = load i32, i32* @CS43130_ASP_CH_1_SZ_EN, align 4
  %21 = load i32, i32* @CS43130_CH_BITSIZE_MASK, align 4
  %22 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %23 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = load i32, i32* @CS43130_ASP_CH_2_SZ_EN, align 4
  %28 = load i32, i32* @CS43130_CH_BITSIZE_MASK, align 4
  %29 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %30 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.regmap*, %struct.regmap** %7, align 8
  %34 = load i32, i32* @CS43130_SP_BITSIZE, align 4
  %35 = load i32, i32* @CS43130_ASP_BITSIZE_MASK, align 4
  %36 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %37 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_update_bits(%struct.regmap* %33, i32 %34, i32 %35, i32 %38)
  br label %67

40:                                               ; preds = %16
  %41 = load %struct.regmap*, %struct.regmap** %7, align 8
  %42 = load i32, i32* @CS43130_XSP_CH_1_SZ_EN, align 4
  %43 = load i32, i32* @CS43130_CH_BITSIZE_MASK, align 4
  %44 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %45 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %46)
  %48 = load %struct.regmap*, %struct.regmap** %7, align 8
  %49 = load i32, i32* @CS43130_XSP_CH_2_SZ_EN, align 4
  %50 = load i32, i32* @CS43130_CH_BITSIZE_MASK, align 4
  %51 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %52 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %7, align 8
  %56 = load i32, i32* @CS43130_SP_BITSIZE, align 4
  %57 = load i32, i32* @CS43130_XSP_BITSIZE_MASK, align 4
  %58 = load %struct.cs43130_bitwidth_map*, %struct.cs43130_bitwidth_map** %8, align 8
  %59 = getelementptr inbounds %struct.cs43130_bitwidth_map, %struct.cs43130_bitwidth_map* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS43130_XSP_BITSIZE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %57, i32 %62)
  br label %67

64:                                               ; preds = %16
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %40, %18
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.cs43130_bitwidth_map* @cs43130_get_bitwidth_table(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
