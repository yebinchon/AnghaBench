; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8903_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@WM8903_INTERRUPT_STATUS_1_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read IRQ mask: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM8903_INTERRUPT_STATUS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@WM8903_WSEQ_BUSY_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Write sequencer done\0A\00", align 1
@WM8903_INTERRUPT_POLARITY_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to read interrupt polarity: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WM8903_MICSHRT_EINT = common dso_local global i32 0, align 4
@WM8903_MICDET_EINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Microphone short (pol=%x)\0A\00", align 1
@WM8903_MICSHRT_INV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Microphone detect (pol=%x)\0A\00", align 1
@WM8903_MICDET_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8903_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm8903_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.wm8903_priv*
  store %struct.wm8903_priv* %13, %struct.wm8903_priv** %6, align 8
  %14 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %15 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WM8903_INTERRUPT_STATUS_1_MASK, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %10)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %156

28:                                               ; preds = %2
  %29 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WM8903_INTERRUPT_STATUS_1, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %38 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %156

43:                                               ; preds = %28
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @WM8903_WSEQ_BUSY_EINT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %54 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %43
  %58 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %59 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WM8903_INTERRUPT_POLARITY_1, align 4
  %65 = call i32 @regmap_read(i32 %63, i32 %64, i32* %11)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %70 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %156

75:                                               ; preds = %57
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @WM8903_MICSHRT_EINT, align 4
  %78 = load i32, i32* @WM8903_MICDET_EINT, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_name(i32 %85)
  %87 = call i32 @trace_snd_soc_jack_irq(i32 %86)
  br label %88

88:                                               ; preds = %82, %75
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @WM8903_MICSHRT_EINT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %100 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @WM8903_MICSHRT_INV, align 4
  %105 = load i32, i32* %11, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %93, %88
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @WM8903_MICDET_EINT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %107
  %113 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %114 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @dev_dbg(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %119 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = xor i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @WM8903_MICDET_INV, align 4
  %124 = load i32, i32* %11, align 4
  %125 = xor i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %127 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @msleep(i32 %128)
  br label %130

130:                                              ; preds = %112, %107
  %131 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %132 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @WM8903_INTERRUPT_POLARITY_1, align 4
  %135 = load i32, i32* @WM8903_MICSHRT_INV, align 4
  %136 = load i32, i32* @WM8903_MICDET_INV, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @regmap_update_bits(i32 %133, i32 %134, i32 %137, i32 %138)
  %140 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %141 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %145 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %148 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %146, %149
  %151 = call i32 @snd_soc_jack_report(i32 %142, i32 %143, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %154 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %130, %68, %36, %21
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @trace_snd_soc_jack_irq(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
