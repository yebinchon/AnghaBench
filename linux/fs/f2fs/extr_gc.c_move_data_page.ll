; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_move_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_move_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_io_info = type { i32, i32, i32*, %struct.page*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@ENOENT = common dso_local global i32 0, align 4
@GC_FAILURE_ATOMIC = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@FG_GC = common dso_local global i32 0, align 4
@BG_GC = common dso_local global i32 0, align 4
@FS_GC_DATA_IO = common dso_local global i32 0, align 4
@LOCK_REQ = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, i32)* @move_data_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_data_page(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.f2fs_io_info, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.page* @f2fs_get_lock_data_page(%struct.inode* %16, i32 %17, i32 1)
  store %struct.page* %18, %struct.page** %12, align 8
  %19 = load %struct.page*, %struct.page** %12, align 8
  %20 = call i64 @IS_ERR(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.page*, %struct.page** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.page* %23)
  store i32 %24, i32* %6, align 4
  br label %161

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.TYPE_4__* @F2FS_I_SB(%struct.inode* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @check_valid_map(%struct.TYPE_4__* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %157

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i64 @f2fs_is_atomic_file(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.TYPE_5__* @F2FS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @GC_FAILURE_ATOMIC, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_4__* @F2FS_I_SB(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %157

59:                                               ; preds = %35
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i64 @f2fs_is_pinned_file(%struct.inode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @FG_GC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i32 @f2fs_pin_file_control(%struct.inode* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %157

73:                                               ; preds = %59
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @BG_GC, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %12, align 8
  %79 = call i64 @PageWriteback(%struct.page* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %157

84:                                               ; preds = %77
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = call i32 @set_page_dirty(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i32 @set_cold_data(%struct.page* %87)
  br label %156

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 0
  %91 = load i32, i32* @FS_GC_DATA_IO, align 4
  store i32 %91, i32* %90, align 8
  %92 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 1
  %93 = load i32, i32* @LOCK_REQ, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 3
  %96 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %96, %struct.page** %95, align 8
  %97 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 4
  %98 = load i32, i32* @NULL_ADDR, align 4
  store i32 %98, i32* %97, align 8
  %99 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 5
  %100 = load i32, i32* @REQ_SYNC, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 6
  %102 = load i32, i32* @REQ_OP_WRITE, align 4
  store i32 %102, i32* %101, align 8
  %103 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 7
  %104 = load i32, i32* @COLD, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 8
  %106 = load i32, i32* @DATA, align 4
  store i32 %106, i32* %105, align 8
  %107 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 9
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %107, align 4
  %111 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 10
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = call %struct.TYPE_4__* @F2FS_I_SB(%struct.inode* %112)
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %111, align 8
  %114 = load %struct.page*, %struct.page** %12, align 8
  %115 = call i32 @PageDirty(%struct.page* %114)
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %143, %89
  %117 = load %struct.page*, %struct.page** %12, align 8
  %118 = load i32, i32* @DATA, align 4
  %119 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %117, i32 %118, i32 1, i32 1)
  %120 = load %struct.page*, %struct.page** %12, align 8
  %121 = call i32 @set_page_dirty(%struct.page* %120)
  %122 = load %struct.page*, %struct.page** %12, align 8
  %123 = call i64 @clear_page_dirty_for_io(%struct.page* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call i32 @inode_dec_dirty_pages(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %128)
  br label %130

130:                                              ; preds = %125, %116
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = call i32 @set_cold_data(%struct.page* %131)
  %133 = call i32 @f2fs_do_write_data_page(%struct.f2fs_io_info* %14)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %130
  %137 = load %struct.page*, %struct.page** %12, align 8
  %138 = call i32 @clear_cold_data(%struct.page* %137)
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i32, i32* @BLK_RW_ASYNC, align 4
  %145 = load i32, i32* @HZ, align 4
  %146 = sdiv i32 %145, 50
  %147 = call i32 @congestion_wait(i32 %144, i32 %146)
  br label %116

148:                                              ; preds = %136
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.page*, %struct.page** %12, align 8
  %153 = call i32 @set_page_dirty(%struct.page* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155, %84
  br label %157

157:                                              ; preds = %156, %81, %70, %39, %32
  %158 = load %struct.page*, %struct.page** %12, align 8
  %159 = call i32 @f2fs_put_page(%struct.page* %158, i32 1)
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %157, %22
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @check_valid_map(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @f2fs_is_pinned_file(%struct.inode*) #1

declare dso_local i32 @f2fs_pin_file_control(%struct.inode*, i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @set_cold_data(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @inode_dec_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_do_write_data_page(%struct.f2fs_io_info*) #1

declare dso_local i32 @clear_cold_data(%struct.page*) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
