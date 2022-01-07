; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_request = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.buffer_head*, i32*, i8* }
%struct.buffer_head = type { i32, i64, i32 }

@EXT4_MB_DELALLOC_RESERVED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"marking uptodate\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_allocation_request*, i32, i32*, %struct.TYPE_7__*)* @ext4_alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_alloc_branch(i32* %0, %struct.ext4_allocation_request* %1, i32 %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_allocation_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.ext4_allocation_request* %1, %struct.ext4_allocation_request** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %182, %5
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %185

24:                                               ; preds = %20
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %31 = call i32 @ext4_mb_new_blocks(i32* %29, %struct.ext4_allocation_request* %30, i32* %18)
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %38 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %41 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %44 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EXT4_MB_DELALLOC_RESERVED, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @ext4_new_meta_blocks(i32* %36, %struct.TYPE_8__* %39, i32 %42, i32 %47, i32* null, i32* %18)
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %53 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %52, i32 0, i32 3
  store i32 %48, i32* %53, align 8
  br label %54

54:                                               ; preds = %35, %28
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %16, align 4
  br label %186

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %182

74:                                               ; preds = %60
  %75 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %76 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.buffer_head* @sb_getblk(i32 %79, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store %struct.buffer_head* %85, %struct.buffer_head** %90, align 8
  store %struct.buffer_head* %85, %struct.buffer_head** %12, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = icmp ne %struct.buffer_head* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %74
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %18, align 4
  br label %186

100:                                              ; preds = %74
  %101 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %102 = call i32 @lock_buffer(%struct.buffer_head* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %104 = call i32 @BUFFER_TRACE(%struct.buffer_head* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %107 = call i32 @ext4_journal_get_create_access(i32* %105, %struct.buffer_head* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %112 = call i32 @unlock_buffer(%struct.buffer_head* %111)
  br label %186

113:                                              ; preds = %100
  %114 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memset(i64 %116, i32 0, i32 %119)
  %121 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32* %131, i32** %136, align 8
  store i32* %131, i32** %15, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %113
  %145 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %146 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %144, %113
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %160, %148
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  %156 = call i8* @cpu_to_le32(i32 %154)
  %157 = ptrtoint i8* %156 to i32
  %158 = load i32*, i32** %15, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %15, align 8
  store i32 %157, i32* %158, align 4
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %149

163:                                              ; preds = %149
  %164 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %165 = call i32 @BUFFER_TRACE(%struct.buffer_head* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %166 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %167 = call i32 @set_buffer_uptodate(%struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %169 = call i32 @unlock_buffer(%struct.buffer_head* %168)
  %170 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %171 = call i32 @BUFFER_TRACE(%struct.buffer_head* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32*, i32** %7, align 8
  %173 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %174 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %173, i32 0, i32 2
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %177 = call i32 @ext4_handle_dirty_metadata(i32* %172, %struct.TYPE_8__* %175, %struct.buffer_head* %176)
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %163
  br label %186

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %73
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  br label %20

185:                                              ; preds = %20
  store i32 0, i32* %6, align 4
  br label %250

186:                                              ; preds = %180, %110, %97, %57
  br label %187

187:                                              ; preds = %245, %186
  %188 = load i32, i32* %16, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %248

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load %struct.buffer_head*, %struct.buffer_head** %202, align 8
  %204 = icmp ne %struct.buffer_head* %203, null
  br i1 %204, label %205, label %225

205:                                              ; preds = %197
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %208 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %207, i32 0, i32 2
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load %struct.buffer_head*, %struct.buffer_head** %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load %struct.buffer_head*, %struct.buffer_head** %220, align 8
  %222 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @ext4_forget(i32* %206, i32 1, %struct.TYPE_8__* %209, %struct.buffer_head* %215, i32 %223)
  br label %225

225:                                              ; preds = %205, %197, %193, %190
  %226 = load i32*, i32** %7, align 8
  %227 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %228 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %227, i32 0, i32 2
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %225
  %238 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %8, align 8
  %239 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  br label %242

241:                                              ; preds = %225
  br label %242

242:                                              ; preds = %241, %237
  %243 = phi i32 [ %240, %237 ], [ 1, %241 ]
  %244 = call i32 @ext4_free_blocks(i32* %226, %struct.TYPE_8__* %229, i32* null, i32 %233, i32 %243, i32 0)
  br label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %16, align 4
  br label %187

248:                                              ; preds = %187
  %249 = load i32, i32* %18, align 4
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %248, %185
  %251 = load i32, i32* %6, align 4
  ret i32 %251
}

declare dso_local i32 @ext4_mb_new_blocks(i32*, %struct.ext4_allocation_request*, i32*) #1

declare dso_local i32 @ext4_new_meta_blocks(i32*, %struct.TYPE_8__*, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.TYPE_8__*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_forget(i32*, i32, %struct.TYPE_8__*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.TYPE_8__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
