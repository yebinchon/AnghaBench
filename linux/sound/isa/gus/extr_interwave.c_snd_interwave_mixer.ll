; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@snd_interwave_controls = common dso_local global i32* null, align 8
@CS4231_LINE_LEFT_OUTPUT = common dso_local global i32 0, align 4
@CS4231_LINE_RIGHT_OUTPUT = common dso_local global i32 0, align 4
@CS4231_LEFT_MIC_INPUT = common dso_local global i32 0, align 4
@CS4231_RIGHT_MIC_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Synth Playback Switch\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Aux Playback Volume\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Synth Playback Volume\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CD Playback Switch\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CD Playback Volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wss*)* @snd_interwave_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interwave_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  %6 = alloca %struct.snd_ctl_elem_id, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %9 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %10 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 12)
  %13 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 12)
  %14 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** @snd_interwave_controls, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = load i32*, i32** @snd_interwave_controls, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %29 = call i32 @snd_ctl_new1(i32* %27, %struct.snd_wss* %28)
  %30 = call i32 @snd_ctl_add(%struct.snd_card* %23, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %40 = load i32, i32* @CS4231_LINE_LEFT_OUTPUT, align 4
  %41 = call i32 @snd_wss_out(%struct.snd_wss* %39, i32 %40, i32 159)
  %42 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %43 = load i32, i32* @CS4231_LINE_RIGHT_OUTPUT, align 4
  %44 = call i32 @snd_wss_out(%struct.snd_wss* %42, i32 %43, i32 159)
  %45 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %46 = load i32, i32* @CS4231_LEFT_MIC_INPUT, align 4
  %47 = call i32 @snd_wss_out(%struct.snd_wss* %45, i32 %46, i32 159)
  %48 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %49 = load i32, i32* @CS4231_RIGHT_MIC_INPUT, align 4
  %50 = call i32 @snd_wss_out(%struct.snd_wss* %48, i32 %49, i32 159)
  %51 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %58 = call i32 @snd_ctl_rename_id(%struct.snd_card* %57, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %58, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %100

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcpy(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %70 = call i32 @snd_ctl_rename_id(%struct.snd_card* %69, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %100

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strcpy(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %83 = call i32 @snd_ctl_rename_id(%struct.snd_card* %82, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %83, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %100

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strcpy(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %91 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcpy(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %95 = call i32 @snd_ctl_rename_id(%struct.snd_card* %94, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %95, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %97, %85, %72, %60, %32
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_wss*) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_rename_id(%struct.snd_card*, %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
