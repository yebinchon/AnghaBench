; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_get_node_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_get_node_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@NIDS_PER_BLOCK = common dso_local global i64 0, align 8
@NODE_DIR1_BLOCK = common dso_local global i32 0, align 4
@NODE_DIR2_BLOCK = common dso_local global i32 0, align 4
@NODE_IND1_BLOCK = common dso_local global i32 0, align 4
@NODE_IND2_BLOCK = common dso_local global i32 0, align 4
@NODE_DIND_BLOCK = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32*, i32*)* @get_node_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_node_path(%struct.inode* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call i64 @ADDRS_PER_INODE(%struct.inode* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @ADDRS_PER_BLOCK(%struct.inode* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* @NIDS_PER_BLOCK, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i64 @ADDRS_PER_BLOCK(%struct.inode* %22)
  %24 = load i64, i64* @NIDS_PER_BLOCK, align 8
  %25 = mul nsw i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @NIDS_PER_BLOCK, align 8
  %28 = mul nsw i64 %26, %27
  store i64 %28, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %287

41:                                               ; preds = %4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load i32, i32* @NODE_DIR1_BLOCK, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 1, i32* %58, align 4
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  store i32 1, i32* %16, align 4
  br label %287

65:                                               ; preds = %41
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load i32, i32* @NODE_DIR2_BLOCK, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 2, i32* %82, align 4
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  store i32 1, i32* %16, align 4
  br label %287

89:                                               ; preds = %65
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %89
  %97 = load i32, i32* @NODE_IND1_BLOCK, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 3, i32* %106, align 4
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = sdiv i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 4, %121
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %11, align 8
  %129 = srem i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  store i32 2, i32* %16, align 4
  br label %287

135:                                              ; preds = %89
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %7, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %188

142:                                              ; preds = %135
  %143 = load i32, i32* @NODE_IND2_BLOCK, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load i64, i64* %12, align 8
  %150 = add nsw i64 4, %149
  %151 = trunc i64 %150 to i32
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* %11, align 8
  %158 = sdiv i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %8, align 8
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 5, %165
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %166, %173
  %175 = trunc i64 %174 to i32
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %11, align 8
  %182 = srem i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  store i32 2, i32* %16, align 4
  br label %287

188:                                              ; preds = %135
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %7, align 8
  %191 = sub nsw i64 %190, %189
  store i64 %191, i64* %7, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* %14, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %284

195:                                              ; preds = %188
  %196 = load i32, i32* @NODE_DIND_BLOCK, align 4
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  %202 = load i64, i64* %12, align 8
  %203 = mul nsw i64 %202, 2
  %204 = add nsw i64 5, %203
  %205 = trunc i64 %204 to i32
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* %13, align 8
  %212 = sdiv i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i64, i64* %12, align 8
  %220 = mul nsw i64 %219, 2
  %221 = add nsw i64 6, %220
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %12, align 8
  %230 = add nsw i64 %229, 1
  %231 = mul nsw i64 %228, %230
  %232 = add nsw i64 %221, %231
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %9, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* %11, align 8
  %240 = sdiv i64 %238, %239
  %241 = load i64, i64* %12, align 8
  %242 = srem i64 %240, %241
  %243 = trunc i64 %242 to i32
  %244 = load i32*, i32** %8, align 8
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %243, i32* %248, align 4
  %249 = load i64, i64* %12, align 8
  %250 = mul nsw i64 %249, 2
  %251 = add nsw i64 7, %250
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* %12, align 8
  %260 = add nsw i64 %259, 1
  %261 = mul nsw i64 %258, %260
  %262 = add nsw i64 %251, %261
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %262, %269
  %271 = trunc i64 %270 to i32
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* %11, align 8
  %278 = srem i64 %276, %277
  %279 = trunc i64 %278 to i32
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %279, i32* %283, align 4
  store i32 3, i32* %16, align 4
  br label %287

284:                                              ; preds = %188
  %285 = load i32, i32* @E2BIG, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %5, align 4
  br label %289

287:                                              ; preds = %195, %142, %96, %72, %48, %34
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %287, %284
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i64 @ADDRS_PER_INODE(%struct.inode*) #1

declare dso_local i64 @ADDRS_PER_BLOCK(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
