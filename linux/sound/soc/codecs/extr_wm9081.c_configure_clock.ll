; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32, i32, i32, i32, i32, i32 }

@clk_sys_rates = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM9081_MCLKDIV2 = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_CLK_SRC_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CLK_SYS is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_clock(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm9081_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm9081_priv* %13, %struct.wm9081_priv** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %148 [
    i32 128, label %17
    i32 129, label %38
  ]

17:                                               ; preds = %1
  %18 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 12225000
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  %23 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %24 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 2
  %27 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %28 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %31 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %34 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = call i32 @wm9081_set_fll(%struct.snd_soc_component* %36, i32 129, i32 0, i32 0)
  br label %151

38:                                               ; preds = %1
  %39 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %40 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %45 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %56 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %57, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %68 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 3000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %79

75:                                               ; preds = %71, %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %49

79:                                               ; preds = %74, %49
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %82 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %198

87:                                               ; preds = %79
  br label %128

88:                                               ; preds = %43, %38
  %89 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %90 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %97 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %107 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %110, 3000000
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %117

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %94

117:                                              ; preds = %112, %94
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %119)
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %198

125:                                              ; preds = %117
  br label %127

126:                                              ; preds = %88
  store i32 12288000, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %87
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %130 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %131 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @wm9081_set_fll(%struct.snd_soc_component* %129, i32 129, i32 %132, i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %140 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  store i32 1, i32* %11, align 4
  br label %147

141:                                              ; preds = %128
  %142 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %143 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %146 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %137
  br label %151

148:                                              ; preds = %1
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %198

151:                                              ; preds = %147, %35
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = load i32, i32* @WM9081_CLOCK_CONTROL_1, align 4
  %154 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, i32* @WM9081_MCLKDIV2, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %166

161:                                              ; preds = %151
  %162 = load i32, i32* @WM9081_MCLKDIV2, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %157
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %168 = load i32, i32* @WM9081_CLOCK_CONTROL_1, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %167, i32 %168, i32 %169)
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %172 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %173 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load i32, i32* @WM9081_CLK_SRC_SEL, align 4
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %8, align 4
  br label %185

180:                                              ; preds = %166
  %181 = load i32, i32* @WM9081_CLK_SRC_SEL, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %8, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %180, %176
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %187 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %186, i32 %187, i32 %188)
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %191 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %194 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_dbg(i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %185, %148, %122, %84
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm9081_set_fll(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
