; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_set_priv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mtk_base_afe = type { i32, %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { %struct.mtk_afe_i2s_priv** }
%struct.mtk_afe_i2s_priv = type { i32 }

@DAI_I2S_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt8183_i2s_priv = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*)* @mt8183_dai_i2s_set_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_dai_i2s_set_priv(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mt8183_afe_private*, align 8
  %5 = alloca %struct.mtk_afe_i2s_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %7 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %7, i32 0, i32 1
  %9 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %8, align 8
  store %struct.mt8183_afe_private* %9, %struct.mt8183_afe_private** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DAI_I2S_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mtk_afe_i2s_priv* @devm_kzalloc(i32 %17, i32 4, i32 %18)
  store %struct.mtk_afe_i2s_priv* %19, %struct.mtk_afe_i2s_priv** %5, align 8
  %20 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %5, align 8
  %21 = icmp ne %struct.mtk_afe_i2s_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %14
  %26 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt8183_i2s_priv, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = call i32 @memcpy(%struct.mtk_afe_i2s_priv* %26, %struct.TYPE_3__* %30, i32 4)
  %32 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %5, align 8
  %33 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %4, align 8
  %34 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %33, i32 0, i32 0
  %35 = load %struct.mtk_afe_i2s_priv**, %struct.mtk_afe_i2s_priv*** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt8183_i2s_priv, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %35, i64 %41
  store %struct.mtk_afe_i2s_priv* %32, %struct.mtk_afe_i2s_priv** %42, align 8
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %10

46:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.mtk_afe_i2s_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.mtk_afe_i2s_priv*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
