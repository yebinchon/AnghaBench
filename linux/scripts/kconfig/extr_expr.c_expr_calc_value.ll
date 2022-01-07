; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_calc_value.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_calc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.expr* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.expr* }
%union.string_value = type { i64 }

@k_string = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expr_calc_value: %d?\0A\00", align 1
@no = common dso_local global i32 0, align 4
@S_STRING = common dso_local global i32 0, align 4
@k_unsigned = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expr_calc_value: relation %d?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_calc_value(%struct.expr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.string_value, align 8
  %11 = alloca %union.string_value, align 8
  %12 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %3, align 8
  %13 = load i32, i32* @k_string, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @k_string, align 4
  store i32 %14, i32* %9, align 4
  %15 = bitcast %union.string_value* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %union.string_value* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.expr*, %struct.expr** %3, align 8
  %18 = icmp ne %struct.expr* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @yes, align 4
  store i32 %20, i32* %2, align 4
  br label %249

21:                                               ; preds = %1
  %22 = load %struct.expr*, %struct.expr** %3, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %75 [
    i32 129, label %25
    i32 137, label %38
    i32 130, label %52
    i32 131, label %66
    i32 136, label %74
    i32 135, label %74
    i32 134, label %74
    i32 133, label %74
    i32 132, label %74
    i32 128, label %74
  ]

25:                                               ; preds = %21
  %26 = load %struct.expr*, %struct.expr** %3, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @sym_calc_value(%struct.TYPE_9__* %29)
  %31 = load %struct.expr*, %struct.expr** %3, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %249

38:                                               ; preds = %21
  %39 = load %struct.expr*, %struct.expr** %3, align 8
  %40 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.expr*, %struct.expr** %41, align 8
  %43 = call i32 @expr_calc_value(%struct.expr* %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.expr*, %struct.expr** %3, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.expr*, %struct.expr** %46, align 8
  %48 = call i32 @expr_calc_value(%struct.expr* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @EXPR_AND(i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %249

52:                                               ; preds = %21
  %53 = load %struct.expr*, %struct.expr** %3, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = call i32 @expr_calc_value(%struct.expr* %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.expr*, %struct.expr** %3, align 8
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = call i32 @expr_calc_value(%struct.expr* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @EXPR_OR(i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %249

66:                                               ; preds = %21
  %67 = load %struct.expr*, %struct.expr** %3, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.expr*, %struct.expr** %69, align 8
  %71 = call i32 @expr_calc_value(%struct.expr* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @EXPR_NOT(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %249

74:                                               ; preds = %21, %21, %21, %21, %21, %21
  br label %81

75:                                               ; preds = %21
  %76 = load %struct.expr*, %struct.expr** %3, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @no, align 4
  store i32 %80, i32* %2, align 4
  br label %249

81:                                               ; preds = %74
  %82 = load %struct.expr*, %struct.expr** %3, align 8
  %83 = getelementptr inbounds %struct.expr, %struct.expr* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i32 @sym_calc_value(%struct.TYPE_9__* %85)
  %87 = load %struct.expr*, %struct.expr** %3, align 8
  %88 = getelementptr inbounds %struct.expr, %struct.expr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @sym_calc_value(%struct.TYPE_9__* %90)
  %92 = load %struct.expr*, %struct.expr** %3, align 8
  %93 = getelementptr inbounds %struct.expr, %struct.expr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i8* @sym_get_string_value(%struct.TYPE_9__* %95)
  store i8* %96, i8** %6, align 8
  %97 = load %struct.expr*, %struct.expr** %3, align 8
  %98 = getelementptr inbounds %struct.expr, %struct.expr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i8* @sym_get_string_value(%struct.TYPE_9__* %100)
  store i8* %101, i8** %7, align 8
  %102 = load %struct.expr*, %struct.expr** %3, align 8
  %103 = getelementptr inbounds %struct.expr, %struct.expr* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S_STRING, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %81
  %111 = load %struct.expr*, %struct.expr** %3, align 8
  %112 = getelementptr inbounds %struct.expr, %struct.expr* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S_STRING, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %110, %81
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.expr*, %struct.expr** %3, align 8
  %122 = getelementptr inbounds %struct.expr, %struct.expr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @expr_parse_string(i8* %120, i32 %126, %union.string_value* %10)
  store i32 %127, i32* %8, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.expr*, %struct.expr** %3, align 8
  %130 = getelementptr inbounds %struct.expr, %struct.expr* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @expr_parse_string(i8* %128, i32 %134, %union.string_value* %11)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %119, %110
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @k_string, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @k_string, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %136
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @strcmp(i8* %145, i8* %146)
  store i32 %147, i32* %12, align 4
  br label %185

148:                                              ; preds = %140
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @k_unsigned, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @k_unsigned, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152, %148
  %157 = bitcast %union.string_value* %10 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = bitcast %union.string_value* %11 to i64*
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %158, %160
  %162 = zext i1 %161 to i32
  %163 = bitcast %union.string_value* %10 to i64*
  %164 = load i64, i64* %163, align 8
  %165 = bitcast %union.string_value* %11 to i64*
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %164, %166
  %168 = zext i1 %167 to i32
  %169 = sub nsw i32 %162, %168
  store i32 %169, i32* %12, align 4
  br label %184

170:                                              ; preds = %152
  %171 = bitcast %union.string_value* %10 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = bitcast %union.string_value* %11 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %172, %174
  %176 = zext i1 %175 to i32
  %177 = bitcast %union.string_value* %10 to i64*
  %178 = load i64, i64* %177, align 8
  %179 = bitcast %union.string_value* %11 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %178, %180
  %182 = zext i1 %181 to i32
  %183 = sub nsw i32 %176, %182
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %170, %156
  br label %185

185:                                              ; preds = %184, %144
  %186 = load %struct.expr*, %struct.expr** %3, align 8
  %187 = getelementptr inbounds %struct.expr, %struct.expr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  switch i32 %188, label %243 [
    i32 136, label %189
    i32 135, label %198
    i32 134, label %207
    i32 133, label %216
    i32 132, label %225
    i32 128, label %234
  ]

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* @no, align 4
  br label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @yes, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  store i32 %197, i32* %2, align 4
  br label %249

198:                                              ; preds = %185
  %199 = load i32, i32* %12, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32, i32* @yes, align 4
  br label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @no, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  store i32 %206, i32* %2, align 4
  br label %249

207:                                              ; preds = %185
  %208 = load i32, i32* %12, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i32, i32* @yes, align 4
  br label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @no, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  store i32 %215, i32* %2, align 4
  br label %249

216:                                              ; preds = %185
  %217 = load i32, i32* %12, align 4
  %218 = icmp sle i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* @yes, align 4
  br label %223

221:                                              ; preds = %216
  %222 = load i32, i32* @no, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  store i32 %224, i32* %2, align 4
  br label %249

225:                                              ; preds = %185
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = load i32, i32* @yes, align 4
  br label %232

230:                                              ; preds = %225
  %231 = load i32, i32* @no, align 4
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32 [ %229, %228 ], [ %231, %230 ]
  store i32 %233, i32* %2, align 4
  br label %249

234:                                              ; preds = %185
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i32, i32* @yes, align 4
  br label %241

239:                                              ; preds = %234
  %240 = load i32, i32* @no, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  store i32 %242, i32* %2, align 4
  br label %249

243:                                              ; preds = %185
  %244 = load %struct.expr*, %struct.expr** %3, align 8
  %245 = getelementptr inbounds %struct.expr, %struct.expr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* @no, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %243, %241, %232, %223, %214, %205, %196, %75, %66, %52, %38, %25, %19
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sym_calc_value(%struct.TYPE_9__*) #2

declare dso_local i32 @EXPR_AND(i32, i32) #2

declare dso_local i32 @EXPR_OR(i32, i32) #2

declare dso_local i32 @EXPR_NOT(i32) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i8* @sym_get_string_value(%struct.TYPE_9__*) #2

declare dso_local i32 @expr_parse_string(i8*, i32, %union.string_value*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
