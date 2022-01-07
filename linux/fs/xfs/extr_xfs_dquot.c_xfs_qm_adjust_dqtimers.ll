; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_adjust_dqtimers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_adjust_dqtimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_adjust_dqtimers(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 11
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @be64_to_cpu(i64 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 14
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @be64_to_cpu(i64 %25)
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %18, %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 13
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @be64_to_cpu(i64 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @be64_to_cpu(i64 %40)
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %33, %18
  %44 = call i64 (...) @get_seconds()
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %44, %49
  %51 = call i8* @cpu_to_be32(i64 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 11
  store i8* %51, i8** %53, align 8
  br label %57

54:                                               ; preds = %33, %28
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 15
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %43
  br label %92

58:                                               ; preds = %2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 14
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 13
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @be64_to_cpu(i64 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 14
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @be64_to_cpu(i64 %70)
  %72 = icmp sle i64 %67, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %63, %58
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @be64_to_cpu(i64 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @be64_to_cpu(i64 %85)
  %87 = icmp sle i64 %82, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78, %73
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 11
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %78, %63
  br label %92

92:                                               ; preds = %91, %57
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %142, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @be64_to_cpu(i64 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @be64_to_cpu(i64 %109)
  %111 = icmp sgt i64 %106, %110
  br i1 %111, label %127, label %112

112:                                              ; preds = %102, %97
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @be64_to_cpu(i64 %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @be64_to_cpu(i64 %124)
  %126 = icmp sgt i64 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %117, %102
  %128 = call i64 (...) @get_seconds()
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  %135 = call i8* @cpu_to_be32(i64 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  br label %141

138:                                              ; preds = %117, %112
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 10
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %127
  br label %176

142:                                              ; preds = %92
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @be64_to_cpu(i64 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @be64_to_cpu(i64 %154)
  %156 = icmp sle i64 %151, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %147, %142
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @be64_to_cpu(i64 %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @be64_to_cpu(i64 %169)
  %171 = icmp sle i64 %166, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %162, %157
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 6
  store i8* null, i8** %174, align 8
  br label %175

175:                                              ; preds = %172, %162, %147
  br label %176

176:                                              ; preds = %175, %141
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %226, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @be64_to_cpu(i64 %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @be64_to_cpu(i64 %193)
  %195 = icmp sgt i64 %190, %194
  br i1 %195, label %211, label %196

196:                                              ; preds = %186, %181
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %196
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @be64_to_cpu(i64 %204)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @be64_to_cpu(i64 %208)
  %210 = icmp sgt i64 %205, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %201, %186
  %212 = call i64 (...) @get_seconds()
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %212, %217
  %219 = call i8* @cpu_to_be32(i64 %218)
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  br label %225

222:                                              ; preds = %201, %196
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 5
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %222, %211
  br label %260

226:                                              ; preds = %176
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @be64_to_cpu(i64 %234)
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @be64_to_cpu(i64 %238)
  %240 = icmp sle i64 %235, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %231, %226
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = call i64 @be64_to_cpu(i64 %249)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @be64_to_cpu(i64 %253)
  %255 = icmp sle i64 %250, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %246, %241
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  store i8* null, i8** %258, align 8
  br label %259

259:                                              ; preds = %256, %246, %231
  br label %260

260:                                              ; preds = %259, %225
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
