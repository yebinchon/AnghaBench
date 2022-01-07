; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-proc.c_proc_read_formation.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-proc.c_proc_read_formation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { i32**, i32, i32** }
%struct.snd_info_buffer = type { i32 }
%struct.snd_oxfw_stream_formation = type { i32, i32, i32 }

@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Input Stream to device:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09Rate\09PCM\09MIDI\0A\00", align 1
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%c\09%d\09%d\09%d\0A\00", align 1
@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Output Stream from device:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_formation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_formation(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_oxfw*, align 8
  %6 = alloca %struct.snd_oxfw_stream_formation, align 4
  %7 = alloca %struct.snd_oxfw_stream_formation, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %13 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %12, i32 0, i32 0
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %13, align 8
  store %struct.snd_oxfw* %14, %struct.snd_oxfw** %5, align 8
  %15 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %16 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %17 = call i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw* %15, i32 %16, %struct.snd_oxfw_stream_formation* %7)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %124

21:                                               ; preds = %2
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %63, %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %32 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %63

41:                                               ; preds = %30
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @snd_oxfw_stream_parse_format(i32* %42, %struct.snd_oxfw_stream_formation* %6)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %63

47:                                               ; preds = %41
  %48 = call i64 @memcmp(%struct.snd_oxfw_stream_formation* %6, %struct.snd_oxfw_stream_formation* %7, i32 12)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 42, i8* %9, align 1
  br label %52

51:                                               ; preds = %47
  store i8 32, i8* %9, align 1
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %52, %46, %40
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %68 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %124

72:                                               ; preds = %66
  %73 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %74 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %75 = call i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw* %73, i32 %74, %struct.snd_oxfw_stream_formation* %7)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %124

79:                                               ; preds = %72
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %83 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %121, %79
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  %89 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %90 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %121

99:                                               ; preds = %88
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @snd_oxfw_stream_parse_format(i32* %100, %struct.snd_oxfw_stream_formation* %6)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %121

105:                                              ; preds = %99
  %106 = call i64 @memcmp(%struct.snd_oxfw_stream_formation* %6, %struct.snd_oxfw_stream_formation* %7, i32 12)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i8 42, i8* %9, align 1
  br label %110

109:                                              ; preds = %105
  store i8 32, i8* %9, align 1
  br label %110

110:                                              ; preds = %109, %108
  %111 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %112 = load i8, i8* %9, align 1
  %113 = sext i8 %112 to i32
  %114 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %110, %104, %98
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %84

124:                                              ; preds = %20, %71, %78, %84
  ret void
}

declare dso_local i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw*, i32, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i64 @memcmp(%struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
