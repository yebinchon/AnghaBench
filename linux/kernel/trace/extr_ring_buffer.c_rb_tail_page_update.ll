; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_tail_page_update.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_tail_page_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32, i32 }
%struct.buffer_page = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RB_WRITE_INTCNT = common dso_local global i32 0, align 4
@RB_WRITE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*)* @rb_tail_page_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_tail_page_update(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2) #0 {
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.buffer_page*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %5, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %6, align 8
  %11 = load i32, i32* @RB_WRITE_INTCNT, align 4
  %12 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %12, i32 0, i32 2
  %14 = call i64 @local_add_return(i32 %11, i32* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @RB_WRITE_INTCNT, align 4
  %16 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %16, i32 0, i32 1
  %18 = call i64 @local_add_return(i32 %15, i32* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %19, i32 0, i32 1
  %21 = call i32 @local_inc(i32* %20)
  %22 = call i32 (...) @barrier()
  %23 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.buffer_page* @READ_ONCE(i32 %26)
  %28 = icmp eq %struct.buffer_page* %23, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @RB_WRITE_MASK, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @RB_WRITE_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  store i64 %37, i64* %10, align 8
  %38 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %39 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %38, i32 0, i32 2
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @local_cmpxchg(i32* %39, i64 %40, i64 %41)
  %43 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %43, i32 0, i32 1
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @local_cmpxchg(i32* %44, i64 %45, i64 %46)
  %48 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %49 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @local_set(i32* %51, i32 0)
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %53, i32 0, i32 0
  %55 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %57 = call i32 @cmpxchg(i32* %54, %struct.buffer_page* %55, %struct.buffer_page* %56)
  br label %58

58:                                               ; preds = %29, %3
  ret void
}

declare dso_local i64 @local_add_return(i32, i32*) #1

declare dso_local i32 @local_inc(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local %struct.buffer_page* @READ_ONCE(i32) #1

declare dso_local i32 @local_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local_set(i32*, i32) #1

declare dso_local i32 @cmpxchg(i32*, %struct.buffer_page*, %struct.buffer_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
