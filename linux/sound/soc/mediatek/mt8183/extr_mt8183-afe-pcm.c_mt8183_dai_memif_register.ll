; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_dai_memif_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_dai_memif_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32 }
%struct.mtk_base_afe_dai = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt8183_memif_dai_driver = common dso_local global i8* null, align 8
@mt8183_memif_widgets = common dso_local global i8* null, align 8
@mt8183_memif_routes = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*)* @mt8183_dai_memif_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_dai_memif_register(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mtk_base_afe_dai*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %5 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mtk_base_afe_dai* @devm_kzalloc(i32 %7, i32 56, i32 %8)
  store %struct.mtk_base_afe_dai* %9, %struct.mtk_base_afe_dai** %4, align 8
  %10 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %11 = icmp ne %struct.mtk_base_afe_dai* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %16, i32 0, i32 6
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 0
  %20 = call i32 @list_add(i32* %17, i32* %19)
  %21 = load i8*, i8** @mt8183_memif_dai_driver, align 8
  %22 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @mt8183_memif_dai_driver, align 8
  %25 = call i8* @ARRAY_SIZE(i8* %24)
  %26 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @mt8183_memif_widgets, align 8
  %29 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @mt8183_memif_widgets, align 8
  %32 = call i8* @ARRAY_SIZE(i8* %31)
  %33 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @mt8183_memif_routes, align 8
  %36 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @mt8183_memif_routes, align 8
  %39 = call i8* @ARRAY_SIZE(i8* %38)
  %40 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %15, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.mtk_base_afe_dai* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
