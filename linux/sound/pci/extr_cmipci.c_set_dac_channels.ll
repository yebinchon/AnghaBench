; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_set_dac_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_set_dac_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i64 }
%struct.cmipci_pcm = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@CM_NXCHG = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_XCHGDAC = common dso_local global i32 0, align 4
@CM_REG_EXT_MISC = common dso_local global i32 0, align 4
@CM_CHB3D8C = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_CHB3D5C = common dso_local global i32 0, align 4
@CM_CHB3D6C = common dso_local global i32 0, align 4
@CM_CHB3D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.cmipci_pcm*, i32)* @set_dac_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dac_channels(%struct.cmipci* %0, %struct.cmipci_pcm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %12 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %17 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %113

23:                                               ; preds = %15
  %24 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %113

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %34 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %39 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %45 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %46 = load i32, i32* @CM_NXCHG, align 4
  %47 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %44, i32 %45, i32 %46)
  %48 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %49 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %50 = load i32, i32* @CM_XCHGDAC, align 4
  %51 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %48, i32 %49, i32 %50)
  br label %61

52:                                               ; preds = %37
  %53 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %54 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %55 = load i32, i32* @CM_NXCHG, align 4
  %56 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %53, i32 %54, i32 %55)
  %57 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %58 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %59 = load i32, i32* @CM_XCHGDAC, align 4
  %60 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %66 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %67 = load i32, i32* @CM_CHB3D8C, align 4
  %68 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %65, i32 %66, i32 %67)
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %71 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %72 = load i32, i32* @CM_CHB3D8C, align 4
  %73 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %79 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %80 = load i32, i32* @CM_CHB3D5C, align 4
  %81 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %78, i32 %79, i32 %80)
  %82 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %83 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %84 = load i32, i32* @CM_CHB3D6C, align 4
  %85 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %82, i32 %83, i32 %84)
  br label %95

86:                                               ; preds = %74
  %87 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %88 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %89 = load i32, i32* @CM_CHB3D5C, align 4
  %90 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %87, i32 %88, i32 %89)
  %91 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %92 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %93 = load i32, i32* @CM_CHB3D6C, align 4
  %94 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %77
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %100 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %101 = load i32, i32* @CM_CHB3D, align 4
  %102 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %99, i32 %100, i32 %101)
  br label %108

103:                                              ; preds = %95
  %104 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %105 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %106 = load i32, i32* @CM_CHB3D, align 4
  %107 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %110 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_irq(i32* %110)
  br label %112

112:                                              ; preds = %108, %32
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %28, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
