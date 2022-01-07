; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_bytepos_finish.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_bytepos_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loopback_pcm*, i32)* @bytepos_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bytepos_finish(%struct.loopback_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.loopback_pcm* %0, %struct.loopback_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %7 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = urem i32 %15, %12
  store i32 %16, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
