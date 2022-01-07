; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_handle_unwritten_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_handle_unwritten_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_map_blocks = type { i32, i8*, i64, i32 }
%struct.ext4_ext_path = type { i32 }

@.str = private unnamed_addr constant [105 x i8] c"ext4_ext_handle_unwritten_extents: inode %lu, logical block %llu, max_blocks %u, flags %x, allocated %u\0A\00", align 1
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CONVERT = common dso_local global i32 0, align 4
@EXT4_MAP_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_ZERO = common dso_local global i32 0, align 4
@EXT4_MAP_MAPPED = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_UNWRIT_EXT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EXT4_MAP_NEW = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**, i32, i32, i8*)* @ext4_ext_handle_unwritten_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_handle_unwritten_extents(i32* %0, %struct.inode* %1, %struct.ext4_map_blocks* %2, %struct.ext4_ext_path** %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_map_blocks*, align 8
  %11 = alloca %struct.ext4_ext_path**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ext4_ext_path*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_map_blocks* %2, %struct.ext4_map_blocks** %10, align 8
  store %struct.ext4_ext_path** %3, %struct.ext4_ext_path*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %19 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  store %struct.ext4_ext_path* %19, %struct.ext4_ext_path** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %24 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %27 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @ext_debug(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %34 = call i32 @ext4_ext_show_leaf(%struct.inode* %32, %struct.ext4_ext_path* %33)
  %35 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @trace_ext4_ext_handle_unwritten_extents(%struct.inode* %38, %struct.ext4_map_blocks* %39, i32 %40, i32 %41, i8* %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %7
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %52 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @EXT4_GET_BLOCKS_CONVERT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ext4_split_convert_extents(i32* %49, %struct.inode* %50, %struct.ext4_map_blocks* %51, %struct.ext4_ext_path** %52, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %180

60:                                               ; preds = %48
  %61 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %62 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %63 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %180

66:                                               ; preds = %7
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @EXT4_GET_BLOCKS_CONVERT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @EXT4_GET_BLOCKS_ZERO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %79 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %84 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %89 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @ext4_issue_zeroout(%struct.inode* %87, i64 %90, i8* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %252

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %102 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %103 = call i32 @ext4_convert_unwritten_extents_endio(i32* %99, %struct.inode* %100, %struct.ext4_map_blocks* %101, %struct.ext4_ext_path** %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %98
  %107 = load i32*, i32** %8, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = call i32 @ext4_update_inode_fsync_trans(i32* %107, %struct.inode* %108, i32 1)
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %113 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %116 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %117 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @check_eofblocks_fl(i32* %110, %struct.inode* %111, i64 %114, %struct.ext4_ext_path* %115, i32 %118)
  store i32 %119, i32* %17, align 4
  br label %122

120:                                              ; preds = %98
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %106
  %123 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %124 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %125 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %130 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %133 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ugt i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %138 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %136, %122
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %143 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %252

144:                                              ; preds = %66
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @EXT4_GET_BLOCKS_UNWRIT_EXT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %151 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %152 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %206

155:                                              ; preds = %144
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %162 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %163 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %232

166:                                              ; preds = %155
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.inode*, %struct.inode** %9, align 8
  %169 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %170 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @ext4_ext_convert_to_initialized(i32* %167, %struct.inode* %168, %struct.ext4_map_blocks* %169, %struct.ext4_ext_path** %170, i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.inode*, %struct.inode** %9, align 8
  %178 = call i32 @ext4_update_inode_fsync_trans(i32* %176, %struct.inode* %177, i32 1)
  br label %179

179:                                              ; preds = %175, %166
  br label %180

180:                                              ; preds = %179, %60, %59
  %181 = load i32, i32* %16, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %17, align 4
  br label %252

185:                                              ; preds = %180
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %185
  %188 = load i32, i32* @EXT4_MAP_NEW, align 4
  %189 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %190 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %195 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ugt i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %200 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %198, %187
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %205 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %149
  %207 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %208 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %209 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @EXT4_GET_BLOCKS_KEEP_SIZE, align 4
  %214 = and i32 %212, %213
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %206
  %217 = load i32*, i32** %8, align 8
  %218 = load %struct.inode*, %struct.inode** %9, align 8
  %219 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %220 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %223 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %224 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @check_eofblocks_fl(i32* %217, %struct.inode* %218, i64 %221, %struct.ext4_ext_path* %222, i32 %225)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %216
  br label %252

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %206
  br label %232

232:                                              ; preds = %231, %160
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %235 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ugt i32 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %240 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.inode*, %struct.inode** %9, align 8
  %244 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %245 = call i32 @ext4_ext_show_leaf(%struct.inode* %243, %struct.ext4_ext_path* %244)
  %246 = load i8*, i8** %14, align 8
  %247 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %248 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %10, align 8
  %251 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %242, %229, %183, %140, %96
  %253 = load i32, i32* %17, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* %17, align 4
  br label %259

257:                                              ; preds = %252
  %258 = load i32, i32* %13, align 4
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  ret i32 %260
}

declare dso_local i32 @ext_debug(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @trace_ext4_ext_handle_unwritten_extents(%struct.inode*, %struct.ext4_map_blocks*, i32, i32, i8*) #1

declare dso_local i32 @ext4_split_convert_extents(i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**, i32) #1

declare dso_local i32 @ext4_issue_zeroout(%struct.inode*, i64, i8*, i32) #1

declare dso_local i32 @ext4_convert_unwritten_extents_endio(i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @check_eofblocks_fl(i32*, %struct.inode*, i64, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_ext_convert_to_initialized(i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
