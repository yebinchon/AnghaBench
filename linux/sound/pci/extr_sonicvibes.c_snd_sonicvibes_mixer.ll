; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"S3 SonicVibes\00", align 1
@snd_sonicvibes_controls = common dso_local global i32* null, align 8
@snd_sonicvibes_master_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sonicvibes*)* @snd_sonicvibes_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_mixer(%struct.sonicvibes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sonicvibes*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sonicvibes* %0, %struct.sonicvibes** %3, align 8
  %8 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %9 = icmp ne %struct.sonicvibes* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %12 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %11, i32 0, i32 0
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  %14 = icmp ne %struct.snd_card* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %26 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %25, i32 0, i32 0
  %27 = load %struct.snd_card*, %struct.snd_card** %26, align 8
  store %struct.snd_card* %27, %struct.snd_card** %4, align 8
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %56, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** @snd_sonicvibes_controls, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %39 = load i32*, i32** @snd_sonicvibes_controls, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %44 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %42, %struct.sonicvibes* %43)
  store %struct.snd_kcontrol* %44, %struct.snd_kcontrol** %5, align 8
  %45 = call i32 @snd_ctl_add(%struct.snd_card* %38, %struct.snd_kcontrol* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %55 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %49, %49
  %52 = load i32, i32* @snd_sonicvibes_master_free, align 4
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %47, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.sonicvibes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
