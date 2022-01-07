; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_enable.c_build_merkle_tree_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_enable.c_build_merkle_tree_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fsverity_operations* }
%struct.fsverity_operations = type { i32 (%struct.inode*, i32*, i32, i32)*, %struct.page* (%struct.inode*, i32)* }
%struct.page = type { i32 }
%struct.merkle_tree_params = type { i64, i32, i32*, i64, i32 }
%struct.ahash_request = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Hashing block %llu of %llu for level %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error %d reading data page %llu\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Error %d reading Merkle tree page %llu\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Error %d writing Merkle tree block %llu\00", align 1
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.merkle_tree_params*, i32*, %struct.ahash_request*)* @build_merkle_tree_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_merkle_tree_level(%struct.inode* %0, i32 %1, i32 %2, %struct.merkle_tree_params* %3, i32* %4, %struct.ahash_request* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.merkle_tree_params*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca %struct.fsverity_operations*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.merkle_tree_params* %3, %struct.merkle_tree_params** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.ahash_request* %5, %struct.ahash_request** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.fsverity_operations*, %struct.fsverity_operations** %23, align 8
  store %struct.fsverity_operations* %24, %struct.fsverity_operations** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %26 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %230

36:                                               ; preds = %6
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %39 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %44 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  br label %60

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %230

59:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %59, %42
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %226, %60
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %229

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = srem i32 %66, 10000
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call %struct.page* @read_mapping_page(i32 %86, i32 %87, i32* null)
  store %struct.page* %88, %struct.page** %19, align 8
  %89 = load %struct.page*, %struct.page** %19, align 8
  %90 = call i64 @IS_ERR(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.page*, %struct.page** %19, align 8
  %94 = call i32 @PTR_ERR(%struct.page* %93)
  store i32 %94, i32* %18, align 4
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @fsverity_err(%struct.inode* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %7, align 4
  br label %230

100:                                              ; preds = %83
  br label %138

101:                                              ; preds = %80
  %102 = load %struct.fsverity_operations*, %struct.fsverity_operations** %14, align 8
  %103 = getelementptr inbounds %struct.fsverity_operations, %struct.fsverity_operations* %102, i32 0, i32 1
  %104 = load %struct.page* (%struct.inode*, i32)*, %struct.page* (%struct.inode*, i32)** %103, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %107 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sub i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %113, %114
  %116 = call %struct.page* %104(%struct.inode* %105, i32 %115)
  store %struct.page* %116, %struct.page** %19, align 8
  %117 = load %struct.page*, %struct.page** %19, align 8
  %118 = call i64 @IS_ERR(%struct.page* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %101
  %121 = load %struct.page*, %struct.page** %19, align 8
  %122 = call i32 @PTR_ERR(%struct.page* %121)
  store i32 %122, i32* %18, align 4
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %126 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @fsverity_err(%struct.inode* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %134)
  %136 = load i32, i32* %18, align 4
  store i32 %136, i32* %7, align 4
  br label %230

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137, %100
  %139 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %142 = load %struct.page*, %struct.page** %19, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @fsverity_hash_page(%struct.merkle_tree_params* %139, %struct.inode* %140, %struct.ahash_request* %141, %struct.page* %142, i32* %146)
  store i32 %147, i32* %18, align 4
  %148 = load %struct.page*, %struct.page** %19, align 8
  %149 = call i32 @put_page(%struct.page* %148)
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* %18, align 4
  store i32 %153, i32* %7, align 4
  br label %230

154:                                              ; preds = %138
  %155 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %156 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = zext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %164 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %230

168:                                              ; preds = %154
  %169 = load i32, i32* %15, align 4
  %170 = zext i32 %169 to i64
  %171 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %172 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %170, %173
  %175 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %176 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %168
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %217

184:                                              ; preds = %179, %168
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %15, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %190 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = zext i32 %192 to i64
  %194 = sub nsw i64 %191, %193
  %195 = call i32 @memset(i32* %188, i32 0, i64 %194)
  %196 = load %struct.fsverity_operations*, %struct.fsverity_operations** %14, align 8
  %197 = getelementptr inbounds %struct.fsverity_operations, %struct.fsverity_operations* %196, i32 0, i32 0
  %198 = load i32 (%struct.inode*, i32*, i32, i32)*, i32 (%struct.inode*, i32*, i32, i32)** %197, align 8
  %199 = load %struct.inode*, %struct.inode** %8, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %11, align 8
  %203 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 %198(%struct.inode* %199, i32* %200, i32 %201, i32 %204)
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %184
  %209 = load %struct.inode*, %struct.inode** %8, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @fsverity_err(%struct.inode* %209, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load i32, i32* %18, align 4
  store i32 %213, i32* %7, align 4
  br label %230

214:                                              ; preds = %184
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %217

217:                                              ; preds = %214, %179
  %218 = load i32, i32* @current, align 4
  %219 = call i64 @fatal_signal_pending(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* @EINTR, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %7, align 4
  br label %230

224:                                              ; preds = %217
  %225 = call i32 (...) @cond_resched()
  br label %226

226:                                              ; preds = %224
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %17, align 4
  br label %61

229:                                              ; preds = %61
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %229, %221, %208, %167, %152, %120, %92, %56, %33
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, i32, i32) #1

declare dso_local i32 @fsverity_hash_page(%struct.merkle_tree_params*, %struct.inode*, %struct.ahash_request*, %struct.page*, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
