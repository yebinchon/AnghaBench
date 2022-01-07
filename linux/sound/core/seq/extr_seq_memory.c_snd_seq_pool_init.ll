; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i32, i32, i32, i64, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.snd_seq_pool* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_pool_init(%struct.snd_seq_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %3, align 8
  %6 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %7 = icmp ne %struct.snd_seq_pool* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %17 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.snd_seq_event_cell* @kvmalloc_array(i32 16, i32 %18, i32 %19)
  store %struct.snd_seq_event_cell* %20, %struct.snd_seq_event_cell** %5, align 8
  %21 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %22 = icmp ne %struct.snd_seq_event_cell* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %91

26:                                               ; preds = %15
  %27 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %28 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %27, i32 0, i32 3
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %31 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %30, i32 0, i32 6
  %32 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %31, align 8
  %33 = icmp ne %struct.snd_seq_event_cell* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %36 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %35, i32 0, i32 3
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %39 = call i32 @kvfree(%struct.snd_seq_event_cell* %38)
  store i32 0, i32* %2, align 4
  br label %91

40:                                               ; preds = %26
  %41 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %42 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %43 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %42, i32 0, i32 6
  store %struct.snd_seq_event_cell* %41, %struct.snd_seq_event_cell** %43, align 8
  %44 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %44, i32 0, i32 5
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %70, %40
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %49 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %54 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %53, i32 0, i32 6
  %55 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %55, i64 %57
  store %struct.snd_seq_event_cell* %58, %struct.snd_seq_event_cell** %5, align 8
  %59 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %60 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %61 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %60, i32 0, i32 1
  store %struct.snd_seq_pool* %59, %struct.snd_seq_pool** %61, align 8
  %62 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %63 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %62, i32 0, i32 5
  %64 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %63, align 8
  %65 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %66 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %65, i32 0, i32 0
  store %struct.snd_seq_event_cell* %64, %struct.snd_seq_event_cell** %66, align 8
  %67 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %68 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %69 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %68, i32 0, i32 5
  store %struct.snd_seq_event_cell* %67, %struct.snd_seq_event_cell** %69, align 8
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %75 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = sdiv i32 %77, 2
  %79 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %80 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %82 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %84 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %87 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %89 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %88, i32 0, i32 3
  %90 = call i32 @spin_unlock_irq(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %73, %34, %23, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_event_cell* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kvfree(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
