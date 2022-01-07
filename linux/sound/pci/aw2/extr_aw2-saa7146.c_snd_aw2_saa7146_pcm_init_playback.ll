; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_pcm_init_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_pcm_init_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aw2_saa7146 = type { i32 }

@PageA2_out = common dso_local global i32 0, align 4
@BaseA2_out = common dso_local global i32 0, align 4
@ProtA2_out = common dso_local global i32 0, align 4
@PageA1_out = common dso_local global i32 0, align 4
@BaseA1_out = common dso_local global i32 0, align 4
@ProtA1_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"aw2: snd_aw2_saa7146_pcm_init_playback: Substream number is not 0 or 1 -> not managed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_aw2_saa7146_pcm_init_playback(%struct.snd_aw2_saa7146* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.snd_aw2_saa7146*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.snd_aw2_saa7146* %0, %struct.snd_aw2_saa7146** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @snd_aw2_saa7146_get_limit(i64 %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = shl i64 %15, 4
  %17 = load i64, i64* %11, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* @PageA2_out, align 4
  %24 = call i32 @WRITEREG(i64 %22, i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @BaseA2_out, align 4
  %27 = call i32 @WRITEREG(i64 %25, i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %28, %29
  %31 = load i32, i32* @ProtA2_out, align 4
  %32 = call i32 @WRITEREG(i64 %30, i32 %31)
  br label %51

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @PageA1_out, align 4
  %39 = call i32 @WRITEREG(i64 %37, i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @BaseA1_out, align 4
  %42 = call i32 @WRITEREG(i64 %40, i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @ProtA1_out, align 4
  %47 = call i32 @WRITEREG(i64 %45, i32 %46)
  br label %50

48:                                               ; preds = %33
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %36
  br label %51

51:                                               ; preds = %50, %21
  ret void
}

declare dso_local i64 @snd_aw2_saa7146_get_limit(i64) #1

declare dso_local i32 @WRITEREG(i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
