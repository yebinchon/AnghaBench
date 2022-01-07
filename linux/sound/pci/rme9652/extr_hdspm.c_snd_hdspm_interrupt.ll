; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32, %struct.TYPE_2__*, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_audioIRQPending = common dso_local global i32 0, align 4
@HDSPM_midi0IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi1IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi2IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi3IRQPending = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HDSPM_interruptConfirmation = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_hdspm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.hdspm*
  store %struct.hdspm* %13, %struct.hdspm** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %15 = load i32, i32* @HDSPM_statusRegister, align 4
  %16 = call i32 @hdspm_read(%struct.hdspm* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HDSPM_audioIRQPending, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HDSPM_midi0IRQPending, align 4
  %22 = load i32, i32* @HDSPM_midi1IRQPending, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HDSPM_midi2IRQPending, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HDSPM_midi3IRQPending, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %142

36:                                               ; preds = %31, %2
  %37 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %38 = load i32, i32* @HDSPM_interruptConfirmation, align 4
  %39 = call i32 @hdspm_write(%struct.hdspm* %37, i32 %38, i32 0)
  %40 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %41 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %36
  %47 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %48 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %53 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @snd_pcm_period_elapsed(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %58 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %63 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @snd_pcm_period_elapsed(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %140

70:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %129, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %74 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %71
  %78 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %79 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %80 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hdspm_read(%struct.hdspm* %78, i32 %86)
  %88 = and i32 %87, 255
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %93 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %91, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %90
  %103 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %104 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %113 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %117 = load i32, i32* @HDSPM_controlRegister, align 4
  %118 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %119 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @hdspm_write(%struct.hdspm* %116, i32 %117, i32 %120)
  %122 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %123 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  store i32 1, i32* %11, align 4
  br label %129

129:                                              ; preds = %102, %90, %77
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %71

132:                                              ; preds = %71
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %137 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %136, i32 0, i32 1
  %138 = call i32 @tasklet_hi_schedule(i32* %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %140

140:                                              ; preds = %139, %67
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %34
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
