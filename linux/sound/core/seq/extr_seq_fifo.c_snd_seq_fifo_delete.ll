; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_fifo_delete(%struct.snd_seq_fifo** %0) #0 {
  %2 = alloca %struct.snd_seq_fifo**, align 8
  %3 = alloca %struct.snd_seq_fifo*, align 8
  store %struct.snd_seq_fifo** %0, %struct.snd_seq_fifo*** %2, align 8
  %4 = load %struct.snd_seq_fifo**, %struct.snd_seq_fifo*** %2, align 8
  %5 = icmp ne %struct.snd_seq_fifo** %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @snd_BUG_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_fifo**, %struct.snd_seq_fifo*** %2, align 8
  %13 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %12, align 8
  store %struct.snd_seq_fifo* %13, %struct.snd_seq_fifo** %3, align 8
  %14 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %15 = icmp ne %struct.snd_seq_fifo* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.snd_seq_fifo**, %struct.snd_seq_fifo*** %2, align 8
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %22, align 8
  %23 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %24 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %29 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @snd_seq_pool_mark_closing(i64 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %34 = call i32 @snd_seq_fifo_clear(%struct.snd_seq_fifo* %33)
  %35 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %36 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %35, i32 0, i32 1
  %37 = call i64 @waitqueue_active(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %41 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %40, i32 0, i32 1
  %42 = call i32 @wake_up(i32* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %50 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @snd_seq_pool_done(i64 %51)
  %53 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %54 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %53, i32 0, i32 0
  %55 = call i32 @snd_seq_pool_delete(i64* %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %58 = call i32 @kfree(%struct.snd_seq_fifo* %57)
  br label %59

59:                                               ; preds = %56, %20, %10
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_seq_pool_mark_closing(i64) #1

declare dso_local i32 @snd_seq_fifo_clear(%struct.snd_seq_fifo*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_seq_pool_done(i64) #1

declare dso_local i32 @snd_seq_pool_delete(i64*) #1

declare dso_local i32 @kfree(%struct.snd_seq_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
