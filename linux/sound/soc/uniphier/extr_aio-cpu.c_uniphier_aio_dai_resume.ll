; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_dai_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_dai_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_3__*, %struct.uniphier_aio_sub* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.uniphier_aio_sub = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniphier_aio_dai_resume(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.uniphier_aio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = call %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai* %8)
  store %struct.uniphier_aio* %9, %struct.uniphier_aio** %4, align 8
  %10 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %11 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

17:                                               ; preds = %1
  %18 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %19 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %17
  %25 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %26 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %137

35:                                               ; preds = %24
  %36 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %37 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reset_control_deassert(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %121

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %48 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @aio_iecout_set_enable(%struct.TYPE_3__* %49, i32 1)
  %51 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %52 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @aio_chip_init(%struct.TYPE_3__* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %96, %46
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %58 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %57, i32 0, i32 1
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %58, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.uniphier_aio_sub* %59)
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %55
  %63 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %64 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %63, i32 0, i32 1
  %65 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %65, i64 %67
  store %struct.uniphier_aio_sub* %68, %struct.uniphier_aio_sub** %7, align 8
  %69 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %70 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %75 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %62
  br label %96

79:                                               ; preds = %73
  %80 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %81 = call i32 @aio_init(%struct.uniphier_aio_sub* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %106

85:                                               ; preds = %79
  %86 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %87 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %96

91:                                               ; preds = %85
  %92 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %93 = call i32 @aio_port_reset(%struct.uniphier_aio_sub* %92)
  %94 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %95 = call i32 @aio_src_reset(%struct.uniphier_aio_sub* %94)
  br label %96

96:                                               ; preds = %91, %90, %78
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %55

99:                                               ; preds = %55
  %100 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %101 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  store i32 0, i32* %2, align 4
  br label %137

106:                                              ; preds = %84
  %107 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %108 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %115 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @reset_control_assert(i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %44
  %122 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %123 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.uniphier_aio*, %struct.uniphier_aio** %4, align 8
  %130 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @clk_disable_unprepare(i32 %133)
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %99, %33, %16
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @aio_iecout_set_enable(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @aio_chip_init(%struct.TYPE_3__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_init(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_port_reset(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_src_reset(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
