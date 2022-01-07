; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_mark_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_mark_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.page* }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

@I_DIRTY_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_buffer_dirty(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = call i32 @buffer_uptodate(%struct.buffer_head* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call i32 @trace_block_dirty_buffer(%struct.buffer_head* %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %14 = call i64 @buffer_dirty(%struct.buffer_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %19 = call i64 @buffer_dirty(%struct.buffer_head* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %58

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = call i32 @test_set_buffer_dirty(%struct.buffer_head* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %3, align 8
  store %struct.address_space* null, %struct.address_space** %4, align 8
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @lock_page_memcg(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @TestSetPageDirty(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call %struct.address_space* @page_mapping(%struct.page* %37)
  store %struct.address_space* %38, %struct.address_space** %4, align 8
  %39 = load %struct.address_space*, %struct.address_space** %4, align 8
  %40 = icmp ne %struct.address_space* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = load %struct.address_space*, %struct.address_space** %4, align 8
  %44 = call i32 @__set_page_dirty(%struct.page* %42, %struct.address_space* %43, i32 0)
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @unlock_page_memcg(%struct.page* %47)
  %49 = load %struct.address_space*, %struct.address_space** %4, align 8
  %50 = icmp ne %struct.address_space* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.address_space*, %struct.address_space** %4, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I_DIRTY_PAGES, align 4
  %56 = call i32 @__mark_inode_dirty(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %21, %57, %23
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @trace_block_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @test_set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @__set_page_dirty(%struct.page*, %struct.address_space*, i32) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

declare dso_local i32 @__mark_inode_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
