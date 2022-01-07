; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i64, i32*, i32*, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_fifo* @snd_seq_fifo_new(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_fifo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_seq_fifo* @kzalloc(i32 48, i32 %5)
  store %struct.snd_seq_fifo* %6, %struct.snd_seq_fifo** %4, align 8
  %7 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %8 = icmp ne %struct.snd_seq_fifo* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @snd_seq_pool_new(i32 %11)
  %13 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %14 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %13, i32 0, i32 7
  store i32* %12, i32** %14, align 8
  %15 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %16 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %21 = call i32 @kfree(%struct.snd_seq_fifo* %20)
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %54

22:                                               ; preds = %10
  %23 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %24 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @snd_seq_pool_init(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %30 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %29, i32 0, i32 7
  %31 = call i32 @snd_seq_pool_delete(i32** %30)
  %32 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %33 = call i32 @kfree(%struct.snd_seq_fifo* %32)
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %54

34:                                               ; preds = %22
  %35 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %36 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %39 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %38, i32 0, i32 5
  %40 = call i32 @snd_use_lock_init(i32* %39)
  %41 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %42 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %41, i32 0, i32 4
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %44, i32 0, i32 3
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %48 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %52 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  store %struct.snd_seq_fifo* %53, %struct.snd_seq_fifo** %2, align 8
  br label %54

54:                                               ; preds = %34, %28, %19, %9
  %55 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  ret %struct.snd_seq_fifo* %55
}

declare dso_local %struct.snd_seq_fifo* @kzalloc(i32, i32) #1

declare dso_local i32* @snd_seq_pool_new(i32) #1

declare dso_local i32 @kfree(%struct.snd_seq_fifo*) #1

declare dso_local i64 @snd_seq_pool_init(i32*) #1

declare dso_local i32 @snd_seq_pool_delete(i32**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_use_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
