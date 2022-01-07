; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_new_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_new_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }
%struct.free_segmap_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ALLOC_RIGHT = common dso_local global i32 0, align 4
@ALLOC_LEFT = common dso_local global i32 0, align 4
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32*, i32, i32)* @get_new_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_new_segment(%struct.f2fs_sb_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.free_segmap_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %21 = call %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info* %20)
  store %struct.free_segmap_info* %21, %struct.free_segmap_info** %9, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %23 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %22)
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = udiv i32 %23, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %28, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GET_ZONE_FROM_SEG(%struct.f2fs_sb_info* %32, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %38 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = urem i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %53 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %56, 1
  %58 = call i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info* %55, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, 1
  %62 = call i32 @find_next_zero_bit(i32 %54, i32 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add i32 %65, 1
  %67 = call i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info* %64, i32 %66)
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %230

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %42, %4
  br label %72

72:                                               ; preds = %228, %71
  %73 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %74 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %77 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %76)
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @find_next_zero_bit(i32 %75, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %82 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %81)
  %83 = icmp uge i32 %80, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ALLOC_RIGHT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %90 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %93 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %92)
  %94 = call i32 @find_next_zero_bit(i32 %91, i32 %93, i32 0)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %98 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %97)
  %99 = icmp uge i32 %96, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %95, i32 %100)
  br label %105

102:                                              ; preds = %84
  store i32 1, i32* %18, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %88
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %140

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %114 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @test_bit(i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %111
  %119 = load i32, i32* %16, align 4
  %120 = icmp ugt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %16, align 4
  br label %111

124:                                              ; preds = %118
  %125 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %126 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %129 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %128)
  %130 = call i32 @find_next_zero_bit(i32 %127, i32 %129, i32 0)
  store i32 %130, i32* %16, align 4
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %134 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %133)
  %135 = icmp uge i32 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %131, i32 %136)
  br label %138

138:                                              ; preds = %124, %111
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %138, %109
  %141 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info* %141, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @GET_ZONE_FROM_SEC(%struct.f2fs_sb_info* %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  br label %230

150:                                              ; preds = %140
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %152 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %230

156:                                              ; preds = %150
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %230

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @ALLOC_LEFT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, 1
  %171 = load i32, i32* %13, align 4
  %172 = icmp uge i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %230

174:                                              ; preds = %168, %165
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %230

181:                                              ; preds = %177, %174
  br label %182

182:                                              ; preds = %181, %161
  store i32 0, i32* %19, align 4
  br label %183

183:                                              ; preds = %197, %182
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %189 = load i32, i32* %19, align 4
  %190 = call %struct.TYPE_2__* @CURSEG_I(%struct.f2fs_sb_info* %188, i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %200

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %183

200:                                              ; preds = %195, %183
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %200
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %210 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = mul i32 %208, %211
  %213 = sub i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %228

214:                                              ; preds = %204
  %215 = load i32, i32* %12, align 4
  %216 = add i32 %215, 1
  %217 = load i32, i32* %13, align 4
  %218 = icmp uge i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 0, i32* %14, align 4
  br label %227

220:                                              ; preds = %214
  %221 = load i32, i32* %12, align 4
  %222 = add i32 %221, 1
  %223 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %224 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = mul i32 %222, %225
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %220, %219
  br label %228

228:                                              ; preds = %227, %207
  store i32 0, i32* %17, align 4
  br label %72

229:                                              ; preds = %200
  br label %230

230:                                              ; preds = %229, %180, %173, %160, %155, %149, %69
  %231 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %234 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @test_bit(i32 %232, i32 %235)
  %237 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %231, i32 %236)
  %238 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %239 = load i32, i32* %10, align 4
  %240 = call i32 @__set_inuse(%struct.f2fs_sb_info* %238, i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i32*, i32** %6, align 8
  store i32 %241, i32* %242, align 4
  %243 = load %struct.free_segmap_info*, %struct.free_segmap_info** %9, align 8
  %244 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %243, i32 0, i32 0
  %245 = call i32 @spin_unlock(i32* %244)
  ret void
}

declare dso_local %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_ZONE_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @GET_ZONE_FROM_SEC(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_2__* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__set_inuse(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
