; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_output_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp_midi = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp_midi*)* @snd_hdsp_midi_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_midi_output_write(%struct.hdsp_midi* %0) #0 {
  %2 = alloca %struct.hdsp_midi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store %struct.hdsp_midi* %0, %struct.hdsp_midi** %2, align 8
  %8 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %9 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %13 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %1
  %17 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %18 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @snd_rawmidi_transmit_empty(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %16
  %23 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %24 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %27 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_hdsp_midi_output_possible(i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 128
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 128, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %37 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @snd_rawmidi_transmit(i64 %38, i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %50 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %53 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @snd_hdsp_midi_write_byte(i32 %51, i32 %54, i8 zeroext %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %44

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %16
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.hdsp_midi*, %struct.hdsp_midi** %2, align 8
  %69 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %68, i32 0, i32 0
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(i64) #1

declare dso_local i32 @snd_hdsp_midi_output_possible(i32, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i64, i8*, i32) #1

declare dso_local i32 @snd_hdsp_midi_write_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
