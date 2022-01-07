; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_sync_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_sync_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { %struct.hdac_bus* }
%struct.hdac_bus = type { i32 }

@AZX_REG_SSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_stream_sync_trigger(%struct.hdac_stream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hdac_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hdac_stream*, %struct.hdac_stream** %5, align 8
  %12 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %11, i32 0, i32 0
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %12, align 8
  store %struct.hdac_bus* %13, %struct.hdac_bus** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @AZX_REG_SSYNC, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @_snd_hdac_chip_readl(%struct.hdac_bus* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @_snd_hdac_chip_writel(%struct.hdac_bus* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @_snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @_snd_hdac_chip_writel(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
