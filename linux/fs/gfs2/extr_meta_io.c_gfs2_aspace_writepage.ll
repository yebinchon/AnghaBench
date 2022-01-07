; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_aspace_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_aspace_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64 }
%struct.buffer_head = type { %struct.buffer_head* }

@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_aspace_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_aspace_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @REQ_META, align 4
  %11 = load i32, i32* @REQ_PRIO, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %14 = call i32 @wbc_to_write_flags(%struct.writeback_control* %13)
  %15 = or i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @PageLocked(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @page_has_buffers(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call %struct.buffer_head* @page_buffers(%struct.page* %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %6, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %5, align 8
  br label %31

31:                                               ; preds = %65, %2
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = call i32 @buffer_mapped(%struct.buffer_head* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %65

36:                                               ; preds = %31
  %37 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %38 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WB_SYNC_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %44 = call i32 @lock_buffer(%struct.buffer_head* %43)
  br label %54

45:                                               ; preds = %36
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = call i32 @trylock_buffer(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %50, %struct.page* %51)
  br label %65

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %56 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %60 = call i32 @mark_buffer_async_write(%struct.buffer_head* %59)
  br label %64

61:                                               ; preds = %54
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = call i32 @unlock_buffer(%struct.buffer_head* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %49, %35
  %66 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 0
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  store %struct.buffer_head* %68, %struct.buffer_head** %5, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = icmp ne %struct.buffer_head* %68, %69
  br i1 %70, label %31, label %71

71:                                               ; preds = %65
  %72 = load %struct.page*, %struct.page** %3, align 8
  %73 = call i32 @PageWriteback(%struct.page* %72)
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.page*, %struct.page** %3, align 8
  %76 = call i32 @set_page_writeback(%struct.page* %75)
  br label %77

77:                                               ; preds = %93, %71
  %78 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load %struct.buffer_head*, %struct.buffer_head** %79, align 8
  store %struct.buffer_head* %80, %struct.buffer_head** %9, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %82 = call i64 @buffer_async_write(%struct.buffer_head* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i32, i32* @REQ_OP_WRITE, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %88 = call i32 @submit_bh(i32 %85, i32 %86, %struct.buffer_head* %87)
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %92, %struct.buffer_head** %5, align 8
  br label %93

93:                                               ; preds = %91
  %94 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = icmp ne %struct.buffer_head* %94, %95
  br i1 %96, label %77, label %97

97:                                               ; preds = %93
  %98 = load %struct.page*, %struct.page** %3, align 8
  %99 = call i32 @unlock_page(%struct.page* %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.page*, %struct.page** %3, align 8
  %104 = call i32 @end_page_writeback(%struct.page* %103)
  br label %105

105:                                              ; preds = %102, %97
  ret i32 0
}

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
