; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_allocate_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_allocate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ring_buffer_per_cpu = type { i64, i32, i32 }

@pages = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, i64)* @rb_allocate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_allocate_pages(%struct.ring_buffer_per_cpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pages, i32 0, i32 0), align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @__rb_allocate_pages(i64 %13, %struct.TYPE_5__* @pages, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pages, i32 0, i32 0), align 4
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = call i32 @list_del(%struct.TYPE_5__* @pages)
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %31 = call i32 @rb_check_pages(%struct.ring_buffer_per_cpu* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @__rb_allocate_pages(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_del(%struct.TYPE_5__*) #1

declare dso_local i32 @rb_check_pages(%struct.ring_buffer_per_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
