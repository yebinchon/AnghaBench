; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_input_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_input_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp_midi = type { i32, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@HDSP_Midi1InterruptEnable = common dso_local global i32 0, align 4
@HDSP_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp_midi*)* @snd_hdsp_midi_input_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_midi_input_read(%struct.hdsp_midi* %0) #0 {
  %2 = alloca %struct.hdsp_midi*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdsp_midi* %0, %struct.hdsp_midi** %2, align 8
  %7 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %8 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %12 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %15 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @snd_hdsp_midi_input_available(%struct.TYPE_4__* %13, i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %1
  %20 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %21 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 128, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %35 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %38 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call zeroext i8 @snd_hdsp_midi_read_byte(%struct.TYPE_4__* %36, i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %52 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snd_rawmidi_receive(i64 %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %72

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %63, %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %65 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %68 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call zeroext i8 @snd_hdsp_midi_read_byte(%struct.TYPE_4__* %66, i64 %69)
  br label %59

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %1
  %74 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %75 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %77 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i32, i32* @HDSP_Midi1InterruptEnable, align 4
  %82 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %83 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %96

88:                                               ; preds = %73
  %89 = load i32, i32* @HDSP_Midi0InterruptEnable, align 4
  %90 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %91 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %98 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* @HDSP_controlRegister, align 4
  %101 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %102 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hdsp_write(%struct.TYPE_4__* %99, i32 %100, i32 %105)
  %107 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %108 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %107, i32 0, i32 0
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %112 = call i32 @snd_hdsp_midi_output_write(%struct.hdsp_midi* %111)
  ret i32 %112
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_hdsp_midi_input_available(%struct.TYPE_4__*, i64) #1

declare dso_local zeroext i8 @snd_hdsp_midi_read_byte(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @snd_rawmidi_receive(i64, i8*, i32) #1

declare dso_local i32 @hdsp_write(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_hdsp_midi_output_write(%struct.hdsp_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
