; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_write_codec_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_write_codec_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vx_core*, i32, i32)* }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32)* @vx_write_codec_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_write_codec_reg(%struct.vx_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %8 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.vx_core*, i32, i32)* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %20 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %28 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %31 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %33, align 8
  %35 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 %34(%struct.vx_core* %35, i32 %36, i32 %37)
  %39 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %40 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %26, %25, %17
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
