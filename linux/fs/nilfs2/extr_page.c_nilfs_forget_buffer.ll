; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_forget_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_forget_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@BH_Uptodate = common dso_local global i32 0, align 4
@BH_Dirty = common dso_local global i32 0, align 4
@BH_Mapped = common dso_local global i32 0, align 4
@BH_Async_Write = common dso_local global i32 0, align 4
@BH_NILFS_Volatile = common dso_local global i32 0, align 4
@BH_NILFS_Checked = common dso_local global i32 0, align 4
@BH_NILFS_Redirected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_forget_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 2
  %7 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %7, %struct.page** %3, align 8
  %8 = load i32, i32* @BH_Uptodate, align 4
  %9 = call i64 @BIT(i32 %8)
  %10 = load i32, i32* @BH_Dirty, align 4
  %11 = call i64 @BIT(i32 %10)
  %12 = or i64 %9, %11
  %13 = load i32, i32* @BH_Mapped, align 4
  %14 = call i64 @BIT(i32 %13)
  %15 = or i64 %12, %14
  %16 = load i32, i32* @BH_Async_Write, align 4
  %17 = call i64 @BIT(i32 %16)
  %18 = or i64 %15, %17
  %19 = load i32, i32* @BH_NILFS_Volatile, align 4
  %20 = call i64 @BIT(i32 %19)
  %21 = or i64 %18, %20
  %22 = load i32, i32* @BH_NILFS_Checked, align 4
  %23 = call i64 @BIT(i32 %22)
  %24 = or i64 %21, %23
  %25 = load i32, i32* @BH_NILFS_Redirected, align 4
  %26 = call i64 @BIT(i32 %25)
  %27 = or i64 %24, %26
  store i64 %27, i64* %4, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %29 = call i32 @lock_buffer(%struct.buffer_head* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 1
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @set_mask_bits(i32* %31, i64 %32, i32 0)
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i64 @nilfs_page_buffers_clean(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @__nilfs_clear_page_dirty(%struct.page* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i32 @ClearPageUptodate(%struct.page* %43)
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = call i32 @ClearPageMappedToDisk(%struct.page* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %48 = call i32 @unlock_buffer(%struct.buffer_head* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_mask_bits(i32*, i64, i32) #1

declare dso_local i64 @nilfs_page_buffers_clean(%struct.page*) #1

declare dso_local i32 @__nilfs_clear_page_dirty(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
