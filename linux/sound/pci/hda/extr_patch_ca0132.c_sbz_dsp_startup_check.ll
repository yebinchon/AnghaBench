; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_dsp_startup_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_dsp_startup_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.ca0132_spec* }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*)* }
%struct.hda_codec.0 = type opaque
%struct.ca0132_spec = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Startup Check: %d \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"DSP not initialized properly. Attempting to fix.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Reloading... Tries left: %d\00", align 1
@DSP_DOWNLOAD_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"DSP fixed.\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"DSP failed to initialize properly. Either try a full shutdown or a suspend to clear the internal memory.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_dsp_startup_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_dsp_startup_check(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %3, align 8
  store i32 912, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %27
  %29 = call i32 @chipio_read(%struct.hda_codec* %24, i32 %25, i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1583176796
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @codec_dbg(%struct.hda_codec* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %114, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br i1 %67, label %68, label %117

68:                                               ; preds = %66
  %69 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = call i32 @sbz_exit_chip(%struct.hda_codec* %72)
  %74 = load i32, i32* @DSP_DOWNLOAD_INIT, align 4
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %76 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %79, align 8
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = bitcast %struct.hda_codec* %81 to %struct.hda_codec.0*
  %83 = call i32 %80(%struct.hda_codec.0* %82)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %96, %68
  %85 = load i32, i32* %6, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %91
  %93 = call i32 @chipio_read(%struct.hda_codec* %88, i32 %89, i32* %92)
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %84

99:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, -1583176796
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %103
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* %8, align 4
  br label %60

117:                                              ; preds = %66
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp ult i32 %121, 3
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %125 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %120, %117
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %133

130:                                              ; preds = %126
  %131 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %132 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %131, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %129, %16
  ret void
}

declare dso_local i32 @chipio_read(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @sbz_exit_chip(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
