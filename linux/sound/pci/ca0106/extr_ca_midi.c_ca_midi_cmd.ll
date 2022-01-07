; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca_midi.c_ca_midi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca_midi.c_ca_midi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca_midi = type { i64, i32, i32 (i32)*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"ca_midi_cmd: 0x%x failed at 0x%x (status = 0x%x, data = 0x%x)!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca_midi*, i8, i32)* @ca_midi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca_midi_cmd(%struct.snd_ca_midi* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ca_midi*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ca_midi* %0, %struct.snd_ca_midi** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %10, i32 0, i32 3
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %15 = call i32 @ca_midi_write_data(%struct.snd_ca_midi* %14, i32 0)
  %16 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %17 = load i8, i8* %5, align 1
  %18 = call i32 @ca_midi_write_cmd(%struct.snd_ca_midi* %16, i8 zeroext %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 10000, i32* %8, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = icmp sgt i32 %26, 0
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %33 = call i64 @ca_midi_input_avail(%struct.snd_ca_midi* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %37 = call i64 @ca_midi_read_data(%struct.snd_ca_midi* %36)
  %38 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %31
  br label %22

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %50 = call i64 @ca_midi_read_data(%struct.snd_ca_midi* %49)
  %51 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %48, %45
  br label %58

57:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %60 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %59, i32 0, i32 3
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %58
  %66 = load i8, i8* %5, align 1
  %67 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %67, i32 0, i32 2
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %69(i32 %72)
  %74 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %75 = call i32 @ca_midi_read_stat(%struct.snd_ca_midi* %74)
  %76 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %77 = call i64 @ca_midi_read_data(%struct.snd_ca_midi* %76)
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8 zeroext %66, i32 %73, i32 %75, i64 %77)
  br label %79

79:                                               ; preds = %65, %58
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ca_midi_write_data(%struct.snd_ca_midi*, i32) #1

declare dso_local i32 @ca_midi_write_cmd(%struct.snd_ca_midi*, i8 zeroext) #1

declare dso_local i64 @ca_midi_input_avail(%struct.snd_ca_midi*) #1

declare dso_local i64 @ca_midi_read_data(%struct.snd_ca_midi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext, i32, i32, i64) #1

declare dso_local i32 @ca_midi_read_stat(%struct.snd_ca_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
