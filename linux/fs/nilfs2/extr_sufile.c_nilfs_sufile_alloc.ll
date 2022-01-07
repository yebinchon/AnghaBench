; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32, i32, i32 }
%struct.nilfs_segment_usage = type { i32 }
%struct.nilfs_sufile_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_alloc(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_sufile_header*, align 8
  %8 = alloca %struct.nilfs_segment_usage*, align 8
  %9 = alloca %struct.nilfs_sufile_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode* %20)
  store %struct.nilfs_sufile_info* %21, %struct.nilfs_sufile_info** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @down_write(i32* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %30, %struct.buffer_head** %5)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %240

35:                                               ; preds = %2
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @kmap_atomic(i32 %38)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = call i32 @bh_offset(%struct.buffer_head* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %40, i64 %43
  %45 = bitcast i8* %44 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %45, %struct.nilfs_sufile_header** %7, align 8
  %46 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %47 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le64_to_cpu(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @kunmap_atomic(i8* %50)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %52)
  store i64 %53, i64* %15, align 8
  %54 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %55 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %61 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %35
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %67 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %35
  %71 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %72 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %64
  store i64 0, i64* %17, align 8
  br label %75

75:                                               ; preds = %230, %74
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %234

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %79
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %86 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %89 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %84, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %97 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %12, align 4
  br label %135

100:                                              ; preds = %83
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %103 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %108 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %15, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %116 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i64, i64* %15, align 8
  %120 = sub i64 %119, 1
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  br label %134

122:                                              ; preds = %106, %100
  %123 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %124 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  %128 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %129 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %133

132:                                              ; preds = %122
  br label %234

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %114
  br label %135

135:                                              ; preds = %134, %95
  br label %136

136:                                              ; preds = %135, %79
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i64, i64* %17, align 8
  %140 = call i32 @trace_nilfs2_segment_usage_check(%struct.inode* %137, i32 %138, i64 %139)
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @nilfs_sufile_get_segment_usage_block(%struct.inode* %141, i32 %142, i32 1, %struct.buffer_head** %6)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %237

147:                                              ; preds = %136
  %148 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %149 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @kmap_atomic(i32 %150)
  store i8* %151, i8** %14, align 8
  %152 = load %struct.inode*, %struct.inode** %3, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %152, i32 %153, %struct.buffer_head* %154, i8* %155)
  store %struct.nilfs_segment_usage* %156, %struct.nilfs_segment_usage** %8, align 8
  %157 = load %struct.inode*, %struct.inode** %3, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i64 @nilfs_sufile_segment_usages_in_block(%struct.inode* %157, i32 %158, i32 %159)
  store i64 %160, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %161

161:                                              ; preds = %215, %147
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %16, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %225

166:                                              ; preds = %161
  %167 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %168 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  br label %215

171:                                              ; preds = %166
  %172 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %173 = call i32 @nilfs_segment_usage_set_dirty(%struct.nilfs_segment_usage* %172)
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @kunmap_atomic(i8* %174)
  %176 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %177 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @kmap_atomic(i32 %178)
  store i8* %179, i8** %14, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %182 = call i32 @bh_offset(%struct.buffer_head* %181)
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %180, i64 %183
  %185 = bitcast i8* %184 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %185, %struct.nilfs_sufile_header** %7, align 8
  %186 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %187 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %186, i32 0, i32 2
  %188 = call i32 @le64_add_cpu(i32* %187, i32 -1)
  %189 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %190 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %189, i32 0, i32 1
  %191 = call i32 @le64_add_cpu(i32* %190, i32 1)
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @cpu_to_le64(i32 %192)
  %194 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %195 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load i8*, i8** %14, align 8
  %197 = call i32 @kunmap_atomic(i8* %196)
  %198 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %9, align 8
  %199 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 4
  %202 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %203 = call i32 @mark_buffer_dirty(%struct.buffer_head* %202)
  %204 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %205 = call i32 @mark_buffer_dirty(%struct.buffer_head* %204)
  %206 = load %struct.inode*, %struct.inode** %3, align 8
  %207 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %206)
  %208 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %209 = call i32 @brelse(%struct.buffer_head* %208)
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %4, align 8
  store i32 %210, i32* %211, align 4
  %212 = load %struct.inode*, %struct.inode** %3, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @trace_nilfs2_segment_usage_allocated(%struct.inode* %212, i32 %213)
  br label %237

215:                                              ; preds = %170
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  %218 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %219 = bitcast %struct.nilfs_segment_usage* %218 to i8*
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr i8, i8* %219, i64 %220
  %222 = bitcast i8* %221 to %struct.nilfs_segment_usage*
  store %struct.nilfs_segment_usage* %222, %struct.nilfs_segment_usage** %8, align 8
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  br label %161

225:                                              ; preds = %161
  %226 = load i8*, i8** %14, align 8
  %227 = call i32 @kunmap_atomic(i8* %226)
  %228 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %229 = call i32 @brelse(%struct.buffer_head* %228)
  br label %230

230:                                              ; preds = %225
  %231 = load i64, i64* %16, align 8
  %232 = load i64, i64* %17, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %17, align 8
  br label %75

234:                                              ; preds = %132, %75
  %235 = load i32, i32* @ENOSPC, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %234, %171, %146
  %238 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %239 = call i32 @brelse(%struct.buffer_head* %238)
  br label %240

240:                                              ; preds = %237, %34
  %241 = load %struct.inode*, %struct.inode** %3, align 8
  %242 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %241)
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = call i32 @up_write(i32* %243)
  %245 = load i32, i32* %18, align 4
  ret i32 %245
}

declare dso_local %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i32 @trace_nilfs2_segment_usage_check(%struct.inode*, i32, i64) #1

declare dso_local i32 @nilfs_sufile_get_segment_usage_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_sufile_segment_usages_in_block(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_segment_usage_set_dirty(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @trace_nilfs2_segment_usage_allocated(%struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
