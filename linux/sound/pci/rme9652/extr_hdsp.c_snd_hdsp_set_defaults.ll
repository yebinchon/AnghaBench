; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32, i64, i32* }

@HDSP_ClockModeMaster = common dso_local global i32 0, align 4
@HDSP_SPDIFInputCoaxial = common dso_local global i32 0, align 4
@HDSP_LineOut = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@H9652 = common dso_local global i64 0, align 8
@HDSP_control2Reg = common dso_local global i32 0, align 4
@HDSP_MATRIX_MIXER_SIZE = common dso_local global i32 0, align 4
@MINUS_INFINITY_GAIN = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HDSP_DAGainPlus4dBu = common dso_local global i32 0, align 4
@HDSP_ADGainPlus4dBu = common dso_local global i32 0, align 4
@HDSP_PhoneGain0dB = common dso_local global i32 0, align 4
@HDSP_BIGENDIAN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @snd_hdsp_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_set_defaults(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %5 = load i32, i32* @HDSP_ClockModeMaster, align 4
  %6 = load i32, i32* @HDSP_SPDIFInputCoaxial, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @hdsp_encode_latency(i32 7)
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HDSP_LineOut, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %13 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %15 = load i32, i32* @HDSP_controlRegister, align 4
  %16 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %17 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @hdsp_write(%struct.hdsp* %14, i32 %15, i32 %18)
  %20 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %21 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @H9652, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %29 = call i32 @snd_hdsp_9652_enable_mixer(%struct.hdsp* %28)
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %32 = load i32, i32* @HDSP_control2Reg, align 4
  %33 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hdsp_write(%struct.hdsp* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %39 = call i32 @hdsp_reset_hw_pointer(%struct.hdsp* %38)
  %40 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %41 = call i32 @hdsp_compute_period_size(%struct.hdsp* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %54, %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HDSP_MATRIX_MIXER_SIZE, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* @MINUS_INFINITY_GAIN, align 4
  %48 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %49 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %42

57:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %87, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @H9652, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @H9632, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %58
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @HDSP_MATRIX_MIXER_SIZE, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 1352, %71 ], [ %73, %72 ]
  %76 = icmp ult i32 %59, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MINUS_INFINITY_GAIN, align 4
  %81 = call i64 @hdsp_write_gain(%struct.hdsp* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %115

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %58

90:                                               ; preds = %74
  %91 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %92 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @H9632, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i32, i32* @HDSP_DAGainPlus4dBu, align 4
  %98 = load i32, i32* @HDSP_ADGainPlus4dBu, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @HDSP_PhoneGain0dB, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %103 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %107 = load i32, i32* @HDSP_controlRegister, align 4
  %108 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %109 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @hdsp_write(%struct.hdsp* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %96, %90
  %113 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %114 = call i32 @hdsp_set_rate(%struct.hdsp* %113, i32 48000, i32 1)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %83
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @hdsp_encode_latency(i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @snd_hdsp_9652_enable_mixer(%struct.hdsp*) #1

declare dso_local i32 @hdsp_reset_hw_pointer(%struct.hdsp*) #1

declare dso_local i32 @hdsp_compute_period_size(%struct.hdsp*) #1

declare dso_local i64 @hdsp_write_gain(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_set_rate(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
