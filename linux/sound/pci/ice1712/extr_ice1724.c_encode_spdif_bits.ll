; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_encode_spdif_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_encode_spdif_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aes_iec958 = type { i32* }

@IEC958_AES0_PRO_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_aes_iec958*)* @encode_spdif_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_spdif_bits(%struct.snd_aes_iec958* %0) #0 {
  %2 = alloca %struct.snd_aes_iec958*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_aes_iec958* %0, %struct.snd_aes_iec958** %2, align 8
  %5 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %6 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 3
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %1
  %15 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %16 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 8
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %29 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, 15
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %51 [
    i32 2, label %39
    i32 3, label %42
    i32 10, label %45
    i32 11, label %48
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, 20480
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 24576
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 16384
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, 28672
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %37, %48, %45, %42, %39
  br label %68

52:                                               ; preds = %27
  %53 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %54 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %64 [
    i32 128, label %60
    i32 129, label %61
  ]

60:                                               ; preds = %52
  br label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, 12288
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, 8192
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %61, %60
  br label %68

68:                                               ; preds = %67, %51
  br label %110

69:                                               ; preds = %1
  %70 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %71 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %79 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IEC958_AES0_CON_EMPHASIS, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, 8
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %92 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 63
  %97 = shl i32 %96, 4
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %2, align 8
  %101 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %106 = and i32 %104, %105
  %107 = shl i32 %106, 12
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %90, %68
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
