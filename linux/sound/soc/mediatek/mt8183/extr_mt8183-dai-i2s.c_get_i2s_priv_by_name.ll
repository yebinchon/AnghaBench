; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_get_i2s_priv_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_get_i2s_priv_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_afe_i2s_priv = type { i32 }
%struct.mtk_base_afe = type { %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { %struct.mtk_afe_i2s_priv** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_afe_i2s_priv* (%struct.mtk_base_afe*, i8*)* @get_i2s_priv_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_afe_i2s_priv* @get_i2s_priv_by_name(%struct.mtk_base_afe* %0, i8* %1) #0 {
  %3 = alloca %struct.mtk_afe_i2s_priv*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt8183_afe_private*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %8, i32 0, i32 0
  %10 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %9, align 8
  store %struct.mt8183_afe_private* %10, %struct.mt8183_afe_private** %6, align 8
  %11 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @get_i2s_id_by_name(%struct.mtk_base_afe* %11, i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.mtk_afe_i2s_priv* null, %struct.mtk_afe_i2s_priv** %3, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %6, align 8
  %19 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %18, i32 0, i32 0
  %20 = load %struct.mtk_afe_i2s_priv**, %struct.mtk_afe_i2s_priv*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %20, i64 %22
  %24 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %23, align 8
  store %struct.mtk_afe_i2s_priv* %24, %struct.mtk_afe_i2s_priv** %3, align 8
  br label %25

25:                                               ; preds = %17, %16
  %26 = load %struct.mtk_afe_i2s_priv*, %struct.mtk_afe_i2s_priv** %3, align 8
  ret %struct.mtk_afe_i2s_priv* %26
}

declare dso_local i32 @get_i2s_id_by_name(%struct.mtk_base_afe*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
