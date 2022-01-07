; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_el.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i64 }
%struct.dir_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_entry = type { i32, i32, i32, i32, i32 }

@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.dir_context*, i32)* @ocfs2_dir_foreach_blk_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dir_foreach_blk_el(%struct.inode* %0, i32* %1, %struct.dir_context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dir_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_dir_entry*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.dir_context* %2, %struct.dir_context** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %17, align 8
  store i32 16, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %23 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %24 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.super_block*, %struct.super_block** %17, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %25, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %268, %53, %4
  %33 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %34 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i32 @i_size_read(%struct.inode* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %269

39:                                               ; preds = %32
  %40 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %41 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.super_block*, %struct.super_block** %17, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = ashr i32 %42, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @ocfs2_read_dir_block(%struct.inode* %49, i64 %50, %struct.buffer_head** %14, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %39
  %54 = load %struct.super_block*, %struct.super_block** %17, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %57, %58
  %60 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %61 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %32

66:                                               ; preds = %39
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %70, %71
  %73 = shl i64 %72, 9
  %74 = load i32, i32* %18, align 4
  %75 = udiv i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = icmp ule i64 %73, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.super_block*, %struct.super_block** %17, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 9
  %84 = trunc i64 %83 to i32
  %85 = lshr i32 %79, %84
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %100, %78
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  %93 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %94 = call i64 @ocfs2_read_dir_block(%struct.inode* %90, i64 %92, %struct.buffer_head** %15, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  br label %99

99:                                               ; preds = %96, %89
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %12, align 8
  store i32 8, i32* %18, align 4
  br label %105

105:                                              ; preds = %103, %69
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @inode_eq_iversion(%struct.inode* %106, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %170, label %111

111:                                              ; preds = %105
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %140, %111
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.super_block*, %struct.super_block** %17, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = icmp ult i64 %120, %121
  br label %123

123:                                              ; preds = %118, %112
  %124 = phi i1 [ false, %112 ], [ %122, %118 ]
  br i1 %124, label %125, label %149

125:                                              ; preds = %123
  %126 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = inttoptr i64 %131 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %132, %struct.ocfs2_dir_entry** %16, align 8
  %133 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %134 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @le16_to_cpu(i32 %135)
  %137 = call i64 @OCFS2_DIR_REC_LEN(i32 1)
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %149

140:                                              ; preds = %125
  %141 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %142 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @le16_to_cpu(i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %13, align 4
  br label %112

149:                                              ; preds = %139, %123
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %10, align 8
  %152 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %153 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.super_block*, %struct.super_block** %17, align 8
  %156 = getelementptr inbounds %struct.super_block, %struct.super_block* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = xor i32 %158, -1
  %160 = and i32 %154, %159
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %10, align 8
  %163 = or i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %166 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.inode*, %struct.inode** %6, align 8
  %168 = call i32 @inode_query_iversion(%struct.inode* %167)
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %149, %105
  br label %171

171:                                              ; preds = %242, %170
  %172 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %173 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = call i32 @i_size_read(%struct.inode* %175)
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load i64, i64* %10, align 8
  %180 = load %struct.super_block*, %struct.super_block** %17, align 8
  %181 = getelementptr inbounds %struct.super_block, %struct.super_block* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = icmp ult i64 %179, %183
  br label %185

185:                                              ; preds = %178, %171
  %186 = phi i1 [ false, %171 ], [ %184, %178 ]
  br i1 %186, label %187, label %259

187:                                              ; preds = %185
  %188 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %189 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add i64 %190, %191
  %193 = inttoptr i64 %192 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %193, %struct.ocfs2_dir_entry** %16, align 8
  %194 = load %struct.inode*, %struct.inode** %6, align 8
  %195 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %197 = load i64, i64* %10, align 8
  %198 = call i32 @ocfs2_check_dir_entry(%struct.inode* %194, %struct.ocfs2_dir_entry* %195, %struct.buffer_head* %196, i64 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %187
  %201 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %202 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.super_block*, %struct.super_block** %17, align 8
  %205 = getelementptr inbounds %struct.super_block, %struct.super_block* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  %208 = or i32 %203, %207
  %209 = add nsw i32 %208, 1
  %210 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %211 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  br label %259

212:                                              ; preds = %187
  %213 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %214 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @le64_to_cpu(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %242

218:                                              ; preds = %212
  %219 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %220 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %221 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %224 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %227 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @le64_to_cpu(i32 %228)
  %230 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %231 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @fs_ftype_to_dtype(i32 %232)
  %234 = call i32 @dir_emit(%struct.dir_context* %219, i32 %222, i32 %225, i64 %229, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %218
  %237 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %238 = call i32 @brelse(%struct.buffer_head* %237)
  store i32 0, i32* %5, align 4
  br label %270

239:                                              ; preds = %218
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  br label %242

242:                                              ; preds = %239, %212
  %243 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %244 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @le16_to_cpu(i32 %245)
  %247 = load i64, i64* %10, align 8
  %248 = add i64 %247, %246
  store i64 %248, i64* %10, align 8
  %249 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %250 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i64 @le16_to_cpu(i32 %251)
  %253 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %254 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %252
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %254, align 4
  br label %171

259:                                              ; preds = %200, %185
  store i64 0, i64* %10, align 8
  %260 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %261 = call i32 @brelse(%struct.buffer_head* %260)
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %19, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %269

268:                                              ; preds = %264, %259
  br label %32

269:                                              ; preds = %267, %32
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %269, %236
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_read_dir_block(%struct.inode*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_eq_iversion(%struct.inode*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i64, i32) #1

declare dso_local i32 @fs_ftype_to_dtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
