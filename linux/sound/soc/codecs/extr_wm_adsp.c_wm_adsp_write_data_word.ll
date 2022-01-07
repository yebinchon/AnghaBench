; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_write_data_word.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_write_data_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wm_adsp_region*, i32)* }
%struct.wm_adsp_region = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32, i32, i32)* @wm_adsp_write_data_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_write_data_word(%struct.wm_adsp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm_adsp_region*, align 8
  %11 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %12, i32 %13)
  store %struct.wm_adsp_region* %14, %struct.wm_adsp_region** %10, align 8
  %15 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %10, align 8
  %16 = icmp ne %struct.wm_adsp_region* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %22 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.wm_adsp_region*, i32)*, i32 (%struct.wm_adsp_region*, i32)** %24, align 8
  %26 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %25(%struct.wm_adsp_region* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 16777215
  %31 = call i32 @cpu_to_be32(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %33 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @regmap_raw_write(i32 %34, i32 %35, i32* %9, i32 4)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
