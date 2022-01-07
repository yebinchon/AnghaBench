; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64 }

@LCN_HOLE = common dso_local global i64 0, align 8
@LCN_RL_NOT_MAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32)* @ntfs_rl_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ntfs_rl_insert(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  br label %74

35:                                               ; preds = %5
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 -1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = call i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__* %40, %struct.TYPE_15__* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  br label %58

58:                                               ; preds = %52, %35
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %15, align 8
  %71 = add nsw i64 %69, %70
  %72 = icmp sgt i64 %62, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %58, %28
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  %84 = call %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__* %75, i32 %76, i32 %83)
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %7, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_15__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %6, align 8
  br label %256

90:                                               ; preds = %74
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 -1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = call i32 @__ntfs_rl_merge(%struct.TYPE_15__* %98, %struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %14, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @ntfs_rl_mm(%struct.TYPE_15__* %109, i32 %110, i32 %111, i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i32 @ntfs_rl_mc(%struct.TYPE_15__* %116, i32 %119, %struct.TYPE_15__* %120, i32 %121, i32 %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %132, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i64 %140, i64* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @LCN_HOLE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %163, label %154

154:                                              ; preds = %101
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %154, %101
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %170, %176
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  store i64 %177, i64* %182, align 8
  br label %183

183:                                              ; preds = %163, %154
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %254

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %229

189:                                              ; preds = %186
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %196, %203
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  store i64 %204, i64* %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %216, %222
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  store i64 %223, i64* %228, align 8
  br label %247

229:                                              ; preds = %186
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  store i64 %241, i64* %246, align 8
  br label %247

247:                                              ; preds = %229, %189
  %248 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  store i64 %248, i64* %253, align 8
  br label %254

254:                                              ; preds = %247, %183
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %6, align 8
  br label %256

256:                                              ; preds = %254, %88
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %257
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @__ntfs_rl_merge(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ntfs_rl_mm(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ntfs_rl_mc(%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
