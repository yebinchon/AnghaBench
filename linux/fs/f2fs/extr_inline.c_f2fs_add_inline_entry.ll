; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_add_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_add_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_ptr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@FI_NEW_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_add_inline_entry(%struct.inode* %0, %struct.qstr* %1, %struct.qstr* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.f2fs_sb_info*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.f2fs_dentry_ptr, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.qstr* %1, %struct.qstr** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %23)
  store %struct.f2fs_sb_info* %24, %struct.f2fs_sb_info** %14, align 8
  store i8* null, i8** %18, align 8
  %25 = load %struct.qstr*, %struct.qstr** %9, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GET_DENTRY_SLOTS(i32 %27)
  store i32 %28, i32* %20, align 4
  store %struct.page* null, %struct.page** %21, align 8
  store i32 0, i32* %22, align 4
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %14, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %29, i32 %32)
  store %struct.page* %33, %struct.page** %15, align 8
  %34 = load %struct.page*, %struct.page** %15, align 8
  %35 = call i64 @IS_ERR(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load %struct.page*, %struct.page** %15, align 8
  %39 = call i32 @PTR_ERR(%struct.page* %38)
  store i32 %39, i32* %7, align 4
  br label %141

40:                                               ; preds = %6
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.page*, %struct.page** %15, align 8
  %43 = call i8* @inline_data_addr(%struct.inode* %41, %struct.page* %42)
  store i8* %43, i8** %18, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = call i32 @make_dentry_ptr_inline(%struct.inode* %44, %struct.f2fs_dentry_ptr* %19, i8* %45)
  %47 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %19, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %20, align 4
  %50 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %19, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @f2fs_room_for_filename(i32 %48, i32 %49, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %19, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %53, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %40
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load %struct.page*, %struct.page** %15, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @f2fs_convert_inline_dir(%struct.inode* %58, %struct.page* %59, i8* %60)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %22, align 4
  store i32 %65, i32* %7, align 4
  br label %141

66:                                               ; preds = %57
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %22, align 4
  br label %137

69:                                               ; preds = %40
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = icmp ne %struct.inode* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @down_write(i32* %75)
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = load %struct.qstr*, %struct.qstr** %9, align 8
  %80 = load %struct.qstr*, %struct.qstr** %10, align 8
  %81 = load %struct.page*, %struct.page** %15, align 8
  %82 = call %struct.page* @f2fs_init_inode_metadata(%struct.inode* %77, %struct.inode* %78, %struct.qstr* %79, %struct.qstr* %80, %struct.page* %81)
  store %struct.page* %82, %struct.page** %21, align 8
  %83 = load %struct.page*, %struct.page** %21, align 8
  %84 = call i64 @IS_ERR(%struct.page* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load %struct.page*, %struct.page** %21, align 8
  %88 = call i32 @PTR_ERR(%struct.page* %87)
  store i32 %88, i32* %22, align 4
  br label %128

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.page*, %struct.page** %15, align 8
  %92 = load i32, i32* @NODE, align 4
  %93 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %91, i32 %92, i32 1, i32 1)
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = load %struct.qstr*, %struct.qstr** %9, align 8
  %96 = call i32 @f2fs_dentry_hash(%struct.inode* %94, %struct.qstr* %95, i32* null)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.qstr*, %struct.qstr** %9, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @f2fs_update_dentry(i32 %97, i32 %98, %struct.f2fs_dentry_ptr* %19, %struct.qstr* %99, i32 %100, i32 %101)
  %103 = load %struct.page*, %struct.page** %15, align 8
  %104 = call i32 @set_page_dirty(%struct.page* %103)
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %90
  %108 = load %struct.inode*, %struct.inode** %11, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @f2fs_i_pino_write(%struct.inode* %108, i32 %111)
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = load i32, i32* @FI_NEW_INODE, align 4
  %115 = call i64 @is_inode_flag_set(%struct.inode* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.inode*, %struct.inode** %11, align 8
  %119 = load %struct.page*, %struct.page** %21, align 8
  %120 = call i32 @f2fs_update_inode(%struct.inode* %118, %struct.page* %119)
  br label %121

121:                                              ; preds = %117, %107
  %122 = load %struct.page*, %struct.page** %21, align 8
  %123 = call i32 @f2fs_put_page(%struct.page* %122, i32 1)
  br label %124

124:                                              ; preds = %121, %90
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = load %struct.inode*, %struct.inode** %11, align 8
  %127 = call i32 @f2fs_update_parent_metadata(%struct.inode* %125, %struct.inode* %126, i32 0)
  br label %128

128:                                              ; preds = %124, %86
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = icmp ne %struct.inode* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %11, align 8
  %133 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = call i32 @up_write(i32* %134)
  br label %136

136:                                              ; preds = %131, %128
  br label %137

137:                                              ; preds = %136, %66
  %138 = load %struct.page*, %struct.page** %15, align 8
  %139 = call i32 @f2fs_put_page(%struct.page* %138, i32 1)
  %140 = load i32, i32* %22, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %64, %37
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local i32 @f2fs_room_for_filename(i32, i32, i32) #1

declare dso_local i32 @f2fs_convert_inline_dir(%struct.inode*, %struct.page*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_init_inode_metadata(%struct.inode*, %struct.inode*, %struct.qstr*, %struct.qstr*, %struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_dentry_hash(%struct.inode*, %struct.qstr*, i32*) #1

declare dso_local i32 @f2fs_update_dentry(i32, i32, %struct.f2fs_dentry_ptr*, %struct.qstr*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_i_pino_write(%struct.inode*, i32) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_update_parent_metadata(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
