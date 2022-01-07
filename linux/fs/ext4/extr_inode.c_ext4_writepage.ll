; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_io_submit = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ext4_bh_delay_or_unwritten = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@PF_KSWAPD = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ext4_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_io_submit, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @EXT4_SB(%struct.TYPE_6__* %20)
  %22 = call i32 @ext4_forced_shutdown(i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @ext4_invalidatepage(%struct.page* %26, i32 0, i32 %27)
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @unlock_page(%struct.page* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %138

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @trace_ext4_writepage(%struct.page* %34)
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = call i32 @i_size_read(%struct.inode* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = lshr i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i32 @ext4_verity_in_progress(%struct.inode* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PAGE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  store i32 %53, i32* %8, align 4
  br label %56

54:                                               ; preds = %45, %33
  %55 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call %struct.buffer_head* @page_buffers(%struct.page* %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %9, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @ext4_bh_delay_or_unwritten, align 4
  %62 = call i64 @ext4_walk_page_buffers(i32* null, %struct.buffer_head* %59, i32 0, i32 %60, i32* null, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %65, %struct.page* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PF_MEMALLOC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %64
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %74, %64
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PF_MEMALLOC, align 4
  %87 = load i32, i32* @PF_KSWAPD, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load i32, i32* @PF_MEMALLOC, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @WARN_ON_ONCE(i32 %92)
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i32 @unlock_page(%struct.page* %94)
  store i32 0, i32* %3, align 4
  br label %138

96:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = call i64 @PageChecked(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i64 @ext4_should_journal_data(%struct.inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.page*, %struct.page** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @__ext4_journalled_writepage(%struct.page* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %138

109:                                              ; preds = %101, %97
  %110 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %111 = call i32 @ext4_io_submit_init(%struct.ext4_io_submit* %11, %struct.writeback_control* %110)
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = load i32, i32* @GFP_NOFS, align 4
  %114 = call i32 @ext4_init_io_end(%struct.inode* %112, i32 %113)
  %115 = getelementptr inbounds %struct.ext4_io_submit, %struct.ext4_io_submit* %11, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.ext4_io_submit, %struct.ext4_io_submit* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %109
  %120 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %121 = load %struct.page*, %struct.page** %4, align 8
  %122 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %120, %struct.page* %121)
  %123 = load %struct.page*, %struct.page** %4, align 8
  %124 = call i32 @unlock_page(%struct.page* %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %138

127:                                              ; preds = %109
  %128 = load %struct.page*, %struct.page** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @ext4_bio_write_page(%struct.ext4_io_submit* %11, %struct.page* %128, i32 %129, %struct.writeback_control* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = call i32 @ext4_io_submit(%struct.ext4_io_submit* %11)
  %134 = getelementptr inbounds %struct.ext4_io_submit, %struct.ext4_io_submit* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ext4_put_io_end_defer(i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %127, %119, %105, %82, %25
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @ext4_invalidatepage(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @trace_ext4_writepage(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @ext4_walk_page_buffers(i32*, %struct.buffer_head*, i32, i32, i32*, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @__ext4_journalled_writepage(%struct.page*, i32) #1

declare dso_local i32 @ext4_io_submit_init(%struct.ext4_io_submit*, %struct.writeback_control*) #1

declare dso_local i32 @ext4_init_io_end(%struct.inode*, i32) #1

declare dso_local i32 @ext4_bio_write_page(%struct.ext4_io_submit*, %struct.page*, i32, %struct.writeback_control*, i32) #1

declare dso_local i32 @ext4_io_submit(%struct.ext4_io_submit*) #1

declare dso_local i32 @ext4_put_io_end_defer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
