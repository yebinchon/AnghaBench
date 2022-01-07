; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_verify.c_verify_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_verify.c_verify_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.page* (%struct.inode*, i32)* }
%struct.fsverity_info = type { i32*, %struct.merkle_tree_params }
%struct.merkle_tree_params = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ahash_request = type { i32 }
%struct.page = type { i32 }

@FS_VERITY_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@FS_VERITY_MAX_LEVELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Verifying data page %lu...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Level %d: hindex=%lu, hoffset=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Error %d reading Merkle tree page %lu\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Hash page already checked, want %s:%*phN\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Hash page not yet checked\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Want root hash: %s:%*phN\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Verified hash page at level %d, now want %s:%*phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fsverity_info*, %struct.ahash_request*, %struct.page*)* @verify_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_page(%struct.inode* %0, %struct.fsverity_info* %1, %struct.ahash_request* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fsverity_info*, align 8
  %8 = alloca %struct.ahash_request*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.merkle_tree_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.page*, align 8
  %25 = alloca %struct.page*, align 8
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fsverity_info* %1, %struct.fsverity_info** %7, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %27 = load %struct.fsverity_info*, %struct.fsverity_info** %7, align 8
  %28 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %27, i32 0, i32 1
  store %struct.merkle_tree_params* %28, %struct.merkle_tree_params** %10, align 8
  %29 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %30 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @FS_VERITY_MAX_DIGEST_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %39 = load i32, i32* @FS_VERITY_MAX_DIGEST_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %17, align 8
  %42 = load i32, i32* @FS_VERITY_MAX_LEVELS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca %struct.page*, i64 %43, align 16
  store i64 %43, i64* %18, align 8
  %45 = load i32, i32* @FS_VERITY_MAX_LEVELS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %19, align 8
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = call i32 @PageLocked(%struct.page* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %4
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = call i64 @PageUptodate(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %4
  %56 = phi i1 [ true, %4 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON_ONCE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %231

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %128, %61
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %67 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %64
  %71 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @hash_at_level(%struct.merkle_tree_params* %71, i32 %72, i32 %73, i32* %22, i32* %23)
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.page* (%struct.inode*, i32)*, %struct.page* (%struct.inode*, i32)** %84, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load i32, i32* %22, align 4
  %88 = call %struct.page* %85(%struct.inode* %86, i32 %87)
  store %struct.page* %88, %struct.page** %24, align 8
  %89 = load %struct.page*, %struct.page** %24, align 8
  %90 = call i64 @IS_ERR(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %70
  %93 = load %struct.page*, %struct.page** %24, align 8
  %94 = call i32 @PTR_ERR(%struct.page* %93)
  store i32 %94, i32* %20, align 4
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @fsverity_err(%struct.inode* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  br label %213

99:                                               ; preds = %70
  %100 = load %struct.page*, %struct.page** %24, align 8
  %101 = call i64 @PageChecked(%struct.page* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load %struct.page*, %struct.page** %24, align 8
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @extract_hash(%struct.page* %104, i32 %105, i32 %106, i32* %38)
  store i32* %38, i32** %16, align 8
  %108 = load %struct.page*, %struct.page** %24, align 8
  %109 = call i32 @put_page(%struct.page* %108)
  %110 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %111 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115, i32* %116)
  br label %144

118:                                              ; preds = %99
  %119 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.page*, %struct.page** %24, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %122
  store %struct.page* %120, %struct.page** %123, align 8
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %47, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %64

131:                                              ; preds = %64
  %132 = load %struct.fsverity_info*, %struct.fsverity_info** %7, align 8
  %133 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %16, align 8
  %135 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %136 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = ptrtoint i32* %141 to i32
  %143 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %131, %103
  br label %145

145:                                              ; preds = %196, %144
  %146 = load i32, i32* %13, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %199

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %151
  %153 = load %struct.page*, %struct.page** %152, align 8
  store %struct.page* %153, %struct.page** %25, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %47, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %26, align 4
  %159 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  %162 = load %struct.page*, %struct.page** %25, align 8
  %163 = call i32 @fsverity_hash_page(%struct.merkle_tree_params* %159, %struct.inode* %160, %struct.ahash_request* %161, %struct.page* %162, i32* %41)
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %213

167:                                              ; preds = %148
  %168 = load %struct.fsverity_info*, %struct.fsverity_info** %7, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %13, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @cmp_hashes(%struct.fsverity_info* %168, i32* %169, i32* %41, i32 %170, i32 %172)
  store i32 %173, i32* %20, align 4
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %213

177:                                              ; preds = %167
  %178 = load %struct.page*, %struct.page** %25, align 8
  %179 = call i32 @SetPageChecked(%struct.page* %178)
  %180 = load %struct.page*, %struct.page** %25, align 8
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @extract_hash(%struct.page* %180, i32 %181, i32 %182, i32* %38)
  store i32* %38, i32** %16, align 8
  %184 = load %struct.page*, %struct.page** %25, align 8
  %185 = call i32 @put_page(%struct.page* %184)
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, 1
  %188 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %189 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32*, i32** %16, align 8
  %195 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %187, i32 %192, i32 %193, i32* %194)
  br label %196

196:                                              ; preds = %177
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %13, align 4
  br label %145

199:                                              ; preds = %145
  %200 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %10, align 8
  %201 = load %struct.inode*, %struct.inode** %6, align 8
  %202 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  %203 = load %struct.page*, %struct.page** %9, align 8
  %204 = call i32 @fsverity_hash_page(%struct.merkle_tree_params* %200, %struct.inode* %201, %struct.ahash_request* %202, %struct.page* %203, i32* %41)
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %213

208:                                              ; preds = %199
  %209 = load %struct.fsverity_info*, %struct.fsverity_info** %7, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @cmp_hashes(%struct.fsverity_info* %209, i32* %210, i32* %41, i32 %211, i32 -1)
  store i32 %212, i32* %20, align 4
  br label %213

213:                                              ; preds = %208, %207, %176, %166, %92
  br label %214

214:                                              ; preds = %224, %213
  %215 = load i32, i32* %13, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %220
  %222 = load %struct.page*, %struct.page** %221, align 8
  %223 = call i32 @put_page(%struct.page* %222)
  br label %224

224:                                              ; preds = %217
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %13, align 4
  br label %214

227:                                              ; preds = %214
  %228 = load i32, i32* %20, align 4
  %229 = icmp eq i32 %228, 0
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %231

231:                                              ; preds = %227, %60
  %232 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @PageLocked(%struct.page*) #2

declare dso_local i64 @PageUptodate(%struct.page*) #2

declare dso_local i32 @pr_debug_ratelimited(i8*, ...) #2

declare dso_local i32 @hash_at_level(%struct.merkle_tree_params*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.page*) #2

declare dso_local i32 @PTR_ERR(%struct.page*) #2

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, i32, i32) #2

declare dso_local i64 @PageChecked(%struct.page*) #2

declare dso_local i32 @extract_hash(%struct.page*, i32, i32, i32*) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #2

declare dso_local i32 @fsverity_hash_page(%struct.merkle_tree_params*, %struct.inode*, %struct.ahash_request*, %struct.page*, i32*) #2

declare dso_local i32 @cmp_hashes(%struct.fsverity_info*, i32*, i32*, i32, i32) #2

declare dso_local i32 @SetPageChecked(%struct.page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
