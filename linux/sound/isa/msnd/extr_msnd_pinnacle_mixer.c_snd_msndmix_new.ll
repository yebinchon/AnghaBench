; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.snd_msnd* }
%struct.snd_msnd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MSND Pinnacle Mixer\00", align 1
@snd_msnd_controls = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_msndmix_new(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_msnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 1
  %9 = load %struct.snd_msnd*, %struct.snd_msnd** %8, align 8
  store %struct.snd_msnd* %9, %struct.snd_msnd** %4, align 8
  %10 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %11 = icmp ne %struct.snd_msnd* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %21 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %46, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* @snd_msnd_controls, align 8
  %30 = call i32 @ARRAY_SIZE(i64 %29)
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %34 = load i64, i64* @snd_msnd_controls, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %39 = call i32 @snd_ctl_new1(i64 %37, %struct.snd_msnd* %38)
  %40 = call i32 @snd_ctl_add(%struct.snd_card* %33, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %27

49:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i64, %struct.snd_msnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
