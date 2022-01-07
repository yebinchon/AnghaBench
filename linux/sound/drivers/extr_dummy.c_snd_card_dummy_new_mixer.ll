; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_card_dummy_new_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_card_dummy_new_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dummy = type { i32, %struct.snd_kcontrol*, %struct.snd_kcontrol*, i32, %struct.snd_card* }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Dummy Mixer\00", align 1
@snd_dummy_controls = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"CD Volume\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CD Capture Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dummy*)* @snd_card_dummy_new_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_dummy_new_mixer(%struct.snd_dummy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dummy*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dummy* %0, %struct.snd_dummy** %3, align 8
  %8 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %9 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %8, i32 0, i32 4
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %4, align 8
  %11 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %12 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %15 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %19 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** @snd_dummy_controls, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load i32*, i32** @snd_dummy_controls, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %31 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %29, %struct.snd_dummy* %30)
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %5, align 8
  %32 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %34 = call i32 @snd_ctl_add(%struct.snd_card* %32, %struct.snd_kcontrol* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %25
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcmp(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %48 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %49 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %48, i32 0, i32 2
  store %struct.snd_kcontrol* %47, %struct.snd_kcontrol** %49, align 8
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %52 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %59 = load %struct.snd_dummy*, %struct.snd_dummy** %3, align 8
  %60 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %59, i32 0, i32 1
  store %struct.snd_kcontrol* %58, %struct.snd_kcontrol** %60, align 8
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_dummy*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
