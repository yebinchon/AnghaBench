; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_beep_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_beep_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs42l56_private = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Beep event %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @cs42l56_beep_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_beep_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.cs42l56_private*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = call %struct.snd_soc_component* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %10, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %15 = call %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs42l56_private* %15, %struct.cs42l56_private** %11, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %28
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 261, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %4, %27
  br label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %37

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %33 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %35 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %34, i32 0, i32 1
  %36 = call i32 @schedule_work(i32* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.snd_soc_component* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
