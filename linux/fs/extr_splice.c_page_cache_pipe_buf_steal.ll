; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_page_cache_pipe_buf_steal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_page_cache_pipe_buf_steal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_LRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @page_cache_pipe_buf_steal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_cache_pipe_buf_steal(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %8, i32 0, i32 1
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i32 @lock_page(%struct.page* %11)
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call %struct.address_space* @page_mapping(%struct.page* %13)
  store %struct.address_space* %14, %struct.address_space** %7, align 8
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = icmp ne %struct.address_space* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @PageUptodate(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = call i32 @wait_on_page_writeback(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i64 @page_has_private(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @try_to_release_page(%struct.page* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %48

35:                                               ; preds = %29, %17
  %36 = load %struct.address_space*, %struct.address_space** %7, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i64 @remove_mapping(%struct.address_space* %36, %struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @PIPE_BUF_FLAG_LRU, align 4
  %42 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %2
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i64 @remove_mapping(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
