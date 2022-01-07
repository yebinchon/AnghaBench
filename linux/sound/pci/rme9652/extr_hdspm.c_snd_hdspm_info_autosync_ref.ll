; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_info_autosync_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_info_autosync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hdspm = type { i64 }

@AES32 = common dso_local global i64 0, align 8
@snd_hdspm_info_autosync_ref.texts = internal constant [12 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"WordClock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AES1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AES2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AES3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AES4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"AES5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AES6\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"AES7\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"AES8\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TCO\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Sync In\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@MADI = common dso_local global i64 0, align 8
@snd_hdspm_info_autosync_ref.texts.12 = internal constant [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"MADI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_hdspm_info_autosync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_info_autosync_ref(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hdspm*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.hdspm* %7, %struct.hdspm** %5, align 8
  %8 = load i64, i64* @AES32, align 8
  %9 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %15 = call i32 @ENUMERATED_CTL_INFO(%struct.snd_ctl_elem_info* %14, i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @snd_hdspm_info_autosync_ref.texts, i64 0, i64 0))
  br label %26

16:                                               ; preds = %2
  %17 = load i64, i64* @MADI, align 8
  %18 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %19 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %24 = call i32 @ENUMERATED_CTL_INFO(%struct.snd_ctl_elem_info* %23, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_hdspm_info_autosync_ref.texts.12, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %13
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ENUMERATED_CTL_INFO(%struct.snd_ctl_elem_info*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
