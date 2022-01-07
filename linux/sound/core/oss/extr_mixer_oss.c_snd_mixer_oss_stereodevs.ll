; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_stereodevs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_stereodevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss* }
%struct.snd_mixer_oss = type { %struct.snd_mixer_oss_slot* }
%struct.snd_mixer_oss_slot = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*)* @snd_mixer_oss_stereodevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_stereodevs(%struct.snd_mixer_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca %struct.snd_mixer_oss_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %3, align 8
  %8 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %9 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %8, i32 0, i32 0
  %10 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %9, align 8
  store %struct.snd_mixer_oss* %10, %struct.snd_mixer_oss** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %12 = icmp eq %struct.snd_mixer_oss* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 31
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %22 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %21, i32 0, i32 0
  %23 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %23, i64 %25
  store %struct.snd_mixer_oss_slot* %26, %struct.snd_mixer_oss_slot** %5, align 8
  %27 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %28 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %33 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %31, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
