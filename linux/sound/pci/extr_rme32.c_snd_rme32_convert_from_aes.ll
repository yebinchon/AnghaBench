; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_convert_from_aes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_convert_from_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aes_iec958 = type { i32* }

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@RME32_WCR_PRO = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@RME32_WCR_EMP = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_aes_iec958*)* @snd_rme32_convert_from_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_convert_from_aes(%struct.snd_aes_iec958* %0) #0 {
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
  %13 = load i32, i32* @RME32_WCR_PRO, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @RME32_WCR_PRO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %25 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @RME32_WCR_EMP, align 4
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %15
  %40 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %41 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @RME32_WCR_EMP, align 4
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
