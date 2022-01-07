; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_print_clock_widget.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_print_clock_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.lola = type { i32 }

@LOLA_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Node 0x%02x [Clock] wcaps 0x%x\0A\00", align 1
@LOLA_VERB_GET_CLOCK_LIST = common dso_local global i32 0, align 4
@LOLA_CLOCK_TYPE_INTERNAL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@LOLA_CLOCK_TYPE_VIDEO = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"  Clock %d: Type %d:%s, freq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.lola*, i32)* @print_clock_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_clock_widget(%struct.snd_info_buffer* %0, %struct.lola* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i16], align 2
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.lola* %1, %struct.lola** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.lola*, %struct.lola** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LOLA_PAR_AUDIO_WIDGET_CAP, align 4
  %19 = call i32 @lola_read_param(%struct.lola* %16, i32 %17, i32 %18, i32* %10)
  %20 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, i32, i8, ...) @snd_iprintf(%struct.snd_info_buffer* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i8 zeroext %23)
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %111, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %114

31:                                               ; preds = %27
  %32 = load %struct.lola*, %struct.lola** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LOLA_VERB_GET_CLOCK_LIST, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @lola_codec_read(%struct.lola* %32, i32 %33, i32 %34, i32 %35, i32 0, i32* %10, i32* %11)
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 4095
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 0
  store i16 %39, i16* %40, align 2
  %41 = load i32, i32* %10, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 4095
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 1
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 4095
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 2
  store i16 %48, i16* %49, align 2
  %50 = load i32, i32* %11, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 4095
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 3
  store i16 %53, i16* %54, align 2
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %107, %31
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %110

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = ashr i32 %63, 8
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %14, align 1
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 255
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  br label %110

78:                                               ; preds = %58
  %79 = load i8, i8* %14, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @LOLA_CLOCK_TYPE_INTERNAL, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @lola_sample_rate_convert(i32 %85)
  store i32 %86, i32* %15, align 4
  br label %98

87:                                               ; preds = %78
  %88 = load i8, i8* %14, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @LOLA_CLOCK_TYPE_VIDEO, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @lola_sample_rate_convert(i32 %94)
  store i32 %95, i32* %15, align 4
  br label %97

96:                                               ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i8, i8* %14, align 1
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 (%struct.snd_info_buffer*, i8*, i32, i8, ...) @snd_iprintf(%struct.snd_info_buffer* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %102, i8 zeroext %103, i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %55

110:                                              ; preds = %77, %55
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %7, align 4
  br label %27

114:                                              ; preds = %27
  ret void
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i8 zeroext, ...) #1

declare dso_local i32 @lola_codec_read(%struct.lola*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lola_sample_rate_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
