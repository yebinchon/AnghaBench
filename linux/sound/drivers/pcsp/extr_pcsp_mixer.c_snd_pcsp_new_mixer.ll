; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_mixer.c_snd_pcsp_new_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_mixer.c_snd_pcsp_new_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcsp = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@snd_pcsp_controls_pcm = common dso_local global i32 0, align 4
@snd_pcsp_controls_spkr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PC-Speaker\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcsp_new_mixer(%struct.snd_pcsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  store %struct.snd_pcsp* %0, %struct.snd_pcsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcsp*, %struct.snd_pcsp** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_pcsp*, %struct.snd_pcsp** %4, align 8
  %15 = load i32, i32* @snd_pcsp_controls_pcm, align 4
  %16 = load i32, i32* @snd_pcsp_controls_pcm, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @snd_pcsp_ctls_add(%struct.snd_pcsp* %14, i32 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.snd_pcsp*, %struct.snd_pcsp** %4, align 8
  %26 = load i32, i32* @snd_pcsp_controls_spkr, align 4
  %27 = load i32, i32* @snd_pcsp_controls_spkr, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @snd_pcsp_ctls_add(%struct.snd_pcsp* %25, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %36 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %32, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snd_pcsp_ctls_add(%struct.snd_pcsp*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
