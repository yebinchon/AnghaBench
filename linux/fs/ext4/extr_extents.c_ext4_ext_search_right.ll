; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_search_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_search_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent_header*, %struct.ext4_extent_idx*, %struct.ext4_extent* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent_idx = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"path == NULL *logical %d!\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"first_extent(path[%d].p_hdr) != ex\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ix != EXT_FIRST_INDEX *logical %d!\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"logical %d < ee_block %d + ee_len %d!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, i64*, i32*, %struct.ext4_extent**)* @ext4_ext_search_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_search_right(%struct.inode* %0, %struct.ext4_ext_path* %1, i64* %2, i32* %3, %struct.ext4_extent** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ext4_extent**, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext4_extent_header*, align 8
  %14 = alloca %struct.ext4_extent_idx*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ext4_extent** %4, %struct.ext4_extent*** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %19 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %20 = icmp eq %struct.ext4_ext_path* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EFSCORRUPTED, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %249

31:                                               ; preds = %5
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %40 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %39, i32 0, i32 3
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %40, align 8
  %42 = icmp eq %struct.ext4_extent* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %249

44:                                               ; preds = %38, %31
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i32 0, i32 3
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %49, align 8
  store %struct.ext4_extent* %50, %struct.ext4_extent** %15, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %52 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %51)
  store i32 %52, i32* %18, align 4
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %56 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %44
  %61 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %61, i64 %63
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i32 0, i32 1
  %66 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %65, align 8
  %67 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %66)
  %68 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %69 = icmp ne %struct.ext4_extent* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EFSCORRUPTED, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %249

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %111, %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %17, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %86, i64 %88
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %89, i32 0, i32 2
  %91 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %90, align 8
  store %struct.ext4_extent_idx* %91, %struct.ext4_extent_idx** %14, align 8
  %92 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %93, i64 %95
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 1
  %98 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %97, align 8
  %99 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %98)
  %100 = icmp ne %struct.ext4_extent_idx* %92, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %85
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @EFSCORRUPTED, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %249

111:                                              ; preds = %85
  br label %81

112:                                              ; preds = %81
  br label %232

113:                                              ; preds = %44
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %117 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le32_to_cpu(i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = icmp slt i64 %115, %122
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %113
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %132 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @le32_to_cpu(i32 %133)
  %135 = load i32, i32* %18, align 4
  %136 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %130, i64 %134, i32 %135)
  %137 = load i32, i32* @EFSCORRUPTED, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %249

139:                                              ; preds = %113
  %140 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %141 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %141, i64 %143
  %145 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %144, i32 0, i32 1
  %146 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %145, align 8
  %147 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %146)
  %148 = icmp ne %struct.ext4_extent* %140, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %139
  %150 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %151 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %150, i32 1
  store %struct.ext4_extent* %151, %struct.ext4_extent** %15, align 8
  br label %232

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %174, %152
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %17, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %153
  %158 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %158, i64 %160
  %162 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %161, i32 0, i32 2
  %163 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %162, align 8
  store %struct.ext4_extent_idx* %163, %struct.ext4_extent_idx** %14, align 8
  %164 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %165 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %165, i64 %167
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %168, i32 0, i32 1
  %170 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %169, align 8
  %171 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.ext4_extent_header* %170)
  %172 = icmp ne %struct.ext4_extent_idx* %164, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %157
  br label %176

174:                                              ; preds = %157
  br label %153

175:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %249

176:                                              ; preds = %173
  %177 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %178 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %177, i32 1
  store %struct.ext4_extent_idx* %178, %struct.ext4_extent_idx** %14, align 8
  %179 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %180 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %179)
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %203, %176
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  %184 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %185 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %181
  %189 = load %struct.inode*, %struct.inode** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %192 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 %193, %194
  %196 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %189, i32 %190, i32 %195, i32 0)
  store %struct.buffer_head* %196, %struct.buffer_head** %12, align 8
  %197 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %198 = call i64 @IS_ERR(%struct.buffer_head* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %188
  %201 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %202 = call i32 @PTR_ERR(%struct.buffer_head* %201)
  store i32 %202, i32* %6, align 4
  br label %249

203:                                              ; preds = %188
  %204 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %205 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %204)
  store %struct.ext4_extent_header* %205, %struct.ext4_extent_header** %13, align 8
  %206 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %207 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %206)
  store %struct.ext4_extent_idx* %207, %struct.ext4_extent_idx** %14, align 8
  %208 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %209 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %208)
  store i32 %209, i32* %16, align 4
  %210 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %211 = call i32 @put_bh(%struct.buffer_head* %210)
  br label %181

212:                                              ; preds = %181
  %213 = load %struct.inode*, %struct.inode** %7, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %216 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sub nsw i32 %217, %218
  %220 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %213, i32 %214, i32 %219, i32 0)
  store %struct.buffer_head* %220, %struct.buffer_head** %12, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %222 = call i64 @IS_ERR(%struct.buffer_head* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %212
  %225 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %226 = call i32 @PTR_ERR(%struct.buffer_head* %225)
  store i32 %226, i32* %6, align 4
  br label %249

227:                                              ; preds = %212
  %228 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %229 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %228)
  store %struct.ext4_extent_header* %229, %struct.ext4_extent_header** %13, align 8
  %230 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %231 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %230)
  store %struct.ext4_extent* %231, %struct.ext4_extent** %15, align 8
  br label %232

232:                                              ; preds = %227, %149, %112
  %233 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %234 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @le32_to_cpu(i32 %235)
  %237 = load i64*, i64** %9, align 8
  store i64 %236, i64* %237, align 8
  %238 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %239 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %238)
  %240 = load i32*, i32** %10, align 8
  store i32 %239, i32* %240, align 4
  %241 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %242 = load %struct.ext4_extent**, %struct.ext4_extent*** %11, align 8
  store %struct.ext4_extent* %241, %struct.ext4_extent** %242, align 8
  %243 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %244 = icmp ne %struct.buffer_head* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %232
  %246 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %247 = call i32 @put_bh(%struct.buffer_head* %246)
  br label %248

248:                                              ; preds = %245, %232
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %248, %224, %200, %175, %127, %104, %73, %43, %24
  %250 = load i32, i32* %6, align 4
  ret i32 %250
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64, ...) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_idx_pblock(%struct.ext4_extent_idx*) #1

declare dso_local %struct.buffer_head* @read_extent_tree_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
