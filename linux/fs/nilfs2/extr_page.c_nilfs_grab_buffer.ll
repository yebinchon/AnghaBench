; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_grab_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_grab_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %0, %struct.address_space* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %17, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.address_space*, %struct.address_space** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.page* @grab_cache_page(%struct.address_space* %23, i64 %24)
  store %struct.page* %25, %struct.page** %12, align 8
  %26 = load %struct.page*, %struct.page** %12, align 8
  %27 = icmp ne %struct.page* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %53

33:                                               ; preds = %4
  %34 = load %struct.page*, %struct.page** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call %struct.buffer_head* @__nilfs_get_page_block(%struct.page* %34, i64 %35, i64 %36, i32 %37, i64 %38)
  store %struct.buffer_head* %39, %struct.buffer_head** %13, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %41 = icmp ne %struct.buffer_head* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.page*, %struct.page** %12, align 8
  %48 = call i32 @unlock_page(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %53

51:                                               ; preds = %33
  %52 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %52, %struct.buffer_head** %5, align 8
  br label %53

53:                                               ; preds = %51, %46, %32
  %54 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %54
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @__nilfs_get_page_block(%struct.page*, i64, i64, i32, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
