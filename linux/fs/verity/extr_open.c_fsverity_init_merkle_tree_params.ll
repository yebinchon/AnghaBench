; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_init_merkle_tree_params.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_init_merkle_tree_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merkle_tree_params = type { i32, i32, i32, i32, i32, i64, i32*, i32, %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg* }
%struct.fsverity_hash_alg = type { i32, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error %d preparing hash state\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported log_blocksize: %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Merkle tree block size (%u) too small for hash algorithm \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Merkle tree uses %s with %u-byte blocks (%u hashes/block), salt=%*phN\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Data is %lld bytes (%llu blocks)\0A\00", align 1
@FS_VERITY_MAX_LEVELS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Too many levels in Merkle tree\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Level %d is %llu blocks starting at index %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsverity_init_merkle_tree_params(%struct.merkle_tree_params* %0, %struct.inode* %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merkle_tree_params*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fsverity_hash_alg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.merkle_tree_params* %0, %struct.merkle_tree_params** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %20 = call i32 @memset(%struct.merkle_tree_params* %19, i32 0, i32 64)
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.fsverity_hash_alg* @fsverity_get_hash_alg(%struct.inode* %21, i32 %22)
  store %struct.fsverity_hash_alg* %23, %struct.fsverity_hash_alg** %14, align 8
  %24 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %25 = call i64 @IS_ERR(%struct.fsverity_hash_alg* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %29 = call i32 @PTR_ERR(%struct.fsverity_hash_alg* %28)
  store i32 %29, i32* %7, align 4
  br label %237

30:                                               ; preds = %6
  %31 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %32 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %33 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %32, i32 0, i32 9
  store %struct.fsverity_hash_alg* %31, %struct.fsverity_hash_alg** %33, align 8
  %34 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %35 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %38 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call %struct.fsverity_hash_alg* @fsverity_prepare_hash_state(%struct.fsverity_hash_alg* %39, i32* %40, i64 %41)
  %43 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %44 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %43, i32 0, i32 8
  store %struct.fsverity_hash_alg* %42, %struct.fsverity_hash_alg** %44, align 8
  %45 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %46 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %45, i32 0, i32 8
  %47 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %46, align 8
  %48 = call i64 @IS_ERR(%struct.fsverity_hash_alg* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %30
  %51 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %52 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %51, i32 0, i32 8
  %53 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.fsverity_hash_alg* %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %56 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %55, i32 0, i32 8
  store %struct.fsverity_hash_alg* null, %struct.fsverity_hash_alg** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %229

60:                                               ; preds = %30
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (%struct.inode*, i8*, i32, ...) @fsverity_warn(%struct.inode* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %229

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %73 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 1, %74
  %76 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %77 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %79 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @is_power_of_2(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  br label %229

90:                                               ; preds = %70
  %91 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %92 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %95 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 2, %96
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %90
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %102 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %105 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.inode*, i8*, i32, ...) @fsverity_warn(%struct.inode* %100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %15, align 4
  br label %229

110:                                              ; preds = %90
  %111 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %112 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %115 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ilog2(i32 %116)
  %118 = sub i32 %113, %117
  %119 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %120 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %122 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %126 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %14, align 8
  %128 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %131 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %134 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %13, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %132, i32 %135, i32 %137, i32* %138)
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %144 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %142, %145
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %147, %148
  store i32 %149, i32* %16, align 4
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %16, align 4
  %154 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %169, %110
  %156 = load i32, i32* %16, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %189

158:                                              ; preds = %155
  %159 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %160 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FS_VERITY_MAX_LEVELS, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %15, align 4
  br label %229

169:                                              ; preds = %158
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %172 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %170, %173
  %175 = sub nsw i32 %174, 1
  %176 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %177 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %175, %178
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %182 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %185 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %180, i32* %188, align 4
  br label %155

189:                                              ; preds = %155
  store i32 0, i32* %17, align 4
  %190 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %191 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %220, %189
  %196 = load i32, i32* %18, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %195
  %199 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %200 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %208 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %206, i32* %212, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %198
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %18, align 4
  br label %195

223:                                              ; preds = %195
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %11, align 4
  %226 = shl i32 %224, %225
  %227 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %228 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %227, i32 0, i32 7
  store i32 %226, i32* %228, align 8
  store i32 0, i32* %7, align 4
  br label %237

229:                                              ; preds = %164, %99, %87, %64, %50
  %230 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %231 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %230, i32 0, i32 8
  %232 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %231, align 8
  %233 = call i32 @kfree(%struct.fsverity_hash_alg* %232)
  %234 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %8, align 8
  %235 = call i32 @memset(%struct.merkle_tree_params* %234, i32 0, i32 64)
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %229, %223, %27
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i32 @memset(%struct.merkle_tree_params*, i32, i32) #1

declare dso_local %struct.fsverity_hash_alg* @fsverity_get_hash_alg(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fsverity_hash_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.fsverity_hash_alg*) #1

declare dso_local %struct.fsverity_hash_alg* @fsverity_prepare_hash_state(%struct.fsverity_hash_alg*, i32*, i64) #1

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, ...) #1

declare dso_local i32 @fsverity_warn(%struct.inode*, i8*, i32, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @kfree(%struct.fsverity_hash_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
