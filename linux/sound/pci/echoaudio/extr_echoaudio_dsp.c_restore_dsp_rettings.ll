; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_restore_dsp_rettings.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_restore_dsp_rettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32**, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GD_CLOCK_UNDEF = common dso_local global i32 0, align 4
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@DSP_VC_METERS_ON = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @restore_dsp_rettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_dsp_rettings(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %7 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %8 = call i32 @check_asic_status(%struct.echoaudio* %7)
  store i32 %8, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %2, align 4
  br label %108

12:                                               ; preds = %1
  %13 = load i32, i32* @GD_CLOCK_UNDEF, align 4
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %19 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 11
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = call i32 @cpu_to_le32(i32 -1)
  %24 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %49, %12
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = call i32 @num_busses_out(%struct.echoaudio* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_output_gain(%struct.echoaudio* %34, i32 %35, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %108

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %54 = call i32 @update_output_line_level(%struct.echoaudio* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %108

59:                                               ; preds = %52
  %60 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %61 = call i32 @update_input_line_level(%struct.echoaudio* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %108

66:                                               ; preds = %59
  %67 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %68 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_sample_rate(%struct.echoaudio* %67, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %108

76:                                               ; preds = %66
  %77 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %78 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %83 = load i32, i32* @DSP_VC_METERS_ON, align 4
  %84 = call i32 @send_vector(%struct.echoaudio* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %108

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %92 = call i64 @wait_handshake(%struct.echoaudio* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %90
  %98 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %99 = call i32 @clear_handshake(%struct.echoaudio* %98)
  %100 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %101 = load i32, i32* @DSP_VC_UPDATE_FLAGS, align 4
  %102 = call i32 @send_vector(%struct.echoaudio* %100, i32 %101)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %104, %94, %87, %74, %64, %57, %46, %10
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @set_output_gain(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i32 @update_input_line_level(%struct.echoaudio*) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
