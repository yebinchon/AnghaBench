; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_head_page_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_head_page_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32 }
%struct.buffer_page = type { %struct.list_head }
%struct.list_head = type { i32 }

@RB_FLAG_MASK = common dso_local global i64 0, align 8
@RB_PAGE_MOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32, i32)* @rb_head_page_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_head_page_set(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca %struct.buffer_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %7, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %8, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %16 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %15, i32 0, i32 0
  %17 = ptrtoint %struct.list_head* %16 to i64
  store i64 %17, i64* %13, align 8
  %18 = load %struct.buffer_page*, %struct.buffer_page** %9, align 8
  %19 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %18, i32 0, i32 0
  store %struct.list_head* %19, %struct.list_head** %12, align 8
  %20 = load i64, i64* @RB_FLAG_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %13, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %13, align 8
  %24 = load %struct.list_head*, %struct.list_head** %12, align 8
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i64*
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = or i64 %27, %29
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %31, %33
  %35 = call i64 @cmpxchg(i64* %26, i64 %30, i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* @RB_FLAG_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @RB_PAGE_MOVED, align 4
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %5
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @RB_FLAG_MASK, align 8
  %47 = and i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
