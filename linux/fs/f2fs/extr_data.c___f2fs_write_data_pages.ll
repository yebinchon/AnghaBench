; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___f2fs_write_data_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___f2fs_write_data_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode*, %struct.TYPE_2__* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i64, i32 }
%struct.f2fs_sb_info = type { i32*, i32 }
%struct.blk_plug = type { i32 }

@WB_SYNC_NONE = common dso_local global i64 0, align 8
@SBI_POR_DOING = common dso_local global i32 0, align 4
@DATA = common dso_local global i64 0, align 8
@DIRTY_DENTS = common dso_local global i32 0, align 4
@FI_DO_DEFRAG = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, i32)* @__f2fs_write_data_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_write_data_pages(%struct.address_space* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.f2fs_sb_info*, align 8
  %10 = alloca %struct.blk_plug, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.address_space*, %struct.address_space** %5, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %16)
  store %struct.f2fs_sb_info* %17, %struct.f2fs_sb_info** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.address_space*, %struct.address_space** %5, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i64 @get_dirty_pages(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %31 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WB_SYNC_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %161

36:                                               ; preds = %29, %25
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %38 = load i32, i32* @SBI_POR_DOING, align 4
  %39 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %37, i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %146

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i64 @IS_NOQUOTA(%struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49, %43
  %54 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %55 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WB_SYNC_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = call i64 @get_dirty_pages(%struct.inode* %60)
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %63 = load i64, i64* @DATA, align 8
  %64 = call i64 @nr_pages_to_skip(%struct.f2fs_sb_info* %62, i64 %63)
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %68 = load i32, i32* @DIRTY_DENTS, align 4
  %69 = call i64 @f2fs_available_free_memory(%struct.f2fs_sb_info* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %146

72:                                               ; preds = %66, %59, %53, %49
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = load i32, i32* @FI_DO_DEFRAG, align 4
  %75 = call i64 @is_inode_flag_set(%struct.inode* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %146

78:                                               ; preds = %72
  %79 = load %struct.address_space*, %struct.address_space** %5, align 8
  %80 = getelementptr inbounds %struct.address_space, %struct.address_space* %79, i32 0, i32 0
  %81 = load %struct.inode*, %struct.inode** %80, align 8
  %82 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %83 = load i64, i64* @DATA, align 8
  %84 = call i32 @trace_f2fs_writepages(%struct.inode* %81, %struct.writeback_control* %82, i64 %83)
  %85 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %86 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @WB_SYNC_ALL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %92 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @DATA, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = call i32 @atomic_inc(i32* %95)
  br label %107

97:                                               ; preds = %78
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %99 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @DATA, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %146

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %90
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %110 = call i64 @__should_serialize_io(%struct.inode* %108, %struct.writeback_control* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %114 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %113, i32 0, i32 1
  %115 = call i32 @mutex_lock(i32* %114)
  store i32 1, i32* %12, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = call i32 @blk_start_plug(%struct.blk_plug* %10)
  %118 = load %struct.address_space*, %struct.address_space** %5, align 8
  %119 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @f2fs_write_cache_pages(%struct.address_space* %118, %struct.writeback_control* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = call i32 @blk_finish_plug(%struct.blk_plug* %10)
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %127 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %131 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @WB_SYNC_ALL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %137 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @DATA, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = call i32 @atomic_dec(i32* %140)
  br label %142

142:                                              ; preds = %135, %129
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %161

146:                                              ; preds = %105, %77, %71, %42
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = call i64 @get_dirty_pages(%struct.inode* %147)
  %149 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %150 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 8
  %155 = load %struct.address_space*, %struct.address_space** %5, align 8
  %156 = getelementptr inbounds %struct.address_space, %struct.address_space* %155, i32 0, i32 0
  %157 = load %struct.inode*, %struct.inode** %156, align 8
  %158 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %159 = load i64, i64* @DATA, align 8
  %160 = call i32 @trace_f2fs_writepages(%struct.inode* %157, %struct.writeback_control* %158, i64 %159)
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %146, %142, %35, %24
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @get_dirty_pages(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @nr_pages_to_skip(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @trace_f2fs_writepages(%struct.inode*, %struct.writeback_control*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @__should_serialize_io(%struct.inode*, %struct.writeback_control*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @f2fs_write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
