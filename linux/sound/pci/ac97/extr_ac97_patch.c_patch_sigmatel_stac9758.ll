; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9758.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9758.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32, i32*, i64 }

@patch_sigmatel_stac9758.regs = internal global [4 x i16] [i16 129, i16 130, i16 131, i16 128], align 2
@patch_sigmatel_stac9758.def_regs = internal global [4 x i16] [i16 -10348, i16 8193, i16 513, i16 64], align 2
@patch_sigmatel_stac9758.m675_regs = internal global [4 x i16] [i16 -912, i16 8450, i16 515, i16 65], align 2
@patch_sigmatel_stac9758_ops = common dso_local global i32 0, align 4
@AC97_INT_PAGING = common dso_local global i32 0, align 4
@AC97_PAGE_MASK = common dso_local global i32 0, align 4
@AC97_PAGE_VENDOR = common dso_local global i32 0, align 4
@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_sigmatel_stac9758 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_sigmatel_stac9758(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @patch_sigmatel_stac9758.def_regs, i64 0, i64 0), i16** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 4219
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1537
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @patch_sigmatel_stac9758.m675_regs, i64 0, i64 0), i16** %3, align 8
  br label %20

20:                                               ; preds = %19, %14, %9, %1
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 3
  store i32* @patch_sigmatel_stac9758_ops, i32** %22, align 8
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %24 = load i32, i32* @AC97_INT_PAGING, align 4
  %25 = load i32, i32* @AC97_PAGE_MASK, align 4
  %26 = load i32, i32* @AC97_PAGE_VENDOR, align 4
  %27 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %23, i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i16], [4 x i16]* @patch_sigmatel_stac9758.regs, i64 0, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = load i16*, i16** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %32, i16 zeroext %36, i16 zeroext %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  ret i32 0
}

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
