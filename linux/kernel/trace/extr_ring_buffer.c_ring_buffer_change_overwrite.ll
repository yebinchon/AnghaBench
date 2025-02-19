; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_change_overwrite.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_change_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i32 }

@RB_FL_OVERWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_buffer_change_overwrite(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @RB_FL_OVERWRITE, align 4
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @RB_FL_OVERWRITE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
