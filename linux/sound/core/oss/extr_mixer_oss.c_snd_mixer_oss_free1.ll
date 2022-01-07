; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_free1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { %struct.snd_mixer_oss_slot*, %struct.snd_card* }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_slot*)* }
%struct.snd_card = type { %struct.snd_mixer_oss* }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_OSS_MAX_MIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @snd_mixer_oss_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_free1(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.snd_mixer_oss*
  store %struct.snd_mixer_oss* %9, %struct.snd_mixer_oss** %4, align 8
  %10 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %11 = icmp ne %struct.snd_mixer_oss* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %15 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %14, i32 0, i32 1
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %5, align 8
  %17 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %19, align 8
  %21 = icmp ne %struct.snd_mixer_oss* %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %59

28:                                               ; preds = %13
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  store %struct.snd_mixer_oss* null, %struct.snd_mixer_oss** %30, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %53, %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SNDRV_OSS_MAX_MIXERS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %37 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %36, i32 0, i32 0
  %38 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %38, i64 %40
  store %struct.snd_mixer_oss_slot* %41, %struct.snd_mixer_oss_slot** %7, align 8
  %42 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %43 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %42, i32 0, i32 0
  %44 = load i32 (%struct.snd_mixer_oss_slot*)*, i32 (%struct.snd_mixer_oss_slot*)** %43, align 8
  %45 = icmp ne i32 (%struct.snd_mixer_oss_slot*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %48 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %47, i32 0, i32 0
  %49 = load i32 (%struct.snd_mixer_oss_slot*)*, i32 (%struct.snd_mixer_oss_slot*)** %48, align 8
  %50 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %51 = call i32 %49(%struct.snd_mixer_oss_slot* %50)
  br label %52

52:                                               ; preds = %46, %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %58 = call i32 @kfree(%struct.snd_mixer_oss* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %25, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.snd_mixer_oss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
