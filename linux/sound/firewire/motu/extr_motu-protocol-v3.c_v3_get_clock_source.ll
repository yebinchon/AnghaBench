; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_v3_get_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_v3_get_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32 }

@V3_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V3_CLOCK_SOURCE_MASK = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_INTERNAL = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX = common dso_local global i32 0, align 4
@V3_OPT_IFACE_MODE_OFFSET = common dso_local global i32 0, align 4
@V3_NO_ADAT_OPT_IN_IFACE_A = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT_A = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT_A = common dso_local global i32 0, align 4
@V3_NO_ADAT_OPT_IN_IFACE_B = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT_B = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT_B = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32*)* @v3_get_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_get_clock_source(%struct.snd_motu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %11 = load i32, i32* @V3_CLOCK_STATUS_OFFSET, align 4
  %12 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %10, i32 %11, i32* %6, i32 4)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @V3_CLOCK_SOURCE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_INTERNAL, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %90

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %89

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %88

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 24
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 25
  br i1 %45, label %46, label %84

46:                                               ; preds = %43, %40
  %47 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %48 = load i32, i32* @V3_OPT_IFACE_MODE_OFFSET, align 4
  %49 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %47, i32 %48, i32* %6, i32 4)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %91

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 24
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @V3_NO_ADAT_OPT_IN_IFACE_A, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT_A, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT_A, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %83

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @V3_NO_ADAT_OPT_IN_IFACE_B, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT_B, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT_B, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %70
  br label %87

84:                                               ; preds = %43
  %85 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_UNKNOWN, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %37
  br label %89

89:                                               ; preds = %88, %31
  br label %90

90:                                               ; preds = %89, %25
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %52, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
