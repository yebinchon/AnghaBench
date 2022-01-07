; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hiface_chip = type { %struct.pcm_runtime* }
%struct.pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pcm_runtime* }

@PCM_N_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hiface_chip*)* @hiface_pcm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hiface_pcm_destroy(%struct.hiface_chip* %0) #0 {
  %2 = alloca %struct.hiface_chip*, align 8
  %3 = alloca %struct.pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.hiface_chip* %0, %struct.hiface_chip** %2, align 8
  %5 = load %struct.hiface_chip*, %struct.hiface_chip** %2, align 8
  %6 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %5, i32 0, i32 0
  %7 = load %struct.pcm_runtime*, %struct.pcm_runtime** %6, align 8
  store %struct.pcm_runtime* %7, %struct.pcm_runtime** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCM_N_URBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.pcm_runtime*, %struct.pcm_runtime** %19, align 8
  %21 = call i32 @kfree(%struct.pcm_runtime* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.hiface_chip*, %struct.hiface_chip** %2, align 8
  %27 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %26, i32 0, i32 0
  %28 = load %struct.pcm_runtime*, %struct.pcm_runtime** %27, align 8
  %29 = call i32 @kfree(%struct.pcm_runtime* %28)
  %30 = load %struct.hiface_chip*, %struct.hiface_chip** %2, align 8
  %31 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %30, i32 0, i32 0
  store %struct.pcm_runtime* null, %struct.pcm_runtime** %31, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
