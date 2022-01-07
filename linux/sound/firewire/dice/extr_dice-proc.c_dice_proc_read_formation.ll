; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-proc.c_dice_proc_read_formation.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-proc.c_dice_proc_read_formation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_dice* }
%struct.snd_dice = type { i32**, i32*, i32**, i32* }
%struct.snd_info_buffer = type { i32 }

@dice_proc_read_formation.rate_labels = internal constant [131 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"middle\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Output stream from unit:\0A\00", align 1
@SND_DICE_RATE_MODE_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09MIDI\0A\00", align 1
@MAX_STREAMS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Tx %u:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09%u\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\09%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Input stream to unit:\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Rx %u:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @dice_proc_read_formation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dice_proc_read_formation(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_dice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_dice*, %struct.snd_dice** %9, align 8
  store %struct.snd_dice* %10, %struct.snd_dice** %5, align 8
  %11 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %12 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [131 x i8*], [131 x i8*]* @dice_proc_read_formation.rate_labels, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %69, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_STREAMS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %56, %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %45 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %61 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %62 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %86, %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [131 x i8*], [131 x i8*]* @dice_proc_read_formation.rate_labels, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %75

89:                                               ; preds = %75
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %91 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %131, %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @MAX_STREAMS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %92
  %97 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %98)
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %118, %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %106 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %107 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %104
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %123 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %124 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %92

134:                                              ; preds = %92
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
