; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_convert_from_aes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_convert_from_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aes_iec958 = type { i32* }

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@RME96_WCR_PRO = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@RME96_WCR_DOLBY = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@RME96_WCR_EMP = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_aes_iec958*)* @snd_rme96_convert_from_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_convert_from_aes(%struct.snd_aes_iec958* %0) #0 {
  %2 = alloca %struct.snd_aes_iec958*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_aes_iec958* %0, %struct.snd_aes_iec958** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %5 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @RME96_WCR_PRO, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %20 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @RME96_WCR_DOLBY, align 4
  br label %30

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @RME96_WCR_PRO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %40 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @RME96_WCR_EMP, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %70

54:                                               ; preds = %30
  %55 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %56 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @RME96_WCR_EMP, align 4
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %50
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
