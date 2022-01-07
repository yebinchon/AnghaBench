; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_resize.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i32, i64, i32*, %struct.snd_seq_event_cell*, %struct.snd_seq_pool* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_pool = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_fifo_resize(%struct.snd_seq_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_pool*, align 8
  %7 = alloca %struct.snd_seq_pool*, align 8
  %8 = alloca %struct.snd_seq_event_cell*, align 8
  %9 = alloca %struct.snd_seq_event_cell*, align 8
  %10 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %12 = icmp ne %struct.snd_seq_fifo* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %14, i32 0, i32 5
  %16 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %15, align 8
  %17 = icmp ne %struct.snd_seq_pool* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ true, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.snd_seq_pool* @snd_seq_pool_new(i32 %28)
  store %struct.snd_seq_pool* %29, %struct.snd_seq_pool** %6, align 8
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %31 = icmp eq %struct.snd_seq_pool* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %27
  %36 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %37 = call i64 @snd_seq_pool_init(%struct.snd_seq_pool* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @snd_seq_pool_delete(%struct.snd_seq_pool** %6)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %84

43:                                               ; preds = %35
  %44 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %48 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %47, i32 0, i32 5
  %49 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %48, align 8
  store %struct.snd_seq_pool* %49, %struct.snd_seq_pool** %7, align 8
  %50 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %51 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %50, i32 0, i32 4
  %52 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %51, align 8
  store %struct.snd_seq_event_cell* %52, %struct.snd_seq_event_cell** %10, align 8
  %53 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %54 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %55 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %54, i32 0, i32 5
  store %struct.snd_seq_pool* %53, %struct.snd_seq_pool** %55, align 8
  %56 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %57 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %56, i32 0, i32 4
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %57, align 8
  %58 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %59 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %63 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %66 = call i32 @snd_seq_pool_mark_closing(%struct.snd_seq_pool* %65)
  %67 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %68 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %67, i32 0, i32 0
  %69 = call i32 @snd_use_lock_sync(i32* %68)
  %70 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  store %struct.snd_seq_event_cell* %70, %struct.snd_seq_event_cell** %8, align 8
  br label %71

71:                                               ; preds = %80, %43
  %72 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %73 = icmp ne %struct.snd_seq_event_cell* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %76 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %75, i32 0, i32 0
  %77 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %76, align 8
  store %struct.snd_seq_event_cell* %77, %struct.snd_seq_event_cell** %9, align 8
  %78 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %79 = call i32 @snd_seq_cell_free(%struct.snd_seq_event_cell* %78)
  br label %80

80:                                               ; preds = %74
  %81 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %9, align 8
  store %struct.snd_seq_event_cell* %81, %struct.snd_seq_event_cell** %8, align 8
  br label %71

82:                                               ; preds = %71
  %83 = call i32 @snd_seq_pool_delete(%struct.snd_seq_pool** %7)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %39, %32, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_pool* @snd_seq_pool_new(i32) #1

declare dso_local i64 @snd_seq_pool_init(%struct.snd_seq_pool*) #1

declare dso_local i32 @snd_seq_pool_delete(%struct.snd_seq_pool**) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_seq_pool_mark_closing(%struct.snd_seq_pool*) #1

declare dso_local i32 @snd_use_lock_sync(i32*) #1

declare dso_local i32 @snd_seq_cell_free(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
