; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_create_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_create_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@PLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Analog Playback Volume\00", align 1
@CAPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Analog Capture Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Digital Capture Volume\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Digital Playback Volume\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_create_mixer(%struct.lola* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lola*, align 8
  %4 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  %5 = load %struct.lola*, %struct.lola** %3, align 8
  %6 = load i32, i32* @PLAY, align 4
  %7 = call i32 @create_analog_mixer(%struct.lola* %5, i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.lola*, %struct.lola** %3, align 8
  %14 = load i32, i32* @CAPT, align 4
  %15 = call i32 @create_analog_mixer(%struct.lola* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.lola*, %struct.lola** %3, align 8
  %22 = call i32 @create_input_src_mixer(%struct.lola* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %20
  %28 = load %struct.lola*, %struct.lola** %3, align 8
  %29 = load %struct.lola*, %struct.lola** %3, align 8
  %30 = getelementptr inbounds %struct.lola, %struct.lola* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @create_src_gain_mixer(%struct.lola* %28, i32 %32, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %27
  %39 = load %struct.lola*, %struct.lola** %3, align 8
  %40 = load %struct.lola*, %struct.lola** %3, align 8
  %41 = getelementptr inbounds %struct.lola, %struct.lola* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lola*, %struct.lola** %3, align 8
  %45 = getelementptr inbounds %struct.lola, %struct.lola* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @create_src_gain_mixer(%struct.lola* %39, i32 %43, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %38
  %54 = load %struct.lola*, %struct.lola** %3, align 8
  %55 = call i32 @init_mixer_values(%struct.lola* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %51, %36, %25, %18, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @create_analog_mixer(%struct.lola*, i32, i8*) #1

declare dso_local i32 @create_input_src_mixer(%struct.lola*) #1

declare dso_local i32 @create_src_gain_mixer(%struct.lola*, i32, i32, i8*) #1

declare dso_local i32 @init_mixer_values(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
