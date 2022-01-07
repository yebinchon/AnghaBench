; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_fix_tail_page_for_writing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_fix_tail_page_for_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @fix_tail_page_for_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_tail_page_for_writing(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = icmp ne %struct.page* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i64 @page_has_buffers(%struct.page* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call %struct.buffer_head* @page_buffers(%struct.page* %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %3, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %5, align 8
  br label %16

16:                                               ; preds = %33, %12
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 1
  %19 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* %19, %struct.buffer_head** %4, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %21 = call i64 @buffer_mapped(%struct.buffer_head* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = call i32 @reiserfs_unmap_buffer(%struct.buffer_head* %29)
  br label %31

31:                                               ; preds = %28, %23, %16
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %5, align 8
  br label %33

33:                                               ; preds = %31
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %36 = icmp ne %struct.buffer_head* %34, %35
  br i1 %36, label %16, label %37

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %8, %1
  ret void
}

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_unmap_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
