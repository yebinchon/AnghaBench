; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_lookup_fs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_lookup_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADAU1977_SAI_CTRL0_FS_8000_12000 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FS_16000_24000 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FS_32000_48000 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FS_64000_96000 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FS_128000_192000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adau1977_lookup_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_lookup_fs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 8000
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, 12000
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_8000_12000, align 4
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp uge i32 %12, 16000
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp ule i32 %15, 24000
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_16000_24000, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %3, align 4
  %21 = icmp uge i32 %20, 32000
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp ule i32 %23, 48000
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_32000_48000, align 4
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %3, align 4
  %29 = icmp uge i32 %28, 64000
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp ule i32 %31, 96000
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_64000_96000, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp uge i32 %36, 128000
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp ule i32 %39, 192000
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_128000_192000, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %41, %33, %25, %17, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
