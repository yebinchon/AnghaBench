; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_update_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_update_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*)* @rb_update_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_update_pages(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  %4 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %10 = call i32 @rb_insert_pages(%struct.ring_buffer_per_cpu* %9)
  store i32 %10, i32* %3, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %13 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @rb_remove_pages(%struct.ring_buffer_per_cpu* %12, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @rb_insert_pages(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_remove_pages(%struct.ring_buffer_per_cpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
