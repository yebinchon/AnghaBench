; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_look.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_look.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_mem_block = type { i32, %struct.snd_gf1_mem_block* }
%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_gf1_mem_block* (%struct.snd_gf1_mem*, i32)* @snd_gf1_mem_look to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_gf1_mem_block* @snd_gf1_mem_look(%struct.snd_gf1_mem* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_gf1_mem_block*, align 8
  %4 = alloca %struct.snd_gf1_mem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_gf1_mem* %0, %struct.snd_gf1_mem** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %8 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %7, i32 0, i32 0
  %9 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  store %struct.snd_gf1_mem_block* %9, %struct.snd_gf1_mem_block** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %12 = icmp ne %struct.snd_gf1_mem_block* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %15 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  store %struct.snd_gf1_mem_block* %20, %struct.snd_gf1_mem_block** %3, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %24 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %23, i32 0, i32 1
  %25 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %24, align 8
  store %struct.snd_gf1_mem_block* %25, %struct.snd_gf1_mem_block** %6, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %3, align 8
  ret %struct.snd_gf1_mem_block* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
