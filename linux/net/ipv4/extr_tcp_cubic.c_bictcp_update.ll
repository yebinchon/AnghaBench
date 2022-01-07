; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bictcp = type { i64, i64, i64, i64, i64, i64, i32, i64, i32, i32 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@cube_factor = common dso_local global i64 0, align 8
@BICTCP_HZ = common dso_local global i32 0, align 4
@cube_rtt_scale = common dso_local global i32 0, align 4
@tcp_friendliness = common dso_local global i64 0, align 8
@beta_scale = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bictcp*, i64, i64)* @bictcp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_update(%struct.bictcp* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bictcp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bictcp* %0, %struct.bictcp** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %15 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %19 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load i64, i64* @tcp_jiffies32, align 8
  %25 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %26 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 %30, 32
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %259

34:                                               ; preds = %23, %3
  %35 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %36 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i64, i64* @tcp_jiffies32, align 8
  %41 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %42 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %197

46:                                               ; preds = %39, %34
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %49 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @tcp_jiffies32, align 8
  %51 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %52 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %54 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %46
  %58 = load i64, i64* @tcp_jiffies32, align 8
  %59 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %60 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %63 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %66 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %68 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  %73 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %74 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %73, i32 0, i32 6
  store i32 0, i32* %74, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %77 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  br label %94

78:                                               ; preds = %57
  %79 = load i64, i64* @cube_factor, align 8
  %80 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %81 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub nsw i64 %82, %83
  %85 = mul nsw i64 %79, %84
  %86 = call i32 @cubic_root(i64 %85)
  %87 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %88 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %90 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %93 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %78, %72
  br label %95

95:                                               ; preds = %94, %46
  %96 = load i64, i64* @tcp_jiffies32, align 8
  %97 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %98 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %11, align 4
  %102 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %103 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 3
  %106 = call i64 @msecs_to_jiffies(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @BICTCP_HZ, align 4
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @HZ, align 4
  %116 = call i32 @do_div(i32 %114, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %119 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %95
  %123 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %124 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %10, align 4
  br label %134

128:                                              ; preds = %95
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %131 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @cube_rtt_scale, align 4
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* @BICTCP_HZ, align 4
  %143 = mul nsw i32 3, %142
  %144 = add nsw i32 10, %143
  %145 = ashr i32 %141, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %149 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %134
  %153 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %154 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = sub nsw i64 %155, %156
  store i64 %157, i64* %8, align 8
  br label %164

158:                                              ; preds = %134
  %159 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %160 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = add nsw i64 %161, %162
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %158, %152
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %5, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* %5, align 8
  %172 = sub nsw i64 %170, %171
  %173 = sdiv i64 %169, %172
  %174 = trunc i64 %173 to i32
  %175 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %176 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  br label %183

177:                                              ; preds = %164
  %178 = load i64, i64* %5, align 8
  %179 = mul nsw i64 100, %178
  %180 = trunc i64 %179 to i32
  %181 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %182 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %168
  %184 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %185 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %190 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 20
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %195 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %194, i32 0, i32 9
  store i32 20, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %188, %183
  br label %197

197:                                              ; preds = %196, %45
  %198 = load i64, i64* @tcp_friendliness, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %250

200:                                              ; preds = %197
  %201 = load i64, i64* @beta_scale, align 8
  store i64 %201, i64* %12, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* %12, align 8
  %204 = mul nsw i64 %202, %203
  %205 = ashr i64 %204, 3
  store i64 %205, i64* %7, align 8
  br label %206

206:                                              ; preds = %212, %200
  %207 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %208 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = load i64, i64* %7, align 8
  %214 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %215 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %219 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %219, align 8
  br label %206

222:                                              ; preds = %206
  %223 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %224 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %5, align 8
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %249

228:                                              ; preds = %222
  %229 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %230 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %5, align 8
  %233 = sub nsw i64 %231, %232
  store i64 %233, i64* %7, align 8
  %234 = load i64, i64* %5, align 8
  %235 = load i64, i64* %7, align 8
  %236 = sdiv i64 %234, %235
  store i64 %236, i64* %9, align 8
  %237 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %238 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %9, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %228
  %244 = load i64, i64* %9, align 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %247 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %246, i32 0, i32 9
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %243, %228
  br label %249

249:                                              ; preds = %248, %222
  br label %250

250:                                              ; preds = %249, %197
  %251 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %252 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = call i64 @max(i64 %254, i32 2)
  %256 = trunc i64 %255 to i32
  %257 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %258 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %257, i32 0, i32 9
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %250, %33
  ret void
}

declare dso_local i32 @cubic_root(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
