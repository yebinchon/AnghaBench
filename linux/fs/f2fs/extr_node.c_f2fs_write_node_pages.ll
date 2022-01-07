; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_write_node_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_write_node_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i32, i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.blk_plug = type { i32 }

@SBI_POR_DOING = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@FS_NODE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @f2fs_write_node_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_write_node_pages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_M_SB(%struct.address_space* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %6, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %12 = load i32, i32* @SBI_POR_DOING, align 4
  %13 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %11, i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %97

17:                                               ; preds = %2
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %19 = call i32 @f2fs_balance_fs_bg(%struct.f2fs_sb_info* %18)
  %20 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %21 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WB_SYNC_ALL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %27 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %28 = call i64 @get_pages(%struct.f2fs_sb_info* %26, i32 %27)
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %30 = load i64, i64* @NODE, align 8
  %31 = call i64 @nr_pages_to_skip(%struct.f2fs_sb_info* %29, i64 %30)
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %97

34:                                               ; preds = %25, %17
  %35 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %36 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WB_SYNC_ALL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %42 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @NODE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @atomic_inc(i32* %45)
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NODE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %97

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.address_space*, %struct.address_space** %4, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %62 = load i64, i64* @NODE, align 8
  %63 = call i32 @trace_f2fs_writepages(i32 %60, %struct.writeback_control* %61, i64 %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %65 = load i64, i64* @NODE, align 8
  %66 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %67 = call i64 @nr_pages_to_write(%struct.f2fs_sb_info* %64, i64 %65, %struct.writeback_control* %66)
  store i64 %67, i64* %8, align 8
  %68 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %70 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %71 = load i32, i32* @FS_NODE_IO, align 4
  %72 = call i32 @f2fs_sync_node_pages(%struct.f2fs_sb_info* %69, %struct.writeback_control* %70, i32 1, i32 %71)
  %73 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  %74 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %75 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = sub nsw i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @max(i64 0, i32 %80)
  %82 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %83 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %85 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WB_SYNC_ALL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %57
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %91 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @NODE, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @atomic_dec(i32* %94)
  br label %96

96:                                               ; preds = %89, %57
  store i32 0, i32* %3, align 4
  br label %113

97:                                               ; preds = %55, %33, %16
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %99 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %100 = call i64 @get_pages(%struct.f2fs_sb_info* %98, i32 %99)
  %101 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %102 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.address_space*, %struct.address_space** %4, align 8
  %108 = getelementptr inbounds %struct.address_space, %struct.address_space* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %111 = load i64, i64* @NODE, align 8
  %112 = call i32 @trace_f2fs_writepages(i32 %109, %struct.writeback_control* %110, i64 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %97, %96
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.f2fs_sb_info* @F2FS_M_SB(%struct.address_space*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_balance_fs_bg(%struct.f2fs_sb_info*) #1

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @nr_pages_to_skip(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_f2fs_writepages(i32, %struct.writeback_control*, i64) #1

declare dso_local i64 @nr_pages_to_write(%struct.f2fs_sb_info*, i64, %struct.writeback_control*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @f2fs_sync_node_pages(%struct.f2fs_sb_info*, %struct.writeback_control*, i32, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
