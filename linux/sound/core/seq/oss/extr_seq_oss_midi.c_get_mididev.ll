; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_get_mididev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_get_mididev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_midi = type { i32 }
%struct.seq_oss_devinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seq_oss_midi* (%struct.seq_oss_devinfo*, i32)* @get_mididev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_midi*, align 8
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %11 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  store %struct.seq_oss_midi* null, %struct.seq_oss_midi** %3, align 8
  br label %23

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %18 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @array_index_nospec(i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.seq_oss_midi* @get_mdev(i32 %21)
  store %struct.seq_oss_midi* %22, %struct.seq_oss_midi** %3, align 8
  br label %23

23:                                               ; preds = %15, %14
  %24 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %3, align 8
  ret %struct.seq_oss_midi* %24
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local %struct.seq_oss_midi* @get_mdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
