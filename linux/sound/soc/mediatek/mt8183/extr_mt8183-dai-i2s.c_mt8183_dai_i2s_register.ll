; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32 }
%struct.mtk_base_afe_dai = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_dai_i2s_driver = common dso_local global i8* null, align 8
@mtk_dai_i2s_controls = common dso_local global i8* null, align 8
@mtk_dai_i2s_widgets = common dso_local global i8* null, align 8
@mtk_dai_i2s_routes = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt8183_dai_i2s_register(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mtk_base_afe_dai*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %6 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mtk_base_afe_dai* @devm_kzalloc(i32 %8, i32 72, i32 %9)
  store %struct.mtk_base_afe_dai* %10, %struct.mtk_base_afe_dai** %4, align 8
  %11 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %12 = icmp ne %struct.mtk_base_afe_dai* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %17, i32 0, i32 8
  %19 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %19, i32 0, i32 0
  %21 = call i32 @list_add(i32* %18, i32* %20)
  %22 = load i8*, i8** @mtk_dai_i2s_driver, align 8
  %23 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @mtk_dai_i2s_driver, align 8
  %26 = call i8* @ARRAY_SIZE(i8* %25)
  %27 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @mtk_dai_i2s_controls, align 8
  %30 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @mtk_dai_i2s_controls, align 8
  %33 = call i8* @ARRAY_SIZE(i8* %32)
  %34 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @mtk_dai_i2s_widgets, align 8
  %37 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @mtk_dai_i2s_widgets, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @mtk_dai_i2s_routes, align 8
  %44 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @mtk_dai_i2s_routes, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %51 = call i32 @mt8183_dai_i2s_set_priv(%struct.mtk_base_afe* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %16
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %16
  %57 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %58 = call i32 @mt8183_dai_i2s_get_share(%struct.mtk_base_afe* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %54, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.mtk_base_afe_dai* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @mt8183_dai_i2s_set_priv(%struct.mtk_base_afe*) #1

declare dso_local i32 @mt8183_dai_i2s_get_share(%struct.mtk_base_afe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
