; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_snd_vortex_peaks_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_snd_vortex_peaks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"peak count error 20 != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_vortex_peaks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_peaks_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i32], align 16
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.TYPE_10__* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %14 = call i32 @vortex_Eqlzr_GetAllPeaks(%struct.TYPE_10__* %12, i32* %13, i32* %8)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 20
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %33, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %26

45:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_10__* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @vortex_Eqlzr_GetAllPeaks(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
