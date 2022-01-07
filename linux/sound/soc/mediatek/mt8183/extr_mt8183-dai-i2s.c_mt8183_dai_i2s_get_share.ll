; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_get_share.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_mt8183_dai_i2s_get_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.mtk_base_afe = type { %struct.TYPE_3__*, %struct.mt8183_afe_private* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mt8183_afe_private = type { %struct.mtk_afe_i2s_priv** }
%struct.mtk_afe_i2s_priv = type { i32 }

@DAI_I2S_NUM = common dso_local global i32 0, align 4
@mt8183_i2s_priv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*)* @mt8183_dai_i2s_get_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_dai_i2s_get_share(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  %3 = alloca %struct.mt8183_afe_private*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtk_afe_i2s_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %10, align 8
  store %struct.mt8183_afe_private* %11, %struct.mt8183_afe_private** %3, align 8
  %12 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %50, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DAI_I2S_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %23 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %22, i32 0, i32 0
  %24 = load %struct.mtk_afe_i2s_priv**, %struct.mtk_afe_i2s_priv*** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt8183_i2s_priv, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %24, i64 %30
  %32 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %31, align 8
  store %struct.mtk_afe_i2s_priv* %32, %struct.mtk_afe_i2s_priv** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt8183_i2s_priv, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %6, align 8
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @of_property_read_string(%struct.device_node* %39, i8* %40, i8** %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %21
  br label %50

44:                                               ; preds = %21
  %45 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @get_i2s_id_by_name(%struct.mtk_base_afe* %45, i8* %46)
  %48 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %7, align 8
  %49 = getelementptr inbounds %struct.mtk_afe_i2s_priv, %struct.mtk_afe_i2s_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %17

53:                                               ; preds = %17
  ret i32 0
}

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @get_i2s_id_by_name(%struct.mtk_base_afe*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
