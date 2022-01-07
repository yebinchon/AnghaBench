; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_init_page_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_init_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.block_device = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i64, %struct.block_device*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, %struct.block_device*, i64, i32)* @init_page_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_page_buffers(%struct.page* %0, %struct.block_device* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call %struct.buffer_head* @page_buffers(%struct.page* %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %9, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %10, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @PageUptodate(%struct.page* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.block_device*, %struct.block_device** %6, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @I_BDEV(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @blkdev_max_block(i32 %21, i32 %22)
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %58, %4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = call i32 @buffer_mapped(%struct.buffer_head* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.block_device*, %struct.block_device** %6, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 2
  store %struct.block_device* %33, %struct.block_device** %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %43 = call i32 @set_buffer_uptodate(%struct.buffer_head* %42)
  br label %44

44:                                               ; preds = %41, %28
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = call i32 @set_buffer_mapped(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  store %struct.buffer_head* %57, %struct.buffer_head** %10, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = icmp ne %struct.buffer_head* %59, %60
  br i1 %61, label %24, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  ret i64 %63
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @blkdev_max_block(i32, i32) #1

declare dso_local i32 @I_BDEV(i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
