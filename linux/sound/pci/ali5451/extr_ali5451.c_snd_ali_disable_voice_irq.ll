; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_voice_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_voice_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.TYPE_6__*, %struct.snd_ali_channel_control }
%struct.TYPE_6__ = type { i32 }
%struct.snd_ali_channel_control = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"disable_voice_irq channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32)* @snd_ali_disable_voice_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_disable_voice_irq(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ali_channel_control*, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %7, i32 0, i32 1
  store %struct.snd_ali_channel_control* %8, %struct.snd_ali_channel_control** %6, align 8
  %9 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 31
  %18 = shl i32 1, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %20 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %21 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ALI_REG(%struct.snd_ali* %19, i32 %23)
  %25 = call i32 @inl(i32 %24)
  %26 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %27 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %37 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %41 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %42 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ALI_REG(%struct.snd_ali* %40, i32 %44)
  %46 = call i32 @outl(i32 %39, i32 %45)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
