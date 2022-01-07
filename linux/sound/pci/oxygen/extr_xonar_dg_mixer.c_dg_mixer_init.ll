; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_dg_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_dg_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@dg_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @dg_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dg_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = call i32 @output_select_apply(%struct.oxygen* %6)
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = call i32 @input_source_apply(%struct.oxygen* %8)
  %10 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %11 = call i32 @oxygen_update_dac_routing(%struct.oxygen* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @dg_controls, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @dg_controls, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %26 = call i32 @snd_ctl_new1(i32* %24, %struct.oxygen* %25)
  %27 = call i32 @snd_ctl_add(i32 %20, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @output_select_apply(%struct.oxygen*) #1

declare dso_local i32 @input_source_apply(%struct.oxygen*) #1

declare dso_local i32 @oxygen_update_dac_routing(%struct.oxygen*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
