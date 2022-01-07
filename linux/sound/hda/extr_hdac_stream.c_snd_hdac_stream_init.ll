; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i64 }
%struct.hdac_stream = type { i32, i32, i32, i32, i32, i64, %struct.hdac_bus* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_stream_init(%struct.hdac_bus* %0, %struct.hdac_stream* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.hdac_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %6, align 8
  store %struct.hdac_stream* %1, %struct.hdac_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %12 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %13 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %12, i32 0, i32 6
  store %struct.hdac_bus* %11, %struct.hdac_bus** %13, align 8
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %15 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 32, %17
  %19 = add nsw i32 %18, 128
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %23 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %27 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %30 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %33 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %36 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %38 = call i32 @snd_hdac_dsp_lock_init(%struct.hdac_stream* %37)
  %39 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %40 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %39, i32 0, i32 4
  %41 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %42 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  ret void
}

declare dso_local i32 @snd_hdac_dsp_lock_init(%struct.hdac_stream*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
