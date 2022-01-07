; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_synth.c_snd_emu8000_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_synth.c_snd_emu8000_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_seq_device = type { i32, %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_emu8000_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu8000_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.snd_emu8000*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %6)
  store %struct.snd_seq_device* %7, %struct.snd_seq_device** %4, align 8
  %8 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %9 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %8, i32 0, i32 1
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %9, align 8
  %11 = icmp eq %struct.snd_emu8000* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %14, i32 0, i32 1
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %15, align 8
  store %struct.snd_emu8000* %16, %struct.snd_emu8000** %5, align 8
  %17 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %18 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @snd_device_free(i32 %24, i64 %27)
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %31 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @snd_emux_free(i32* %32)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %35 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @snd_util_memhdr_free(i32* %36)
  %38 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %41 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i32 @snd_device_free(i32, i64) #1

declare dso_local i32 @snd_emux_free(i32*) #1

declare dso_local i32 @snd_util_memhdr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
