; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LAYLA20_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@LAYLA20_CLOCK_SPDIF = common dso_local global i32 0, align 4
@LAYLA20_CLOCK_WORD = common dso_local global i32 0, align 4
@LAYLA20_CLOCK_SUPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Input clock 0x%x not supported for Layla24\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %20 [
    i32 131, label %9
    i32 130, label %14
    i32 128, label %16
    i32 129, label %18
  ]

9:                                                ; preds = %2
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @LAYLA20_CLOCK_INTERNAL, align 4
  store i32 %13, i32* %6, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @LAYLA20_CLOCK_SPDIF, align 4
  store i32 %15, i32* %6, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @LAYLA20_CLOCK_WORD, align 4
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @LAYLA20_CLOCK_SUPER, align 4
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %18, %16, %14, %9
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = call i32 @clear_handshake(%struct.echoaudio* %40)
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %44 = call i32 @send_vector(%struct.echoaudio* %42, i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @set_sample_rate(%struct.echoaudio* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %30
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
