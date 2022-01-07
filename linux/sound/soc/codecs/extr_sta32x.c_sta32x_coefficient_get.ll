; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_coefficient_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_coefficient_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i32, i32 }

@STA32X_CFUD = common dso_local global i64 0, align 8
@STA32X_CFADDR2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STA32X_B1CF1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sta32x_coefficient_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_coefficient_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.sta32x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.sta32x_priv* %16, %struct.sta32x_priv** %6, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65535
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %26 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %29 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @STA32X_CFUD, align 8
  %32 = call i32 @regmap_read(i32 %30, i64 %31, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 240
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %36 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @STA32X_CFUD, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @regmap_write(i32 %37, i64 %38, i32 %39)
  %41 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %42 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @STA32X_CFADDR2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @regmap_write(i32 %43, i64 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %2
  %50 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %51 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @STA32X_CFUD, align 8
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, 4
  %56 = call i32 @regmap_write(i32 %52, i64 %53, i32 %55)
  br label %72

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %62 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @STA32X_CFUD, align 8
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, 8
  %67 = call i32 @regmap_write(i32 %63, i64 %64, i32 %66)
  br label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %100

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %49
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %96, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 3, %75
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %80 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @STA32X_B1CF1, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @regmap_read(i32 %81, i64 %85, i32* %10)
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %87, i32* %95, align 4
  br label %96

96:                                               ; preds = %78
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %73

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %struct.sta32x_priv*, %struct.sta32x_priv** %6, align 8
  %102 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %12, align 4
  ret i32 %104
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
