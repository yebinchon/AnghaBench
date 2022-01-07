; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_create_switches.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_create_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.rme96 = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32 }

@snd_rme96_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.rme96*)* @snd_rme96_create_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_create_switches(%struct.snd_card* %0, %struct.rme96* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.rme96*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.rme96* %1, %struct.rme96** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 7
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %14 = load i32*, i32** @snd_rme96_controls, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load %struct.rme96*, %struct.rme96** %5, align 8
  %19 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %17, %struct.rme96* %18)
  store %struct.snd_kcontrol* %19, %struct.snd_kcontrol** %8, align 8
  %20 = call i32 @snd_ctl_add(%struct.snd_card* %13, %struct.snd_kcontrol* %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %29 = load %struct.rme96*, %struct.rme96** %5, align 8
  %30 = getelementptr inbounds %struct.rme96, %struct.rme96* %29, i32 0, i32 0
  store %struct.snd_kcontrol* %28, %struct.snd_kcontrol** %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.rme96*, %struct.rme96** %5, align 8
  %37 = call i64 @RME96_HAS_ANALOG_OUT(%struct.rme96* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  store i32 7, i32* %6, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = load i32*, i32** @snd_rme96_controls, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.rme96*, %struct.rme96** %5, align 8
  %50 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %48, %struct.rme96* %49)
  %51 = call i32 @snd_ctl_add(%struct.snd_card* %44, %struct.snd_kcontrol* %50)
  store i32 %51, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %35
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %53, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.rme96*) #1

declare dso_local i64 @RME96_HAS_ANALOG_OUT(%struct.rme96*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
