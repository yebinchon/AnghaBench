; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i32, i64*, i64*, %struct.snd_ymfpci_voice* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ymfpci_voice = type { i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)* }
%struct.snd_ymfpci.0 = type opaque

@YDSXGR_STATUS = common dso_local global i32 0, align 4
@YDSXGR_CTRLSELECT = common dso_local global i32 0, align 4
@YDSXG_PLAYBACK_VOICES = common dso_local global i32 0, align 4
@YDSXG_CAPTURE_VOICES = common dso_local global i32 0, align 4
@YDSXGR_MODE = common dso_local global i32 0, align 4
@YDSXGR_INTFLAG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@YDSXG_EFFECT_VOICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ymfpci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ymfpci_voice*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.snd_ymfpci*
  store %struct.snd_ymfpci* %11, %struct.snd_ymfpci** %5, align 8
  %12 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %13 = load i32, i32* @YDSXGR_STATUS, align 4
  %14 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %115

18:                                               ; preds = %2
  %19 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %20 = load i32, i32* @YDSXGR_CTRLSELECT, align 4
  %21 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %19, i32 %20)
  %22 = and i32 %21, 1
  %23 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %25, i32 0, i32 7
  %27 = call i32 @spin_lock(i32* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %52, %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %33, i32 0, i32 10
  %35 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %35, i64 %37
  store %struct.snd_ymfpci_voice* %38, %struct.snd_ymfpci_voice** %9, align 8
  %39 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %40 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)*, i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)** %40, align 8
  %42 = icmp ne i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %45 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)*, i32 (%struct.snd_ymfpci.0*, %struct.snd_ymfpci_voice*)** %45, align 8
  %47 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %48 = bitcast %struct.snd_ymfpci* %47 to %struct.snd_ymfpci.0*
  %49 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %50 = call i32 %46(%struct.snd_ymfpci.0* %48, %struct.snd_ymfpci_voice* %49)
  br label %51

51:                                               ; preds = %43, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %28

55:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @YDSXG_CAPTURE_VOICES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %62 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %61, i32 0, i32 9
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %70, i32 0, i32 9
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @snd_ymfpci_pcm_capture_interrupt(i64 %76)
  br label %78

78:                                               ; preds = %69, %60
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %56

82:                                               ; preds = %56
  %83 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %84 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %83, i32 0, i32 7
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %86, i32 0, i32 6
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %90 = load i32, i32* @YDSXGR_STATUS, align 4
  %91 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %89, i32 %90, i32 -2147483648)
  %92 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %93 = load i32, i32* @YDSXGR_MODE, align 4
  %94 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %92, i32 %93)
  %95 = or i32 %94, 2
  store i32 %95, i32* %8, align 4
  %96 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %97 = load i32, i32* @YDSXGR_MODE, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %96, i32 %97, i32 %98)
  %100 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %100, i32 0, i32 6
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %104 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %103, i32 0, i32 5
  %105 = call i64 @atomic_read(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %82
  %108 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %109 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %108, i32 0, i32 5
  %110 = call i32 @atomic_set(i32* %109, i32 0)
  %111 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %112 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %111, i32 0, i32 4
  %113 = call i32 @wake_up(i32* %112)
  br label %114

114:                                              ; preds = %107, %82
  br label %115

115:                                              ; preds = %114, %2
  %116 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %117 = load i32, i32* @YDSXGR_INTFLAG, align 4
  %118 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %124 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %129 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %132 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @snd_timer_interrupt(i64 %130, i32 %133)
  br label %135

135:                                              ; preds = %127, %122
  br label %136

136:                                              ; preds = %135, %115
  %137 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %138 = load i32, i32* @YDSXGR_INTFLAG, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %137, i32 %138, i32 %139)
  %141 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %142 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = icmp ne %struct.TYPE_2__* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %148 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @snd_mpu401_uart_interrupt(i32 %146, i32 %151)
  br label %153

153:                                              ; preds = %145, %136
  %154 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %154
}

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_ymfpci_pcm_capture_interrupt(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_timer_interrupt(i64, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
