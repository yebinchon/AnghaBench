; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_map_reg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_map_reg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16 }

@snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper = internal constant [18 x %struct.anon] [%struct.anon { i16 147 }, %struct.anon { i16 133 }, %struct.anon { i16 139 }, %struct.anon { i16 135 }, %struct.anon { i16 141 }, %struct.anon { i16 134 }, %struct.anon { i16 136 }, %struct.anon { i16 137 }, %struct.anon { i16 138 }, %struct.anon { i16 140 }, %struct.anon { i16 129 }, %struct.anon { i16 142 }, %struct.anon { i16 128 }, %struct.anon { i16 132 }, %struct.anon { i16 131 }, %struct.anon { i16 146 }, %struct.anon { i16 143 }, %struct.anon { i16 144 }], align 16
@AZF_AC97_REG_UNSUPPORTED = common dso_local global i16 0, align 2
@AC97_3D_CONTROL = common dso_local global i16 0, align 2
@AZF_REG_MASK = common dso_local global i16 0, align 2
@AZF_AC97_REG_REAL_IO_RW = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16)* @snd_azf3328_mixer_ac97_map_reg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_azf3328_mixer_ac97_map_reg_idx(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* @AZF_AC97_REG_UNSUPPORTED, align 2
  store i16 %5, i16* %3, align 2
  %6 = load i16, i16* %2, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @AC97_3D_CONTROL, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load i16, i16* %2, align 2
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %13, 2
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %4, align 2
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds [18 x %struct.anon], [18 x %struct.anon]* @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %3, align 2
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @AZF_REG_MASK, align 2
  %24 = zext i16 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %11
  %29 = load i16, i16* @AZF_AC97_REG_REAL_IO_RW, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  br label %35

35:                                               ; preds = %28, %11
  br label %44

36:                                               ; preds = %1
  %37 = load i16, i16* %2, align 2
  %38 = zext i16 %37 to i32
  switch i32 %38, label %43 [
    i32 150, label %39
    i32 152, label %40
    i32 151, label %41
    i32 149, label %42
    i32 148, label %42
  ]

39:                                               ; preds = %36
  store i16 146, i16* %3, align 2
  br label %43

40:                                               ; preds = %36
  store i16 147, i16* %3, align 2
  br label %43

41:                                               ; preds = %36
  store i16 146, i16* %3, align 2
  br label %43

42:                                               ; preds = %36, %36
  store i16 147, i16* %3, align 2
  br label %43

43:                                               ; preds = %36, %42, %41, %40, %39
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i16, i16* %3, align 2
  ret i16 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
