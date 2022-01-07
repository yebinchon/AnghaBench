; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_beep_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_beep_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hda_beep = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @snd_hda_beep_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_beep_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_beep*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.hda_beep* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.hda_beep* %12, %struct.hda_beep** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %37 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1000, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %4, %18
  %20 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %21 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @beep_linear_tone(%struct.hda_beep* %25, i32 %26)
  %28 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %29 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @beep_standard_tone(%struct.hda_beep* %31, i32 %32)
  %34 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %35 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %38

37:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

38:                                               ; preds = %36
  %39 = load %struct.hda_beep*, %struct.hda_beep** %10, align 8
  %40 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %39, i32 0, i32 0
  %41 = call i32 @schedule_work(i32* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.hda_beep* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @beep_linear_tone(%struct.hda_beep*, i32) #1

declare dso_local i32 @beep_standard_tone(%struct.hda_beep*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
