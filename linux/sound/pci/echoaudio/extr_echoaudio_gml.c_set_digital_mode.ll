; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i32*, i32*, i32**, i64 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_digital_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_digital_mode(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %128

26:                                               ; preds = %17
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %128

41:                                               ; preds = %26
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dsp_set_digital_mode(%struct.echoaudio* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %126

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %126

62:                                               ; preds = %58, %54
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 3
  %65 = call i32 @spin_lock_irq(i32* %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %97, %62
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %69 = call i32 @num_busses_out(%struct.echoaudio* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %75 = call i32 @num_busses_in(%struct.echoaudio* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %82 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %81, i32 0, i32 6
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @set_monitor_gain(%struct.echoaudio* %78, i32 %79, i32 %80, i32 %91)
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %72

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %66

100:                                              ; preds = %66
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %104 = call i32 @num_busses_out(%struct.echoaudio* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %110 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @set_output_gain(%struct.echoaudio* %107, i32 %108, i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %101

120:                                              ; preds = %101
  %121 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %122 = call i32 @update_output_line_level(%struct.echoaudio* %121)
  %123 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %124 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %123, i32 0, i32 3
  %125 = call i32 @spin_unlock_irq(i32* %124)
  br label %126

126:                                              ; preds = %120, %58, %50, %41
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %38, %23, %14
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dsp_set_digital_mode(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @num_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @set_monitor_gain(%struct.echoaudio*, i32, i32, i32) #1

declare dso_local i32 @set_output_gain(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
