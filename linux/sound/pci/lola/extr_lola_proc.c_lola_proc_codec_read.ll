; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.lola* }
%struct.lola = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@LOLA_PAR_VENDOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Vendor: 0x%08x\0A\00", align 1
@LOLA_PAR_FUNCTION_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Function Type: %d\0A\00", align 1
@LOLA_PAR_SPECIFIC_CAPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Specific-Caps: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  Pins-In %d, Pins-Out %d\0A\00", align 1
@CAPT = common dso_local global i64 0, align 8
@PLAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"[Audio-In]\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"[Audio-Out]\00", align 1
@LOLA_PAR_AMP_IN_CAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"[Pin-In]\00", align 1
@LOLA_PAR_AMP_OUT_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"[Pin-Out]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @lola_proc_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_proc_codec_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.lola*, %struct.lola** %10, align 8
  store %struct.lola* %11, %struct.lola** %5, align 8
  %12 = load %struct.lola*, %struct.lola** %5, align 8
  %13 = load i32, i32* @LOLA_PAR_VENDOR_ID, align 4
  %14 = call i32 @lola_read_param(%struct.lola* %12, i32 0, i32 %13, i32* %6)
  %15 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.lola*, %struct.lola** %5, align 8
  %19 = load i32, i32* @LOLA_PAR_FUNCTION_TYPE, align 4
  %20 = call i32 @lola_read_param(%struct.lola* %18, i32 1, i32 %19, i32* %6)
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.lola*, %struct.lola** %5, align 8
  %25 = load i32, i32* @LOLA_PAR_SPECIFIC_CAPS, align 4
  %26 = call i32 @lola_read_param(%struct.lola* %24, i32 1, i32 %25, i32* %6)
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load %struct.lola*, %struct.lola** %5, align 8
  %32 = getelementptr inbounds %struct.lola, %struct.lola* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* @CAPT, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lola*, %struct.lola** %5, align 8
  %39 = getelementptr inbounds %struct.lola, %struct.lola* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @PLAY, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %44)
  store i32 2, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %61, %2
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.lola*, %struct.lola** %5, align 8
  %49 = getelementptr inbounds %struct.lola, %struct.lola* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @CAPT, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %47, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = load %struct.lola*, %struct.lola** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @print_audio_widget(%struct.snd_info_buffer* %57, %struct.lola* %58, i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %46

66:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.lola*, %struct.lola** %5, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i64, i64* @PLAY, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %68, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %79 = load %struct.lola*, %struct.lola** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @print_audio_widget(%struct.snd_info_buffer* %78, %struct.lola* %79, i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %67

87:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.lola*, %struct.lola** %5, align 8
  %91 = getelementptr inbounds %struct.lola, %struct.lola* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @CAPT, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %88
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %100 = load %struct.lola*, %struct.lola** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @LOLA_PAR_AMP_IN_CAP, align 4
  %103 = call i32 @print_pin_widget(%struct.snd_info_buffer* %99, %struct.lola* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %88

109:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.lola*, %struct.lola** %5, align 8
  %113 = getelementptr inbounds %struct.lola, %struct.lola* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i64, i64* @PLAY, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %111, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %110
  %121 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %122 = load %struct.lola*, %struct.lola** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @LOLA_PAR_AMP_OUT_CAP, align 4
  %125 = call i32 @print_pin_widget(%struct.snd_info_buffer* %121, %struct.lola* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %110

131:                                              ; preds = %110
  %132 = load %struct.lola*, %struct.lola** %5, align 8
  %133 = getelementptr inbounds %struct.lola, %struct.lola* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @LOLA_AFG_CLOCK_WIDGET_PRESENT(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %139 = load %struct.lola*, %struct.lola** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @print_clock_widget(%struct.snd_info_buffer* %138, %struct.lola* %139, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %137, %131
  %145 = load %struct.lola*, %struct.lola** %5, align 8
  %146 = getelementptr inbounds %struct.lola, %struct.lola* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @LOLA_AFG_MIXER_WIDGET_PRESENT(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %152 = load %struct.lola*, %struct.lola** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @print_mixer_widget(%struct.snd_info_buffer* %151, %struct.lola* %152, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %150, %144
  ret void
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, ...) #1

declare dso_local i32 @print_audio_widget(%struct.snd_info_buffer*, %struct.lola*, i32, i8*) #1

declare dso_local i32 @print_pin_widget(%struct.snd_info_buffer*, %struct.lola*, i32, i32, i8*) #1

declare dso_local i64 @LOLA_AFG_CLOCK_WIDGET_PRESENT(i32) #1

declare dso_local i32 @print_clock_widget(%struct.snd_info_buffer*, %struct.lola*, i32) #1

declare dso_local i64 @LOLA_AFG_MIXER_WIDGET_PRESENT(i32) #1

declare dso_local i32 @print_mixer_widget(%struct.snd_info_buffer*, %struct.lola*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
