; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_set_output_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_set_output_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LAYLA20_OUTPUT_CLOCK_SUPER = common dso_local global i32 0, align 4
@LAYLA20_OUTPUT_CLOCK_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_output_clock wrong clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_output_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_output_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %9
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @LAYLA20_OUTPUT_CLOCK_SUPER, align 4
  store i32 %8, i32* %5, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @LAYLA20_OUTPUT_CLOCK_WORD, align 4
  store i32 %10, i32* %5, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %9, %7
  %21 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %22 = call i64 @wait_handshake(%struct.echoaudio* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = call i32 @clear_handshake(%struct.echoaudio* %37)
  %39 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %40 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %41 = call i32 @send_vector(%struct.echoaudio* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %24, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
