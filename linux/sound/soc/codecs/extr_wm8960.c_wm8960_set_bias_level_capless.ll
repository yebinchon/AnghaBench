; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level_capless.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level_capless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@WM8960_POWER2 = common dso_local global i32 0, align 4
@WM8960_APOP1 = common dso_local global i32 0, align 4
@WM8960_POBCTRL = common dso_local global i32 0, align 4
@WM8960_SOFT_ST = common dso_local global i32 0, align 4
@WM8960_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8960_PWR2_LOUT1 = common dso_local global i32 0, align 4
@WM8960_PWR2_ROUT1 = common dso_local global i32 0, align 4
@WM8960_PWR2_OUT3 = common dso_local global i32 0, align 4
@WM8960_POWER1 = common dso_local global i32 0, align 4
@WM8960_VMID_MASK = common dso_local global i32 0, align 4
@WM8960_VREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to enable MCLK: %d\0A\00", align 1
@WM8960_SYSCLK_AUTO = common dso_local global i32 0, align 4
@WM8960_APOP2 = common dso_local global i32 0, align 4
@WM8960_DISOP = common dso_local global i32 0, align 4
@WM8960_DRES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8960_set_bias_level_capless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_bias_level_capless(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8960_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8960_priv* %11, %struct.wm8960_priv** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = load i32, i32* @WM8960_POWER2, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %207 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %181
    i32 131, label %206
  ]

16:                                               ; preds = %2
  br label %207

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %18)
  switch i32 %19, label %179 [
    i32 128, label %20
    i32 130, label %130
    i32 131, label %174
  ]

20:                                               ; preds = %17
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %22 = load i32, i32* @WM8960_APOP1, align 4
  %23 = load i32, i32* @WM8960_POBCTRL, align 4
  %24 = load i32, i32* @WM8960_SOFT_ST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WM8960_POBCTRL, align 4
  %29 = load i32, i32* @WM8960_SOFT_ST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %27, i32 %32)
  store i32 0, i32* %8, align 4
  %34 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %20
  %39 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %40 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @WM8960_PWR2_LOUT1, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %38, %20
  %50 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %51 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %56 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @WM8960_PWR2_ROUT1, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %54, %49
  %66 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %67 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %72 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @WM8960_PWR2_OUT3, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %70, %65
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %83 = load i32, i32* @WM8960_POWER2, align 4
  %84 = load i32, i32* @WM8960_PWR2_LOUT1, align 4
  %85 = load i32, i32* @WM8960_PWR2_ROUT1, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WM8960_PWR2_OUT3, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %88, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %92 = load i32, i32* @WM8960_POWER1, align 4
  %93 = load i32, i32* @WM8960_VMID_MASK, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i32 %93, i32 128)
  %95 = call i32 @msleep(i32 100)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %97 = load i32, i32* @WM8960_POWER1, align 4
  %98 = load i32, i32* @WM8960_VREF, align 4
  %99 = load i32, i32* @WM8960_VREF, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %98, i32 %99)
  %101 = call i32 @msleep(i32 100)
  %102 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %103 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @IS_ERR(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %81
  %108 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %109 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_prepare_enable(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %116 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %208

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %81
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %124 = call i32 @wm8960_configure_clocking(%struct.snd_soc_component* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %208

129:                                              ; preds = %122
  br label %180

130:                                              ; preds = %17
  %131 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %132 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @WM8960_SYSCLK_AUTO, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %142 = call i32 @wm8960_set_pll(%struct.snd_soc_component* %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %140, %136, %130
  %144 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %145 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @IS_ERR(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %143
  %150 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %151 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clk_disable_unprepare(i32 %152)
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %156 = load i32, i32* @WM8960_APOP1, align 4
  %157 = load i32, i32* @WM8960_POBCTRL, align 4
  %158 = load i32, i32* @WM8960_SOFT_ST, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @WM8960_POBCTRL, align 4
  %163 = load i32, i32* @WM8960_SOFT_ST, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %155, i32 %156, i32 %161, i32 %166)
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %169 = load i32, i32* @WM8960_POWER1, align 4
  %170 = load i32, i32* @WM8960_VREF, align 4
  %171 = load i32, i32* @WM8960_VMID_MASK, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %168, i32 %169, i32 %172, i32 0)
  br label %180

174:                                              ; preds = %17
  %175 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %176 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @regcache_sync(i32 %177)
  br label %180

179:                                              ; preds = %17
  br label %180

180:                                              ; preds = %179, %174, %154, %129
  br label %207

181:                                              ; preds = %2
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %183 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %182)
  switch i32 %183, label %204 [
    i32 129, label %184
  ]

184:                                              ; preds = %181
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %186 = load i32, i32* @WM8960_APOP2, align 4
  %187 = load i32, i32* @WM8960_DISOP, align 4
  %188 = load i32, i32* @WM8960_DRES_MASK, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %185, i32 %186, i32 %189, i32 0)
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %192 = load i32, i32* @WM8960_APOP1, align 4
  %193 = load i32, i32* @WM8960_POBCTRL, align 4
  %194 = load i32, i32* @WM8960_SOFT_ST, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @WM8960_POBCTRL, align 4
  %199 = load i32, i32* @WM8960_SOFT_ST, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %191, i32 %192, i32 %197, i32 %202)
  br label %205

204:                                              ; preds = %181
  br label %205

205:                                              ; preds = %204, %184
  br label %207

206:                                              ; preds = %2
  br label %207

207:                                              ; preds = %2, %206, %205, %180, %16
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %127, %114
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8960_configure_clocking(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8960_set_pll(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
