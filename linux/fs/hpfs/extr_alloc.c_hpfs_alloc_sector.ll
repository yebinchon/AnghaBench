; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_sector.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Prealloc doesn't work! Wanted %d, allocated at %08x, can't allocate %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_alloc_sector(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpfs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %15)
  store %struct.hpfs_sb_info* %16, %struct.hpfs_sb_info** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %24 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 16384
  %27 = sub nsw i32 %26, 1
  %28 = ashr i32 %27, 14
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %34 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %46, 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  %50 = call i32 @alloc_in_bmp(%struct.super_block* %38, i32 %39, i32 %40, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %195

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 14
  store i32 %55, i32* %14, align 4
  br label %59

56:                                               ; preds = %31, %22
  %57 = load i32, i32* %11, align 4
  %58 = udiv i32 %57, 2
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %65 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %70 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %185, %73
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %176, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %179

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = shl i32 %89, 14
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @alloc_in_bmp(%struct.super_block* %86, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %100 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %195

101:                                              ; preds = %85, %79
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sub nsw i32 %107, 1
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  %116 = shl i32 %115, 14
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @alloc_in_bmp(%struct.super_block* %111, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %127 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %195

128:                                              ; preds = %110, %104
  br label %156

129:                                              ; preds = %101
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp uge i32 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %11, align 4
  %141 = sub i32 %139, %140
  %142 = shl i32 %141, 14
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @alloc_in_bmp(%struct.super_block* %136, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %135
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %11, align 4
  %152 = sub i32 %150, %151
  %153 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %154 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %195

155:                                              ; preds = %135, %129
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %161 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, -1
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load %struct.super_block*, %struct.super_block** %5, align 8
  %166 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %167 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 14
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @alloc_in_bmp(%struct.super_block* %165, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %195

175:                                              ; preds = %164, %159, %156
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %75

179:                                              ; preds = %75
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 %186, 3
  %188 = sdiv i32 %187, 4
  %189 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %12, align 8
  %190 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = sdiv i32 %191, 2
  store i32 %192, i32* %8, align 4
  br label %74

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193, %179
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %174, %147, %121, %95, %52
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %195
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %205, %198
  %200 = load %struct.super_block*, %struct.super_block** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 @hpfs_claim_alloc(%struct.super_block* %200, i32 %203)
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ult i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i64 @unlikely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %199, label %213

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %195
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %245

217:                                              ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %221

221:                                              ; preds = %241, %220
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %244

225:                                              ; preds = %221
  %226 = load %struct.super_block*, %struct.super_block** %5, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %7, align 4
  %229 = add i32 %227, %228
  %230 = load i32, i32* %10, align 4
  %231 = add i32 %229, %230
  %232 = call i32 @hpfs_alloc_if_possible(%struct.super_block* %226, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %225
  %235 = load %struct.super_block*, %struct.super_block** %5, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @hpfs_error(%struct.super_block* %235, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %236, i32 %237, i32 %238)
  store i32 0, i32* %9, align 4
  br label %244

240:                                              ; preds = %225
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %221

244:                                              ; preds = %234, %221
  br label %245

245:                                              ; preds = %244, %217, %214
  %246 = load i32, i32* %9, align 4
  ret i32 %246
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @alloc_in_bmp(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @hpfs_claim_alloc(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpfs_alloc_if_possible(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
