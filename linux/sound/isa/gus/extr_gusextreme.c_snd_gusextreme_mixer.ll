; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Aux Playback Volume\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Synth Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Synth Playback Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_gusextreme_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusextreme_mixer(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_ctl_elem_id, align 4
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = call i32 @memset(%struct.snd_ctl_elem_id* %4, i32 0, i32 8)
  %8 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 8)
  %9 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %4, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %19 = call i32 @snd_ctl_rename_id(%struct.snd_card* %18, %struct.snd_ctl_elem_id* %4, %struct.snd_ctl_elem_id* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %32 = call i32 @snd_ctl_rename_id(%struct.snd_card* %31, %struct.snd_ctl_elem_id* %4, %struct.snd_ctl_elem_id* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
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
