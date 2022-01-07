; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_add_regular_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_add_regular_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_block = type { i32 }
%struct.f2fs_dentry_ptr = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@FAULT_DIR_DEPTH = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_DIR_HASH_DEPTH = common dso_local global i32 0, align 4
@NR_DENTRY_IN_BLOCK = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@FI_NEW_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_add_regular_entry(%struct.inode* %0, %struct.qstr* %1, %struct.qstr* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.page*, align 8
  %23 = alloca %struct.f2fs_dentry_block*, align 8
  %24 = alloca %struct.f2fs_dentry_ptr, align 4
  %25 = alloca %struct.page*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.qstr* %1, %struct.qstr** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.page* null, %struct.page** %22, align 8
  store %struct.f2fs_dentry_block* null, %struct.f2fs_dentry_block** %23, align 8
  store %struct.page* null, %struct.page** %25, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.qstr*, %struct.qstr** %9, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_DENTRY_SLOTS(i32 %30)
  store i32 %31, i32* %26, align 4
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = load %struct.qstr*, %struct.qstr** %9, align 8
  %34 = call i64 @f2fs_dentry_hash(%struct.inode* %32, %struct.qstr* %33, i32* null)
  store i64 %34, i64* %19, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %19, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %6
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %6
  br label %54

54:                                               ; preds = %138, %53
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i32 @F2FS_I_SB(%struct.inode* %55)
  %57 = load i32, i32* @FAULT_DIR_DEPTH, align 4
  %58 = call i64 @time_to_inject(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @FAULT_DIR_DEPTH, align 4
  %62 = call i32 @f2fs_show_injection_info(i32 %61)
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %211

65:                                               ; preds = %54
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @MAX_DIR_HASH_DEPTH, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %211

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dir_buckets(i32 %83, i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @bucket_blocks(i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %19, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = load i32, i32* %20, align 4
  %99 = urem i32 %97, %98
  %100 = call i64 @dir_block_index(i32 %91, i32 %95, i32 %99)
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %135, %82
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i32, i32* %21, align 4
  %106 = zext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = sub i64 %107, 1
  %109 = icmp ule i64 %103, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = load i64, i64* %18, align 8
  %113 = call %struct.page* @f2fs_get_new_data_page(%struct.inode* %111, i32* null, i64 %112, i32 1)
  store %struct.page* %113, %struct.page** %22, align 8
  %114 = load %struct.page*, %struct.page** %22, align 8
  %115 = call i64 @IS_ERR(%struct.page* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.page*, %struct.page** %22, align 8
  %119 = call i32 @PTR_ERR(%struct.page* %118)
  store i32 %119, i32* %7, align 4
  br label %211

120:                                              ; preds = %110
  %121 = load %struct.page*, %struct.page** %22, align 8
  %122 = call %struct.f2fs_dentry_block* @page_address(%struct.page* %121)
  store %struct.f2fs_dentry_block* %122, %struct.f2fs_dentry_block** %23, align 8
  %123 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %23, align 8
  %124 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %123, i32 0, i32 0
  %125 = load i32, i32* %26, align 4
  %126 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %127 = call i32 @f2fs_room_for_filename(i32* %124, i32 %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %141

132:                                              ; preds = %120
  %133 = load %struct.page*, %struct.page** %22, align 8
  %134 = call i32 @f2fs_put_page(%struct.page* %133, i32 1)
  br label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %18, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %18, align 8
  br label %102

138:                                              ; preds = %102
  %139 = load i32, i32* %15, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %54

141:                                              ; preds = %131
  %142 = load %struct.page*, %struct.page** %22, align 8
  %143 = load i32, i32* @DATA, align 4
  %144 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %142, i32 %143, i32 1, i32 1)
  %145 = load %struct.inode*, %struct.inode** %11, align 8
  %146 = icmp ne %struct.inode* %145, null
  br i1 %146, label %147, label %164

147:                                              ; preds = %141
  %148 = load %struct.inode*, %struct.inode** %11, align 8
  %149 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %148)
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = call i32 @down_write(i32* %150)
  %152 = load %struct.inode*, %struct.inode** %11, align 8
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = load %struct.qstr*, %struct.qstr** %9, align 8
  %155 = load %struct.qstr*, %struct.qstr** %10, align 8
  %156 = call %struct.page* @f2fs_init_inode_metadata(%struct.inode* %152, %struct.inode* %153, %struct.qstr* %154, %struct.qstr* %155, i32* null)
  store %struct.page* %156, %struct.page** %25, align 8
  %157 = load %struct.page*, %struct.page** %25, align 8
  %158 = call i64 @IS_ERR(%struct.page* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %147
  %161 = load %struct.page*, %struct.page** %25, align 8
  %162 = call i32 @PTR_ERR(%struct.page* %161)
  store i32 %162, i32* %27, align 4
  br label %199

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %141
  %165 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %23, align 8
  %166 = call i32 @make_dentry_ptr_block(i32* null, %struct.f2fs_dentry_ptr* %24, %struct.f2fs_dentry_block* %165)
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.qstr*, %struct.qstr** %9, align 8
  %170 = load i64, i64* %19, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @f2fs_update_dentry(i32 %167, i32 %168, %struct.f2fs_dentry_ptr* %24, %struct.qstr* %169, i64 %170, i32 %171)
  %173 = load %struct.page*, %struct.page** %22, align 8
  %174 = call i32 @set_page_dirty(%struct.page* %173)
  %175 = load %struct.inode*, %struct.inode** %11, align 8
  %176 = icmp ne %struct.inode* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %164
  %178 = load %struct.inode*, %struct.inode** %11, align 8
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @f2fs_i_pino_write(%struct.inode* %178, i32 %181)
  %183 = load %struct.inode*, %struct.inode** %11, align 8
  %184 = load i32, i32* @FI_NEW_INODE, align 4
  %185 = call i64 @is_inode_flag_set(%struct.inode* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = load %struct.inode*, %struct.inode** %11, align 8
  %189 = load %struct.page*, %struct.page** %25, align 8
  %190 = call i32 @f2fs_update_inode(%struct.inode* %188, %struct.page* %189)
  br label %191

191:                                              ; preds = %187, %177
  %192 = load %struct.page*, %struct.page** %25, align 8
  %193 = call i32 @f2fs_put_page(%struct.page* %192, i32 1)
  br label %194

194:                                              ; preds = %191, %164
  %195 = load %struct.inode*, %struct.inode** %8, align 8
  %196 = load %struct.inode*, %struct.inode** %11, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @f2fs_update_parent_metadata(%struct.inode* %195, %struct.inode* %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %160
  %200 = load %struct.inode*, %struct.inode** %11, align 8
  %201 = icmp ne %struct.inode* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.inode*, %struct.inode** %11, align 8
  %204 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 3
  %206 = call i32 @up_write(i32* %205)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.page*, %struct.page** %22, align 8
  %209 = call i32 @f2fs_put_page(%struct.page* %208, i32 1)
  %210 = load i32, i32* %27, align 4
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %207, %117, %72, %60
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i64 @f2fs_dentry_hash(%struct.inode*, %struct.qstr*, i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @time_to_inject(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dir_buckets(i32, i32) #1

declare dso_local i32 @bucket_blocks(i32) #1

declare dso_local i64 @dir_block_index(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.page* @f2fs_get_new_data_page(%struct.inode*, i32*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_dentry_block* @page_address(%struct.page*) #1

declare dso_local i32 @f2fs_room_for_filename(i32*, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.page* @f2fs_init_inode_metadata(%struct.inode*, %struct.inode*, %struct.qstr*, %struct.qstr*, i32*) #1

declare dso_local i32 @make_dentry_ptr_block(i32*, %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_block*) #1

declare dso_local i32 @f2fs_update_dentry(i32, i32, %struct.f2fs_dentry_ptr*, %struct.qstr*, i64, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_i_pino_write(%struct.inode*, i32) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_update_parent_metadata(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
