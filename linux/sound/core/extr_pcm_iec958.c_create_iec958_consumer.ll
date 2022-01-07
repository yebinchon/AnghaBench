; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_iec958.c_create_iec958_consumer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_iec958.c_create_iec958_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_20_16 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_22_18 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_MAX_WORDLEN_24 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_24_20 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_NONE = common dso_local global i32 0, align 4
@IEC958_AES1_CON_GENERAL = common dso_local global i32 0, align 4
@IEC958_AES2_CON_SOURCE_UNSPEC = common dso_local global i32 0, align 4
@IEC958_AES2_CON_CHANNEL_UNSPEC = common dso_local global i32 0, align 4
@IEC958_AES3_CON_CLOCK_1000PPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i64)* @create_iec958_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_iec958_consumer(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %88

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %33 [
    i32 32000, label %19
    i32 44100, label %21
    i32 48000, label %23
    i32 88200, label %25
    i32 96000, label %27
    i32 176400, label %29
    i32 192000, label %31
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  store i32 %20, i32* %10, align 4
  br label %36

21:                                               ; preds = %17
  %22 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  store i32 %22, i32* %10, align 4
  br label %36

23:                                               ; preds = %17
  %24 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  store i32 %24, i32* %10, align 4
  br label %36

25:                                               ; preds = %17
  %26 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  store i32 %26, i32* %10, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  store i32 %28, i32* %10, align 4
  br label %36

29:                                               ; preds = %17
  %30 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  store i32 %30, i32* %10, align 4
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  store i32 %32, i32* %10, align 4
  br label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %88

36:                                               ; preds = %31, %29, %27, %25, %23, %21, %19
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %37, 4
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %53 [
    i32 16, label %41
    i32 18, label %43
    i32 20, label %45
    i32 24, label %49
    i32 32, label %49
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @IEC958_AES4_CON_WORDLEN_20_16, align 4
  store i32 %42, i32* %11, align 4
  br label %56

43:                                               ; preds = %39
  %44 = load i32, i32* @IEC958_AES4_CON_WORDLEN_22_18, align 4
  store i32 %44, i32* %11, align 4
  br label %56

45:                                               ; preds = %39
  %46 = load i32, i32* @IEC958_AES4_CON_WORDLEN_20_16, align 4
  %47 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %11, align 4
  br label %56

49:                                               ; preds = %39, %39
  %50 = load i32, i32* @IEC958_AES4_CON_WORDLEN_24_20, align 4
  %51 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %88

56:                                               ; preds = %49, %45, %43, %41
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memset(i32* %58, i32 0, i64 %59)
  %61 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %62 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_NONE, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IEC958_AES1_CON_GENERAL, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @IEC958_AES2_CON_SOURCE_UNSPEC, align 4
  %70 = load i32, i32* @IEC958_AES2_CON_CHANNEL_UNSPEC, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @IEC958_AES3_CON_CLOCK_1000PPM, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %76, i32* %78, align 4
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %79, 4
  br i1 %80, label %81, label %85

81:                                               ; preds = %57
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %57
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %53, %33, %14
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
