; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_hw_playback_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_hw_playback_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32 }

@g_hr222_p_level = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AKM_LEFT_LEVEL_CMD = common dso_local global i16 0, align 2
@AKM_RIGHT_LEVEL_CMD = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32)* @hr222_set_hw_playback_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hr222_set_hw_playback_level(%struct.pcxhr_mgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i64*, i64** @g_hr222_p_level, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %11, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i16, i16* @AKM_LEFT_LEVEL_CMD, align 2
  store i16 %26, i16* %8, align 2
  br label %29

27:                                               ; preds = %22
  %28 = load i16, i16* @AKM_RIGHT_LEVEL_CMD, align 2
  store i16 %28, i16* %8, align 2
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i64*, i64** @g_hr222_p_level, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i16
  store i16 %38, i16* %8, align 2
  %39 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %40 = load i16, i16* %8, align 2
  %41 = call i32 @hr222_config_akm(%struct.pcxhr_mgr* %39, i16 zeroext %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @hr222_config_akm(%struct.pcxhr_mgr*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
