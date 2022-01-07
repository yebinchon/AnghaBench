; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_amp_vals.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_amp_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" [\00", align 1
@AC_VERB_GET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@AC_AMP_GET_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32, i32)* @print_amp_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_amp_vals(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_info_buffer*, align 8
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %7, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @is_stereo_amps(%struct.hda_codec* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @HDA_OUTPUT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @AC_AMP_GET_INPUT, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %68, %29
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %41 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %15, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_hda_codec_read(%struct.hda_codec* %38, i32 %39, i32 0, i32 %40, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %35
  %53 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %56 = load i32, i32* @AC_AMP_GET_RIGHT, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_hda_codec_read(%struct.hda_codec* %53, i32 %54, i32 0, i32 %55, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %52, %35
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %31

71:                                               ; preds = %31
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %73 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @is_stereo_amps(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
