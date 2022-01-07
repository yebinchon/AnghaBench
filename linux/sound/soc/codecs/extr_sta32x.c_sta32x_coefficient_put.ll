; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_coefficient_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_coefficient_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i32*, i32 }

@STA32X_CFUD = common dso_local global i64 0, align 8
@STA32X_CFADDR2 = common dso_local global i64 0, align 8
@STA32X_COEF_COUNT = common dso_local global i32 0, align 4
@STA32X_B1CF1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sta32x_coefficient_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_coefficient_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sta32x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.sta32x_priv* %15, %struct.sta32x_priv** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 16
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %25 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* @STA32X_CFUD, align 8
  %28 = call i32 @regmap_read(i32 %26, i64 %27, i32* %10)
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 240
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @STA32X_CFUD, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @regmap_write(i32 %33, i64 %34, i32 %35)
  %37 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %38 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @STA32X_CFADDR2, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @regmap_write(i32 %39, i64 %40, i32 %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %100, %2
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @STA32X_COEF_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %103

55:                                               ; preds = %53
  %56 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 3, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 3, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %66, %78
  %80 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 3, %85
  %87 = add nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %79, %90
  %92 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %93 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %55
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %43

103:                                              ; preds = %53
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %127, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 3, %106
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %111 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @STA32X_B1CF1, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %118 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @regmap_write(i32 %112, i64 %116, i32 %125)
  br label %127

127:                                              ; preds = %109
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %104

130:                                              ; preds = %104
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %135 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* @STA32X_CFUD, align 8
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, 1
  %140 = call i32 @regmap_write(i32 %136, i64 %137, i32 %139)
  br label %156

141:                                              ; preds = %130
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 5
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %146 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* @STA32X_CFUD, align 8
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, 2
  %151 = call i32 @regmap_write(i32 %147, i64 %148, i32 %150)
  br label %155

152:                                              ; preds = %141
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %157

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %133
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %152
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
