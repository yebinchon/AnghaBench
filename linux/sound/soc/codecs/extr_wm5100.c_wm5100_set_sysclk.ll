; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32, i32, i32* }

@WM5100_CLOCKING_3 = common dso_local global i32 0, align 4
@WM5100_CLOCKING_7 = common dso_local global i32 0, align 4
@WM5100_CLOCKING_1 = common dso_local global i32 0, align 4
@WM5100_CLK_32K_SRC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid source %d\0A\00", align 1
@WM5100_MISC_GPIO_1 = common dso_local global i32 0, align 4
@WM5100_OPCLK_SEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported OPCLK %dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid clock rate: %d\0A\00", align 1
@WM5100_SYSCLK_FREQ_MASK = common dso_local global i32 0, align 4
@WM5100_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM5100_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Setting primary audio rate to %dHz\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Primary audio slot is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm5100_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm5100_priv*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm5100_priv* %19, %struct.wm5100_priv** %12, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %94 [
    i32 128, label %21
    i32 130, label %25
    i32 134, label %29
    i32 133, label %41
    i32 132, label %41
    i32 131, label %41
    i32 129, label %68
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* @WM5100_CLOCKING_3, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.wm5100_priv*, %struct.wm5100_priv** %12, align 8
  %24 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %23, i32 0, i32 0
  store i32* %24, i32** %13, align 8
  br label %102

25:                                               ; preds = %5
  %26 = load i32, i32* @WM5100_CLOCKING_7, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.wm5100_priv*, %struct.wm5100_priv** %12, align 8
  %28 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %27, i32 0, i32 1
  store i32* %28, i32** %13, align 8
  br label %102

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %37 [
    i32 137, label %31
    i32 136, label %31
    i32 135, label %31
  ]

31:                                               ; preds = %29, %29, %29
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %33 = load i32, i32* @WM5100_CLOCKING_1, align 4
  %34 = load i32, i32* @WM5100_CLK_32K_SRC_MASK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %166

40:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %166

41:                                               ; preds = %5, %5, %5
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %59 [
    i32 135, label %43
    i32 138, label %51
  ]

43:                                               ; preds = %41
  %44 = load %struct.wm5100_priv*, %struct.wm5100_priv** %12, align 8
  %45 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 0, i32* %50, align 4
  br label %67

51:                                               ; preds = %41
  %52 = load %struct.wm5100_priv*, %struct.wm5100_priv** %12, align 8
  %53 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 1, i32* %58, align 4
  br label %67

59:                                               ; preds = %41
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %166

67:                                               ; preds = %51, %43
  store i32 0, i32* %6, align 4
  br label %166

68:                                               ; preds = %5
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %85 [
    i32 5644800, label %70
    i32 6144000, label %70
    i32 11289600, label %75
    i32 12288000, label %75
    i32 22579200, label %80
    i32 24576000, label %80
  ]

70:                                               ; preds = %68, %68
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %72 = load i32, i32* @WM5100_MISC_GPIO_1, align 4
  %73 = load i32, i32* @WM5100_OPCLK_SEL_MASK, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 0)
  br label %93

75:                                               ; preds = %68, %68
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %77 = load i32, i32* @WM5100_MISC_GPIO_1, align 4
  %78 = load i32, i32* @WM5100_OPCLK_SEL_MASK, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 0)
  br label %93

80:                                               ; preds = %68, %68
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %82 = load i32, i32* @WM5100_MISC_GPIO_1, align 4
  %83 = load i32, i32* @WM5100_OPCLK_SEL_MASK, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 0)
  br label %93

85:                                               ; preds = %68
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %166

93:                                               ; preds = %80, %75, %70
  store i32 0, i32* %6, align 4
  br label %166

94:                                               ; preds = %5
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %166

102:                                              ; preds = %25, %21
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %112 [
    i32 135, label %104
    i32 138, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %166

112:                                              ; preds = %102
  %113 = load i32, i32* %10, align 4
  switch i32 %113, label %117 [
    i32 5644800, label %114
    i32 6144000, label %114
    i32 11289600, label %115
    i32 12288000, label %115
    i32 22579200, label %116
    i32 24576000, label %116
  ]

114:                                              ; preds = %112, %112
  store i32 0, i32* %14, align 4
  br label %125

115:                                              ; preds = %112, %112
  store i32 1, i32* %14, align 4
  br label %125

116:                                              ; preds = %112, %112
  store i32 2, i32* %14, align 4
  br label %125

117:                                              ; preds = %112
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %119 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %166

125:                                              ; preds = %116, %115, %114
  %126 = load i32, i32* %10, align 4
  switch i32 %126, label %129 [
    i32 5644800, label %127
    i32 11289600, label %127
    i32 22579200, label %127
    i32 6144000, label %128
    i32 12288000, label %128
    i32 24576000, label %128
  ]

127:                                              ; preds = %125, %125, %125
  store i32 44100, i32* %15, align 4
  br label %131

128:                                              ; preds = %125, %125, %125
  store i32 48000, i32* %15, align 4
  br label %131

129:                                              ; preds = %125
  %130 = call i32 (...) @BUG()
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %128, %127
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @WM5100_SYSCLK_FREQ_MASK, align 4
  %135 = load i32, i32* @WM5100_SYSCLK_SRC_MASK, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @WM5100_SYSCLK_FREQ_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %136, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %163

145:                                              ; preds = %131
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %147 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @wm5100_alloc_sr(%struct.snd_soc_component* %151, i32 %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %158 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @dev_warn(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %156, %145
  br label %163

163:                                              ; preds = %162, %131
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %163, %117, %104, %94, %93, %85, %67, %59, %40, %37
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wm5100_alloc_sr(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
