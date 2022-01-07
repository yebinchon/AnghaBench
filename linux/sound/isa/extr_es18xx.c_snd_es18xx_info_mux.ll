; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_info_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_info_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.snd_es18xx = type { i32 }

@snd_es18xx_info_mux.texts5Source = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@snd_es18xx_info_mux.texts8Source = internal constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"Mic Master\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AOUT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Mic1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_es18xx_info_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_info_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %6, align 8
  %9 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %10 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 6248, label %12
    i32 6264, label %12
    i32 6279, label %15
    i32 6280, label %15
    i32 6249, label %18
    i32 6265, label %18
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %14 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %13, i32 1, i32 4, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_es18xx_info_mux.texts5Source, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2, %2
  %16 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %17 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %16, i32 1, i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_es18xx_info_mux.texts5Source, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2, %2
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %20 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %19, i32 1, i32 8, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @snd_es18xx_info_mux.texts8Source, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %18, %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
