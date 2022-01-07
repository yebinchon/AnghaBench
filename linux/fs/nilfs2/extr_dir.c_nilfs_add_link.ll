; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.inode = type { i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.nilfs_dir_entry = type { i64, i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"zero-length directory entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.nilfs_dir_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.nilfs_dir_entry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.inode* @d_inode(i32 %25)
  store %struct.inode* %26, %struct.inode** %6, align 8
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @nilfs_chunk_size(%struct.inode* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @NILFS_DIR_REC_LEN(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %10, align 4
  store %struct.page* null, %struct.page** %13, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i64 @dir_pages(%struct.inode* %40)
  store i64 %41, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %42

42:                                               ; preds = %159, %2
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %162

46:                                               ; preds = %42
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call %struct.page* @nilfs_get_page(%struct.inode* %47, i64 %48)
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = call i32 @PTR_ERR(%struct.page* %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.page*, %struct.page** %13, align 8
  %53 = call i64 @IS_ERR(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %252

56:                                               ; preds = %46
  %57 = load %struct.page*, %struct.page** %13, align 8
  %58 = call i32 @lock_page(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = call i8* @page_address(%struct.page* %59)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @nilfs_last_byte(%struct.inode* %62, i64 %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  store i8* %66, i8** %21, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = bitcast i8* %67 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %68, %struct.nilfs_dir_entry** %14, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub i32 %69, %70
  %72 = load i8*, i8** %17, align 8
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %17, align 8
  br label %75

75:                                               ; preds = %146, %56
  %76 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %77 = bitcast %struct.nilfs_dir_entry* %76 to i8*
  %78 = load i8*, i8** %17, align 8
  %79 = icmp ule i8* %77, %78
  br i1 %79, label %80, label %154

80:                                               ; preds = %75
  %81 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %82 = bitcast %struct.nilfs_dir_entry* %81 to i8*
  %83 = load i8*, i8** %21, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  store i16 0, i16* %12, align 2
  %86 = load i32, i32* %9, align 4
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %11, align 2
  %88 = load i32, i32* %9, align 4
  %89 = trunc i32 %88 to i16
  %90 = call i8* @nilfs_rec_len_to_disk(i16 zeroext %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %93 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %95 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  br label %166

96:                                               ; preds = %80
  %97 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %98 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nilfs_error(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %20, align 4
  br label %254

108:                                              ; preds = %96
  %109 = load i32, i32* @EEXIST, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %114 = call i64 @nilfs_match(i32 %111, i8* %112, %struct.nilfs_dir_entry* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %254

117:                                              ; preds = %108
  %118 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %119 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @NILFS_DIR_REC_LEN(i32 %120)
  %122 = ptrtoint i8* %121 to i16
  store i16 %122, i16* %12, align 2
  %123 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %124 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call zeroext i16 @nilfs_rec_len_from_disk(i64 %125)
  store i16 %126, i16* %11, align 2
  %127 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %128 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %117
  %132 = load i16, i16* %11, align 2
  %133 = zext i16 %132 to i32
  %134 = load i32, i32* %10, align 4
  %135 = icmp uge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %166

137:                                              ; preds = %131, %117
  %138 = load i16, i16* %11, align 2
  %139 = zext i16 %138 to i32
  %140 = load i16, i16* %12, align 2
  %141 = zext i16 %140 to i32
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %141, %142
  %144 = icmp uge i32 %139, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %166

146:                                              ; preds = %137
  %147 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %148 = bitcast %struct.nilfs_dir_entry* %147 to i8*
  %149 = load i16, i16* %11, align 2
  %150 = zext i16 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = bitcast i8* %152 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %153, %struct.nilfs_dir_entry** %14, align 8
  br label %75

154:                                              ; preds = %75
  %155 = load %struct.page*, %struct.page** %13, align 8
  %156 = call i32 @unlock_page(%struct.page* %155)
  %157 = load %struct.page*, %struct.page** %13, align 8
  %158 = call i32 @nilfs_put_page(%struct.page* %157)
  br label %159

159:                                              ; preds = %154
  %160 = load i64, i64* %16, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %16, align 8
  br label %42

162:                                              ; preds = %42
  %163 = call i32 (...) @BUG()
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %257

166:                                              ; preds = %145, %136, %85
  %167 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %168 = bitcast %struct.nilfs_dir_entry* %167 to i8*
  %169 = load %struct.page*, %struct.page** %13, align 8
  %170 = call i8* @page_address(%struct.page* %169)
  %171 = ptrtoint i8* %168 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %18, align 4
  %176 = load i16, i16* %11, align 2
  %177 = zext i16 %176 to i32
  %178 = add i32 %175, %177
  store i32 %178, i32* %19, align 4
  %179 = load %struct.page*, %struct.page** %13, align 8
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %19, align 4
  %182 = call i32 @nilfs_prepare_chunk(%struct.page* %179, i32 %180, i32 %181)
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %166
  br label %254

186:                                              ; preds = %166
  %187 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %188 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %186
  %192 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %193 = bitcast %struct.nilfs_dir_entry* %192 to i8*
  %194 = load i16, i16* %12, align 2
  %195 = zext i16 %194 to i32
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = bitcast i8* %197 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %198, %struct.nilfs_dir_entry** %22, align 8
  %199 = load i16, i16* %11, align 2
  %200 = zext i16 %199 to i32
  %201 = load i16, i16* %12, align 2
  %202 = zext i16 %201 to i32
  %203 = sub nsw i32 %200, %202
  %204 = trunc i32 %203 to i16
  %205 = call i8* @nilfs_rec_len_to_disk(i16 zeroext %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %22, align 8
  %208 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load i16, i16* %12, align 2
  %210 = call i8* @nilfs_rec_len_to_disk(i16 zeroext %209)
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %213 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %22, align 8
  store %struct.nilfs_dir_entry* %214, %struct.nilfs_dir_entry** %14, align 8
  br label %215

215:                                              ; preds = %191, %186
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %218 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  %219 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %220 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @memcpy(i32 %221, i8* %222, i32 %223)
  %225 = load %struct.inode*, %struct.inode** %5, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @cpu_to_le64(i32 %227)
  %229 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %230 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %229, i32 0, i32 2
  store i64 %228, i64* %230, align 8
  %231 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %14, align 8
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = call i32 @nilfs_set_de_type(%struct.nilfs_dir_entry* %231, %struct.inode* %232)
  %234 = load %struct.page*, %struct.page** %13, align 8
  %235 = load %struct.page*, %struct.page** %13, align 8
  %236 = getelementptr inbounds %struct.page, %struct.page* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @nilfs_commit_chunk(%struct.page* %234, i32 %237, i32 %238, i32 %239)
  %241 = load %struct.inode*, %struct.inode** %6, align 8
  %242 = call i32 @current_time(%struct.inode* %241)
  %243 = load %struct.inode*, %struct.inode** %6, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load %struct.inode*, %struct.inode** %6, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 1
  store i32 %242, i32* %246, align 4
  %247 = load %struct.inode*, %struct.inode** %6, align 8
  %248 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %247)
  br label %249

249:                                              ; preds = %254, %215
  %250 = load %struct.page*, %struct.page** %13, align 8
  %251 = call i32 @nilfs_put_page(%struct.page* %250)
  br label %252

252:                                              ; preds = %249, %55
  %253 = load i32, i32* %20, align 4
  store i32 %253, i32* %3, align 4
  br label %257

254:                                              ; preds = %185, %116, %101
  %255 = load %struct.page*, %struct.page** %13, align 8
  %256 = call i32 @unlock_page(%struct.page* %255)
  br label %249

257:                                              ; preds = %252, %162
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @nilfs_chunk_size(%struct.inode*) #1

declare dso_local i8* @NILFS_DIR_REC_LEN(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @nilfs_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @nilfs_last_byte(%struct.inode*, i64) #1

declare dso_local i8* @nilfs_rec_len_to_disk(i16 zeroext) #1

declare dso_local i32 @nilfs_error(i32, i8*) #1

declare dso_local i64 @nilfs_match(i32, i8*, %struct.nilfs_dir_entry*) #1

declare dso_local zeroext i16 @nilfs_rec_len_from_disk(i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @nilfs_put_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nilfs_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_set_de_type(%struct.nilfs_dir_entry*, %struct.inode*) #1

declare dso_local i32 @nilfs_commit_chunk(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
