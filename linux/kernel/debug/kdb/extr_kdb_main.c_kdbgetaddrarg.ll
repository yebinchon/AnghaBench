; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdbgetaddrarg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdbgetaddrarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@KDB_ENABLE_MEM_READ = common dso_local global i32 0, align 4
@KDB_ENABLE_FLOW_CTRL = common dso_local global i32 0, align 4
@kdb_cmd_enabled = common dso_local global i32 0, align 4
@KDB_NOPERM = common dso_local global i32 0, align 4
@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@KDB_NOTIMP = common dso_local global i32 0, align 4
@KDB_INVADDRFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbgetaddrarg(i32 %0, i8** %1, i32* %2, i64* %3, i64* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  store i8 0, i8* %20, align 1
  %23 = load i32, i32* @KDB_ENABLE_MEM_READ, align 4
  %24 = load i32, i32* @KDB_ENABLE_FLOW_CTRL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @kdb_cmd_enabled, align 4
  %27 = call i32 @kdb_check_flags(i32 %25, i32 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @KDB_NOPERM, align 4
  store i32 %30, i32* %7, align 4
  br label %255

31:                                               ; preds = %6
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %37, i32* %7, align 4
  br label %255

38:                                               ; preds = %31
  %39 = load i8**, i8*** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %19, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = call i8* @strpbrk(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %21, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i8*, i8** %21, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %20, align 1
  %52 = load i8*, i8** %21, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %21, align 8
  store i8 0, i8* %52, align 1
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i8*, i8** %19, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 36
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i8*, i8** %19, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @kdbgetulenv(i8* %62, i64* %14)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %7, align 4
  br label %255

68:                                               ; preds = %60
  br label %106

69:                                               ; preds = %54
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = call i32 (...) @kdb_check_regs()
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %7, align 4
  br label %255

81:                                               ; preds = %75
  %82 = load i32, i32* @KDB_NOTIMP, align 4
  store i32 %82, i32* %7, align 4
  br label %255

83:                                               ; preds = %69
  %84 = load i8*, i8** %19, align 8
  %85 = call i32 @kdbgetsymval(i8* %84, %struct.TYPE_4__* %22)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %14, align 8
  br label %104

91:                                               ; preds = %83
  %92 = load i8**, i8*** %9, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @kdbgetularg(i8* %97, i64* %14)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %7, align 4
  br label %255

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %88
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %68
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @kdbnearsym(i64 %110, %struct.TYPE_4__* %22)
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load i8**, i8*** %13, align 8
  %117 = icmp ne i8** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i8*, i8** %19, align 8
  %120 = load i8**, i8*** %13, align 8
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i64*, i64** %11, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, i64* %14, align 8
  %126 = load i64*, i64** %11, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i64*, i64** %12, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i8**, i8*** %13, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i8**, i8*** %13, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %138, %140
  %142 = load i64*, i64** %12, align 8
  store i64 %141, i64* %142, align 8
  br label %143

143:                                              ; preds = %137, %133, %130, %127
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8, i8* %20, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %255

153:                                              ; preds = %148, %143
  %154 = load i8, i8* %20, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %196

157:                                              ; preds = %153
  %158 = load i8**, i8*** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 43
  br i1 %167, label %168, label %180

168:                                              ; preds = %157
  %169 = load i8**, i8*** %9, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 45
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %255

180:                                              ; preds = %168, %157
  %181 = load i8**, i8*** %9, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %181, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 43
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %16, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %180
  br label %201

196:                                              ; preds = %153
  %197 = load i8, i8* %20, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 43
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %196, %195
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i8, i8* %20, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @KDB_INVADDRFMT, align 4
  store i32 %211, i32* %7, align 4
  br label %255

212:                                              ; preds = %206, %201
  %213 = load i8, i8* %20, align 1
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %212
  %216 = load i8**, i8*** %9, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %216, i64 %219
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %21, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %215, %212
  %226 = load i8*, i8** %21, align 8
  %227 = call i32 @kdbgetularg(i8* %226, i64* %15)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %7, align 4
  br label %255

232:                                              ; preds = %225
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i64, i64* %15, align 8
  %237 = sub i64 0, %236
  store i64 %237, i64* %15, align 8
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i64*, i64** %12, align 8
  %240 = icmp ne i64* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i64, i64* %15, align 8
  %243 = load i64*, i64** %12, align 8
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, %242
  store i64 %245, i64* %243, align 8
  br label %246

246:                                              ; preds = %241, %238
  %247 = load i64*, i64** %11, align 8
  %248 = icmp ne i64* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i64, i64* %15, align 8
  %251 = load i64*, i64** %11, align 8
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, %250
  store i64 %253, i64* %251, align 8
  br label %254

254:                                              ; preds = %249, %246
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %254, %230, %210, %179, %152, %101, %81, %79, %66, %36, %29
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local i32 @kdb_check_flags(i32, i32, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @kdbgetulenv(i8*, i64*) #1

declare dso_local i32 @kdb_check_regs(...) #1

declare dso_local i32 @kdbgetsymval(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @kdbgetularg(i8*, i64*) #1

declare dso_local i32 @kdbnearsym(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
