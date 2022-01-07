; ModuleID = '/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_harmony = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Harmony Gain control interface\00", align 1
@HARMONY_CONTROLS = common dso_local global i32 0, align 4
@snd_harmony_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_harmony*)* @snd_harmony_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_mixer_init(%struct.snd_harmony* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_harmony*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_harmony* %0, %struct.snd_harmony** %3, align 8
  %7 = load %struct.snd_harmony*, %struct.snd_harmony** %3, align 8
  %8 = icmp ne %struct.snd_harmony* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.snd_harmony*, %struct.snd_harmony** %3, align 8
  %18 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %17, i32 0, i32 0
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  store %struct.snd_card* %19, %struct.snd_card** %4, align 8
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %42, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HARMONY_CONTROLS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %30 = load i32*, i32** @snd_harmony_controls, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.snd_harmony*, %struct.snd_harmony** %3, align 8
  %35 = call i32 @snd_ctl_new1(i32* %33, %struct.snd_harmony* %34)
  %36 = call i32 @snd_ctl_add(%struct.snd_card* %29, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.snd_harmony*, %struct.snd_harmony** %3, align 8
  %47 = call i32 @snd_harmony_mixer_reset(%struct.snd_harmony* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %39, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_harmony*) #1

declare dso_local i32 @snd_harmony_mixer_reset(%struct.snd_harmony*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
