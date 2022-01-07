; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_get_phys_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_get_phys_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw_phys_grp = type { i64 }

@get_phys_name.ch_type = internal constant [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"S/PDIF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ADAT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"S/PDIF or ADAT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Mirroring\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Headphones\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Guitar\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Pirzo Guitar\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Guitar String\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_efw_phys_grp*, i32)* @get_phys_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_phys_name(%struct.snd_efw_phys_grp* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_efw_phys_grp*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_efw_phys_grp* %0, %struct.snd_efw_phys_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_efw_phys_grp*, %struct.snd_efw_phys_grp** %4, align 8
  %7 = getelementptr inbounds %struct.snd_efw_phys_grp, %struct.snd_efw_phys_grp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @get_phys_name.ch_type, i64 0, i64 0))
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.snd_efw_phys_grp*, %struct.snd_efw_phys_grp** %4, align 8
  %13 = getelementptr inbounds %struct.snd_efw_phys_grp, %struct.snd_efw_phys_grp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [10 x i8*], [10 x i8*]* @get_phys_name.ch_type, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %20, %11
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
