; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_find_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i16, i16, i32*, i32, i32*, %struct.ext4_extent_header*, %struct.buffer_head* }
%struct.ext4_extent_header = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@EXT4_MAX_EXTENT_DEPTH = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [35 x i8] c"inode has invalid extent depth: %d\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"depth %d: num %d, max %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %0, i32 %1, %struct.ext4_ext_path** %2, i32 %3) #0 {
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_ext_path**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent_header*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_ext_path*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %18 = icmp ne %struct.ext4_ext_path** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %21 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %20, align 8
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.ext4_ext_path* [ %21, %19 ], [ null, %22 ]
  store %struct.ext4_ext_path* %24, %struct.ext4_ext_path** %12, align 8
  store i16 0, i16* %15, align 2
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %25)
  store %struct.ext4_extent_header* %26, %struct.ext4_extent_header** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call signext i16 @ext_depth(%struct.inode* %27)
  store i16 %28, i16* %13, align 2
  %29 = load i16, i16* %13, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load i16, i16* %13, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* @EXT4_MAX_EXTENT_DEPTH, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %23
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load i16, i16* %13, align 2
  %41 = call i32 @EXT4_ERROR_INODE(%struct.inode* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i16 signext %40)
  %42 = load i32, i32* @EFSCORRUPTED, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %229

44:                                               ; preds = %32
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %46 = icmp ne %struct.ext4_ext_path* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %49 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %48)
  %50 = load i16, i16* %13, align 2
  %51 = sext i16 %50 to i32
  %52 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %53 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %52, i64 0
  %54 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 8
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %60 = call i32 @kfree(%struct.ext4_ext_path* %59)
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %12, align 8
  %61 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %61, align 8
  br label %62

62:                                               ; preds = %58, %47
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %65 = icmp ne %struct.ext4_ext_path* %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %63
  %67 = load i16, i16* %13, align 2
  %68 = sext i16 %67 to i32
  %69 = add nsw i32 %68, 2
  %70 = trunc i32 %69 to i16
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call %struct.ext4_ext_path* @kcalloc(i16 signext %70, i32 48, i32 %71)
  store %struct.ext4_ext_path* %72, %struct.ext4_ext_path** %12, align 8
  %73 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %74 = icmp ne %struct.ext4_ext_path* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.ext4_ext_path* @ERR_PTR(i32 %81)
  store %struct.ext4_ext_path* %82, %struct.ext4_ext_path** %5, align 8
  br label %241

83:                                               ; preds = %66
  %84 = load i16, i16* %13, align 2
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %85, 1
  %87 = trunc i32 %86 to i16
  %88 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i64 0
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %89, i32 0, i32 0
  store i16 %87, i16* %90, align 8
  br label %91

91:                                               ; preds = %83, %63
  %92 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %94 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %93, i64 0
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %94, i32 0, i32 5
  store %struct.ext4_extent_header* %92, %struct.ext4_extent_header** %95, align 8
  %96 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i64 0
  %98 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %97, i32 0, i32 6
  store %struct.buffer_head* null, %struct.buffer_head** %98, align 8
  %99 = load i16, i16* %13, align 2
  store i16 %99, i16* %14, align 2
  br label %100

100:                                              ; preds = %162, %91
  %101 = load i16, i16* %14, align 2
  %102 = icmp ne i16 %101, 0
  br i1 %102, label %103, label %179

103:                                              ; preds = %100
  %104 = load i16, i16* %15, align 2
  %105 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %106 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %110 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = call i32 @ext_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i16 signext %104, i32 %108, i32 %112)
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %116 = load i16, i16* %15, align 2
  %117 = sext i16 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i64 %118
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ext4_ext_binsearch_idx(%struct.inode* %114, %struct.ext4_ext_path* %119, i32 %120)
  %122 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %123 = load i16, i16* %15, align 2
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %122, i64 %124
  %126 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @ext4_idx_pblock(i32* %127)
  %129 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %130 = load i16, i16* %15, align 2
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %129, i64 %131
  %133 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %132, i32 0, i32 3
  store i32 %128, i32* %133, align 8
  %134 = load i16, i16* %14, align 2
  %135 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %136 = load i16, i16* %15, align 2
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %135, i64 %137
  %139 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %138, i32 0, i32 1
  store i16 %134, i16* %139, align 2
  %140 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %141 = load i16, i16* %15, align 2
  %142 = sext i16 %141 to i64
  %143 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %140, i64 %142
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %6, align 8
  %146 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %147 = load i16, i16* %15, align 2
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %146, i64 %148
  %150 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i16, i16* %14, align 2
  %153 = add i16 %152, -1
  store i16 %153, i16* %14, align 2
  %154 = load i32, i32* %9, align 4
  %155 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %145, i32 %151, i16 signext %153, i32 %154)
  store %struct.buffer_head* %155, %struct.buffer_head** %11, align 8
  %156 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %157 = call i64 @IS_ERR(%struct.buffer_head* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %103
  %160 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %161 = call i32 @PTR_ERR(%struct.buffer_head* %160)
  store i32 %161, i32* %16, align 4
  br label %229

162:                                              ; preds = %103
  %163 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %164 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %163)
  store %struct.ext4_extent_header* %164, %struct.ext4_extent_header** %10, align 8
  %165 = load i16, i16* %15, align 2
  %166 = add i16 %165, 1
  store i16 %166, i16* %15, align 2
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %169 = load i16, i16* %15, align 2
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %168, i64 %170
  %172 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %171, i32 0, i32 6
  store %struct.buffer_head* %167, %struct.buffer_head** %172, align 8
  %173 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %174 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %175 = load i16, i16* %15, align 2
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %174, i64 %176
  %178 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %177, i32 0, i32 5
  store %struct.ext4_extent_header* %173, %struct.ext4_extent_header** %178, align 8
  br label %100

179:                                              ; preds = %100
  %180 = load i16, i16* %14, align 2
  %181 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %182 = load i16, i16* %15, align 2
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %181, i64 %183
  %185 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %184, i32 0, i32 1
  store i16 %180, i16* %185, align 2
  %186 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %187 = load i16, i16* %15, align 2
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %186, i64 %188
  %190 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %189, i32 0, i32 2
  store i32* null, i32** %190, align 8
  %191 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %192 = load i16, i16* %15, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i64 %193
  %195 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %194, i32 0, i32 4
  store i32* null, i32** %195, align 8
  %196 = load %struct.inode*, %struct.inode** %6, align 8
  %197 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %198 = load i16, i16* %15, align 2
  %199 = sext i16 %198 to i32
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %197, i64 %200
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @ext4_ext_binsearch(%struct.inode* %196, %struct.ext4_ext_path* %201, i32 %202)
  %204 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %205 = load i16, i16* %15, align 2
  %206 = sext i16 %205 to i64
  %207 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %204, i64 %206
  %208 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %179
  %212 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %213 = load i16, i16* %15, align 2
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %212, i64 %214
  %216 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @ext4_ext_pblock(i32* %217)
  %219 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %220 = load i16, i16* %15, align 2
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %219, i64 %221
  %223 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %222, i32 0, i32 3
  store i32 %218, i32* %223, align 8
  br label %224

224:                                              ; preds = %211, %179
  %225 = load %struct.inode*, %struct.inode** %6, align 8
  %226 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %227 = call i32 @ext4_ext_show_path(%struct.inode* %225, %struct.ext4_ext_path* %226)
  %228 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  store %struct.ext4_ext_path* %228, %struct.ext4_ext_path** %5, align 8
  br label %241

229:                                              ; preds = %159, %38
  %230 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %231 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %230)
  %232 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %233 = call i32 @kfree(%struct.ext4_ext_path* %232)
  %234 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %235 = icmp ne %struct.ext4_ext_path** %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %237, align 8
  br label %238

238:                                              ; preds = %236, %229
  %239 = load i32, i32* %16, align 4
  %240 = call %struct.ext4_ext_path* @ERR_PTR(i32 %239)
  store %struct.ext4_ext_path* %240, %struct.ext4_ext_path** %5, align 8
  br label %241

241:                                              ; preds = %238, %224, %79
  %242 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  ret %struct.ext4_ext_path* %242
}

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local signext i16 @ext_depth(%struct.inode*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 signext) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @kcalloc(i16 signext, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ext4_ext_path* @ERR_PTR(i32) #1

declare dso_local i32 @ext_debug(i8*, i16 signext, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_binsearch_idx(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32*) #1

declare dso_local %struct.buffer_head* @read_extent_tree_block(%struct.inode*, i32, i16 signext, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_binsearch(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_ext_pblock(i32*) #1

declare dso_local i32 @ext4_ext_show_path(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
