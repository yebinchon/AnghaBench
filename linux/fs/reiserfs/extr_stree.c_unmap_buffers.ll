; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_unmap_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_unmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @unmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_buffers(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i64 @page_has_buffers(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call %struct.buffer_head* @page_buffers(%struct.page* %22)
  store %struct.buffer_head* %23, %struct.buffer_head** %6, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %5, align 8
  br label %25

25:                                               ; preds = %42, %16
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 1
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %7, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = call i32 @reiserfs_unmap_buffer(%struct.buffer_head* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %5, align 8
  br label %42

42:                                               ; preds = %40
  %43 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = icmp ne %struct.buffer_head* %43, %44
  br i1 %45, label %25, label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %12
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @reiserfs_unmap_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
