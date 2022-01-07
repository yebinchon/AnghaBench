; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_gf1_mem }
%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block* }
%struct.snd_gf1_mem_block = type { %struct.snd_gf1_mem_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_mem_done(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca %struct.snd_gf1_mem*, align 8
  %4 = alloca %struct.snd_gf1_mem_block*, align 8
  %5 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %7 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.snd_gf1_mem* %8, %struct.snd_gf1_mem** %3, align 8
  %9 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %3, align 8
  %10 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %9, i32 0, i32 0
  %11 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %10, align 8
  store %struct.snd_gf1_mem_block* %11, %struct.snd_gf1_mem_block** %4, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %4, align 8
  %14 = icmp ne %struct.snd_gf1_mem_block* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %4, align 8
  %17 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %16, i32 0, i32 0
  %18 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %17, align 8
  store %struct.snd_gf1_mem_block* %18, %struct.snd_gf1_mem_block** %5, align 8
  %19 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %3, align 8
  %20 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %4, align 8
  %21 = call i32 @snd_gf1_mem_xfree(%struct.snd_gf1_mem* %19, %struct.snd_gf1_mem_block* %20)
  %22 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  store %struct.snd_gf1_mem_block* %22, %struct.snd_gf1_mem_block** %4, align 8
  br label %12

23:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @snd_gf1_mem_xfree(%struct.snd_gf1_mem*, %struct.snd_gf1_mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
