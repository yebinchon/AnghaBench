; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_sc6000.c_snd_sc6000_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_sc6000.c_snd_sc6000_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i8* }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"FM Playback Switch\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Aux Playback Volume\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"FM Playback Volume\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CD Playback Switch\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CD Playback Volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wss*)* @snd_sc6000_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sc6000_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 8
  %6 = alloca %struct.snd_ctl_elem_id, align 8
  %7 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %8 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %9 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %4, align 8
  %11 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 16)
  %12 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 16)
  %13 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcpy(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = call i32 @snd_ctl_rename_id(%struct.snd_card* %23, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %70

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %37 = call i32 @snd_ctl_rename_id(%struct.snd_card* %36, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcpy(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %51 = call i32 @snd_ctl_rename_id(%struct.snd_card* %50, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcpy(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %64 = call i32 @snd_ctl_rename_id(%struct.snd_card* %63, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %54, %40, %27
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_rename_id(%struct.snd_card*, %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
