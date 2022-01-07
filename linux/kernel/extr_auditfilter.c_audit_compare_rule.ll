; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_compare_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_compare_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i64, i64, i64, i64, i32, i64*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }

@AUDIT_BITMASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_krule*, %struct.audit_krule*)* @audit_compare_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_compare_rule(%struct.audit_krule* %0, %struct.audit_krule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_krule*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_krule* %0, %struct.audit_krule** %4, align 8
  store %struct.audit_krule* %1, %struct.audit_krule** %5, align 8
  %7 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %8 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %11 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %46, label %14

14:                                               ; preds = %2
  %15 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %16 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %19 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %46, label %22

22:                                               ; preds = %14
  %23 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %24 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %27 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %22
  %31 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %32 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %35 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %40 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %43 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30, %22, %14, %2
  store i32 1, i32* %3, align 4
  br label %264

47:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %234, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %51 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %237

54:                                               ; preds = %48
  %55 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %56 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %64 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %62, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %54
  %73 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %74 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %73, i32 0, i32 6
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %82 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72, %54
  store i32 1, i32* %3, align 4
  br label %264

91:                                               ; preds = %72
  %92 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %93 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %92, i32 0, i32 6
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %213 [
    i32 131, label %100
    i32 134, label %100
    i32 132, label %100
    i32 133, label %100
    i32 135, label %100
    i32 137, label %100
    i32 140, label %100
    i32 139, label %100
    i32 141, label %100
    i32 142, label %100
    i32 128, label %121
    i32 152, label %134
    i32 148, label %147
    i32 149, label %158
    i32 129, label %171
    i32 150, label %171
    i32 130, label %171
    i32 146, label %171
    i32 144, label %171
    i32 138, label %171
    i32 145, label %192
    i32 151, label %192
    i32 136, label %192
    i32 147, label %192
    i32 143, label %192
  ]

100:                                              ; preds = %91, %91, %91, %91, %91, %91, %91, %91, %91, %91
  %101 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %102 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %101, i32 0, i32 6
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %110 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strcmp(i32 %108, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %264

120:                                              ; preds = %100
  br label %233

121:                                              ; preds = %91
  %122 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %123 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @audit_watch_path(i32 %124)
  %126 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %127 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @audit_watch_path(i32 %128)
  %130 = call i32 @strcmp(i32 %125, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %264

133:                                              ; preds = %121
  br label %233

134:                                              ; preds = %91
  %135 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %136 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @audit_tree_path(i32 %137)
  %139 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %140 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @audit_tree_path(i32 %141)
  %143 = call i32 @strcmp(i32 %138, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %264

146:                                              ; preds = %134
  br label %233

147:                                              ; preds = %91
  %148 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %149 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %152 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strcmp(i32 %150, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %264

157:                                              ; preds = %147
  br label %233

158:                                              ; preds = %91
  %159 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %160 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @audit_mark_path(i32 %161)
  %163 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %164 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @audit_mark_path(i32 %165)
  %167 = call i32 @strcmp(i32 %162, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  store i32 1, i32* %3, align 4
  br label %264

170:                                              ; preds = %158
  br label %233

171:                                              ; preds = %91, %91, %91, %91, %91, %91
  %172 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %173 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %172, i32 0, i32 6
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %181 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %180, i32 0, i32 6
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @uid_eq(i32 %179, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %171
  store i32 1, i32* %3, align 4
  br label %264

191:                                              ; preds = %171
  br label %233

192:                                              ; preds = %91, %91, %91, %91, %91
  %193 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %194 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %193, i32 0, i32 6
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %202 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %201, i32 0, i32 6
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @gid_eq(i32 %200, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %264

212:                                              ; preds = %192
  br label %233

213:                                              ; preds = %91
  %214 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %215 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %214, i32 0, i32 6
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %223 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %222, i32 0, i32 6
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %221, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %213
  store i32 1, i32* %3, align 4
  br label %264

232:                                              ; preds = %213
  br label %233

233:                                              ; preds = %232, %212, %191, %170, %157, %146, %133, %120
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %48

237:                                              ; preds = %48
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %260, %237
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @AUDIT_BITMASK_SIZE, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %263

242:                                              ; preds = %238
  %243 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %244 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %243, i32 0, i32 5
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %251 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %250, i32 0, i32 5
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %249, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %242
  store i32 1, i32* %3, align 4
  br label %264

259:                                              ; preds = %242
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %238

263:                                              ; preds = %238
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %258, %231, %211, %190, %169, %156, %145, %132, %119, %90, %46
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @audit_watch_path(i32) #1

declare dso_local i32 @audit_tree_path(i32) #1

declare dso_local i32 @audit_mark_path(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
