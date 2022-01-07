; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_spdif_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_spdif_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_CS_RATE_SHIFT = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @oxygen_spdif_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_spdif_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 132, label %5
    i32 131, label %9
    i32 130, label %17
    i32 129, label %20
    i32 128, label %24
    i32 134, label %28
    i32 133, label %32
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %7 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %8 = shl i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %11 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %15 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %19 = shl i32 11, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  %22 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %26 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  %30 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %34 = load i32, i32* @OXYGEN_SPDIF_CS_RATE_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %28, %24, %20, %17, %13, %9, %5
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
