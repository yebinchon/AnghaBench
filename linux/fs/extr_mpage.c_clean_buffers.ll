; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c_clean_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c_clean_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@buffer_heads_over_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @clean_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_buffers(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @page_has_buffers(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call %struct.buffer_head* @page_buffers(%struct.page* %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %7, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %6, align 8
  br label %16

16:                                               ; preds = %28, %12
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %24 = call i32 @clear_buffer_dirty(%struct.buffer_head* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %6, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = icmp ne %struct.buffer_head* %29, %30
  br i1 %31, label %16, label %32

32:                                               ; preds = %28, %21
  %33 = load i64, i64* @buffer_heads_over_limit, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i64 @PageUptodate(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = call i32 @try_to_free_buffers(%struct.page* %40)
  br label %42

42:                                               ; preds = %11, %39, %35, %32
  ret void
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
