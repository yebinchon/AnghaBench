; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_input_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_input_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm_midi = type { %struct.TYPE_4__*, i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm_midi*)* @snd_hdspm_midi_input_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_midi_input_read(%struct.hdspm_midi* %0) #0 {
  %2 = alloca %struct.hdspm_midi*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdspm_midi* %0, %struct.hdspm_midi** %2, align 8
  %7 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %8 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %12 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %15 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @snd_hdspm_midi_input_available(%struct.TYPE_4__* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %1
  %21 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %22 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 128, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %36 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %39 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call zeroext i8 @snd_hdspm_midi_read_byte(%struct.TYPE_4__* %37, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %53 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @snd_rawmidi_receive(i64 %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  br label %73

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %5, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %66 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %69 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call zeroext i8 @snd_hdspm_midi_read_byte(%struct.TYPE_4__* %67, i32 %70)
  br label %60

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %76 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %78 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %77, i32 0, i32 2
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %82 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %88 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %91 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %97 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* @HDSPM_controlRegister, align 4
  %100 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %101 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hdspm_write(%struct.TYPE_4__* %98, i32 %99, i32 %104)
  %106 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %107 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %113 = call i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi* %112)
  ret i32 %113
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_hdspm_midi_input_available(%struct.TYPE_4__*, i32) #1

declare dso_local zeroext i8 @snd_hdspm_midi_read_byte(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_rawmidi_receive(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdspm_write(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
