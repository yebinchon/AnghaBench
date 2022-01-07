; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i64, i32, i64, i32, i64, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_pool* @snd_seq_pool_new(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_pool*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_seq_pool* @kzalloc(i32 72, i32 %5)
  store %struct.snd_seq_pool* %6, %struct.snd_seq_pool** %4, align 8
  %7 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %8 = icmp ne %struct.snd_seq_pool* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.snd_seq_pool* null, %struct.snd_seq_pool** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %12 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %11, i32 0, i32 8
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %14, i32 0, i32 7
  store i32* null, i32** %15, align 8
  %16 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %16, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %21 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %20, i32 0, i32 4
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %24 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %25, i32 0, i32 2
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %30 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %32 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  store %struct.snd_seq_pool* %33, %struct.snd_seq_pool** %2, align 8
  br label %34

34:                                               ; preds = %10, %9
  %35 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %2, align 8
  ret %struct.snd_seq_pool* %35
}

declare dso_local %struct.snd_seq_pool* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
