; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_inlinedir_to_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_inlinedir_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }
%struct.dx_hash_info = type { i64, i64 }
%struct.ext4_dir_entry_2 = type { i64, i32, i32, i8* }
%struct.ext4_iloc = type { i32 }
%struct.fscrypt_str = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@EXT4_INLINE_DOTDOT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_inlinedir_to_tree(%struct.file* %0, %struct.inode* %1, i32 %2, %struct.dx_hash_info* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dx_hash_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ext4_dir_entry_2*, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ext4_iloc, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.ext4_dir_entry_2, align 8
  %27 = alloca %struct.fscrypt_str, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.dx_hash_info* %3, %struct.dx_hash_info** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = call %struct.inode* @file_inode(%struct.file* %28)
  store %struct.inode* %29, %struct.inode** %21, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %25, align 8
  %30 = load %struct.inode*, %struct.inode** %21, align 8
  %31 = call i32 @ext4_get_inode_loc(%struct.inode* %30, %struct.ext4_iloc* %24)
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %22, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* %22, align 4
  store i32 %35, i32* %8, align 4
  br label %235

36:                                               ; preds = %7
  %37 = load %struct.inode*, %struct.inode** %21, align 8
  %38 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %21, align 8
  %42 = call i32 @ext4_has_inline_data(%struct.inode* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %21, align 8
  %46 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @up_read(i32* %47)
  %49 = load i32*, i32** %15, align 8
  store i32 0, i32* %49, align 4
  br label %228

50:                                               ; preds = %36
  %51 = load %struct.inode*, %struct.inode** %21, align 8
  %52 = call i32 @ext4_get_inline_size(%struct.inode* %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @GFP_NOFS, align 4
  %55 = call i8* @kmalloc(i32 %53, i32 %54)
  store i8* %55, i8** %25, align 8
  %56 = load i8*, i8** %25, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %22, align 4
  %61 = load %struct.inode*, %struct.inode** %21, align 8
  %62 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  br label %228

65:                                               ; preds = %50
  %66 = load %struct.inode*, %struct.inode** %21, align 8
  %67 = load i8*, i8** %25, align 8
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @ext4_read_inline_data(%struct.inode* %66, i8* %67, i32 %68, %struct.ext4_iloc* %24)
  store i32 %69, i32* %22, align 4
  %70 = load %struct.inode*, %struct.inode** %21, align 8
  %71 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @up_read(i32* %72)
  %74 = load i32, i32* %22, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %228

77:                                               ; preds = %65
  store i32 0, i32* %19, align 4
  %78 = load i8*, i8** %25, align 8
  %79 = bitcast i8* %78 to %struct.ext4_dir_entry_2*
  %80 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le32_to_cpu(i64 %81)
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %223, %200, %194, %77
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %23, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %226

87:                                               ; preds = %83
  %88 = load i32, i32* %19, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load %struct.inode*, %struct.inode** %21, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 1
  store i32 1, i32* %97, align 8
  %98 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strcpy(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @EXT4_DIR_REC_LEN(i32 %102)
  %104 = load i32, i32* %23, align 4
  %105 = call i8* @ext4_rec_len_to_disk(i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 3
  store i8* %105, i8** %106, align 8
  %107 = load %struct.inode*, %struct.inode** %21, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @S_IFDIR, align 4
  %111 = call i32 @ext4_set_de_type(i32 %109, %struct.ext4_dir_entry_2* %26, i32 %110)
  store %struct.ext4_dir_entry_2* %26, %struct.ext4_dir_entry_2** %20, align 8
  %112 = load i32, i32* @EXT4_INLINE_DOTDOT_OFFSET, align 4
  store i32 %112, i32* %19, align 4
  br label %167

113:                                              ; preds = %87
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @EXT4_INLINE_DOTDOT_OFFSET, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %113
  %118 = load i32, i32* %18, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 1
  store i32 2, i32* %122, align 8
  %123 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strcpy(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @EXT4_DIR_REC_LEN(i32 %127)
  %129 = load i32, i32* %23, align 4
  %130 = call i8* @ext4_rec_len_to_disk(i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 3
  store i8* %130, i8** %131, align 8
  %132 = load %struct.inode*, %struct.inode** %21, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @S_IFDIR, align 4
  %136 = call i32 @ext4_set_de_type(i32 %134, %struct.ext4_dir_entry_2* %26, i32 %135)
  store %struct.ext4_dir_entry_2* %26, %struct.ext4_dir_entry_2** %20, align 8
  %137 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  store i32 %137, i32* %19, align 4
  br label %166

138:                                              ; preds = %113
  %139 = load i8*, i8** %25, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr i8, i8* %139, i64 %141
  %143 = bitcast i8* %142 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %143, %struct.ext4_dir_entry_2** %20, align 8
  %144 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %145 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %23, align 4
  %148 = call i64 @ext4_rec_len_from_disk(i8* %146, i32 %147)
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %19, align 4
  %153 = load %struct.inode*, %struct.inode** %21, align 8
  %154 = load %struct.file*, %struct.file** %9, align 8
  %155 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %156 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %24, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %25, align 8
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %19, align 4
  %161 = call i64 @ext4_check_dir_entry(%struct.inode* %153, %struct.file* %154, %struct.ext4_dir_entry_2* %155, i32 %157, i8* %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %138
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %22, align 4
  br label %228

165:                                              ; preds = %138
  br label %166

166:                                              ; preds = %165, %117
  br label %167

167:                                              ; preds = %166, %90
  %168 = load %struct.inode*, %struct.inode** %10, align 8
  %169 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %170 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %173 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %176 = call i32 @ext4fs_dirhash(%struct.inode* %168, i32 %171, i32 %174, %struct.dx_hash_info* %175)
  %177 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %178 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %194, label %182

182:                                              ; preds = %167
  %183 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %184 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %13, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %190 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %14, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188, %167
  br label %83

195:                                              ; preds = %188, %182
  %196 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %197 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %83

201:                                              ; preds = %195
  %202 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %203 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %27, i32 0, i32 1
  store i32 %204, i32* %205, align 4
  %206 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %207 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %27, i32 0, i32 0
  store i32 %208, i32* %209, align 4
  %210 = load %struct.file*, %struct.file** %9, align 8
  %211 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %212 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %215 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %20, align 8
  %218 = call i32 @ext4_htree_store_dirent(%struct.file* %210, i64 %213, i64 %216, %struct.ext4_dir_entry_2* %217, %struct.fscrypt_str* %27)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %201
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %22, align 4
  br label %228

223:                                              ; preds = %201
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %17, align 4
  br label %83

226:                                              ; preds = %83
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %22, align 4
  br label %228

228:                                              ; preds = %226, %221, %163, %76, %58, %44
  %229 = load i8*, i8** %25, align 8
  %230 = call i32 @kfree(i8* %229)
  %231 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %24, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @brelse(i32 %232)
  %234 = load i32, i32* %22, align 4
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %228, %34
  %236 = load i32, i32* %8, align 4
  ret i32 %236
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ext4_read_inline_data(%struct.inode*, i8*, i32, %struct.ext4_iloc*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @ext4_rec_len_to_disk(i32, i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext4_set_de_type(i32, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local i64 @ext4_rec_len_from_disk(i8*, i32) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, %struct.file*, %struct.ext4_dir_entry_2*, i32, i8*, i32, i32) #1

declare dso_local i32 @ext4fs_dirhash(%struct.inode*, i32, i32, %struct.dx_hash_info*) #1

declare dso_local i32 @ext4_htree_store_dirent(%struct.file*, i64, i64, %struct.ext4_dir_entry_2*, %struct.fscrypt_str*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
