; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_valid_chmap_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_valid_chmap_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_chmap = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_chmap*, i32)* @valid_chmap_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_chmap_channels(%struct.snd_pcm_chmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_chmap*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_chmap* %0, %struct.snd_pcm_chmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ true, %12 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
