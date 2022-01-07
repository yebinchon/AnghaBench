; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_convert_from_spdif_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_convert_from_spdif_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@AC_DIG1_PROFESSIONAL = common dso_local global i16 0, align 2
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@AC_DIG1_NONAUDIO = common dso_local global i16 0, align 2
@IEC958_AES0_PRO_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@AC_DIG1_EMPHASIS = common dso_local global i16 0, align 2
@IEC958_AES0_CON_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@AC_DIG1_COPYRIGHT = common dso_local global i16 0, align 2
@IEC958_AES1_CON_ORIGINAL = common dso_local global i32 0, align 4
@AC_DIG1_LEVEL = common dso_local global i16 0, align 2
@IEC958_AES1_CON_CATEGORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @convert_from_spdif_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @convert_from_spdif_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  store i16 0, i16* %3, align 2
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i16, i16* @AC_DIG1_PROFESSIONAL, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %12, %10
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %3, align 2
  br label %15

15:                                               ; preds = %8, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i16, i16* @AC_DIG1_NONAUDIO, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %3, align 2
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i16, i16* @AC_DIG1_EMPHASIS, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %3, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %3, align 2
  br label %45

45:                                               ; preds = %38, %32
  br label %93

46:                                               ; preds = %27
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @IEC958_AES0_CON_EMPHASIS, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i16, i16* @AC_DIG1_EMPHASIS, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %3, align 2
  %56 = zext i16 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %3, align 2
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i16, i16* @AC_DIG1_COPYRIGHT, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* %3, align 2
  %68 = zext i16 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %3, align 2
  br label %71

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @IEC958_AES1_CON_ORIGINAL, align 4
  %74 = shl i32 %73, 8
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i16, i16* @AC_DIG1_LEVEL, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* %3, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %3, align 2
  br label %84

84:                                               ; preds = %77, %71
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @IEC958_AES1_CON_CATEGORY, align 4
  %87 = shl i32 %86, 8
  %88 = and i32 %85, %87
  %89 = load i16, i16* %3, align 2
  %90 = zext i16 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %3, align 2
  br label %93

93:                                               ; preds = %84, %45
  %94 = load i16, i16* %3, align 2
  ret i16 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
