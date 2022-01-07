; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_environ.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_execve = type { %struct.tomoyo_request_info, %struct.linux_binprm* }
%struct.tomoyo_request_info = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.linux_binprm = type { i64, i32, i32 }
%struct.tomoyo_page_dump = type { i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_MAC_ENVIRON = common dso_local global i32 0, align 4
@TOMOYO_EXEC_TMPSIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_ENFORCING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_execve*)* @tomoyo_environ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_environ(%struct.tomoyo_execve* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_execve*, align 8
  %4 = alloca %struct.tomoyo_request_info*, align 8
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.tomoyo_page_dump, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.tomoyo_execve* %0, %struct.tomoyo_execve** %3, align 8
  %15 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %16 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %15, i32 0, i32 0
  store %struct.tomoyo_request_info* %16, %struct.tomoyo_request_info** %4, align 8
  %17 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %18 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %17, i32 0, i32 1
  %19 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  store %struct.linux_binprm* %19, %struct.linux_binprm** %5, align 8
  %20 = bitcast %struct.tomoyo_page_dump* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = urem i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %32 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @TOMOYO_MAC_ENVIRON, align 4
  %37 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %38 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %41 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %46 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %49 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %54 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TOMOYO_MAC_ENVIRON, align 4
  %58 = call i64 @tomoyo_get_mode(i32 %52, i32 %56, i32 %57)
  %59 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %3, align 8
  %60 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %63 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %1
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %1
  store i32 0, i32* %2, align 4
  br label %264

70:                                               ; preds = %66
  %71 = load i32, i32* @TOMOYO_EXEC_TMPSIZE, align 4
  %72 = load i32, i32* @GFP_NOFS, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %250

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %248, %122, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %249

83:                                               ; preds = %78
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @tomoyo_dump_page(%struct.linux_binprm* %84, i64 %85, %struct.tomoyo_page_dump* %6)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %250

89:                                               ; preds = %83
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %90, %92
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %118, %89
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = icmp ult i64 %101, %102
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ false, %96 ], [ %103, %99 ]
  br i1 %105, label %106, label %119

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %6, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %115, %106
  br label %96

119:                                              ; preds = %104
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %78

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %247, %233, %123
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @PAGE_SIZE, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %248

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %6, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* %14, align 1
  %137 = load i8, i8* %14, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %225

140:                                              ; preds = %129
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @TOMOYO_EXEC_TMPSIZE, align 4
  %143 = sub nsw i32 %142, 10
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %225

145:                                              ; preds = %140
  %146 = load i8, i8* %14, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 61
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  br label %224

155:                                              ; preds = %145
  %156 = load i8, i8* %14, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 92
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 92, i8* %164, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 92, i8* %169, align 1
  br label %223

170:                                              ; preds = %155
  %171 = load i8, i8* %14, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp sgt i32 %172, 32
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i8, i8* %14, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp slt i32 %176, 127
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i8, i8* %14, align 1
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  store i8 %179, i8* %184, align 1
  br label %222

185:                                              ; preds = %174, %170
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  store i8 92, i8* %190, align 1
  %191 = load i8, i8* %14, align 1
  %192 = zext i8 %191 to i32
  %193 = ashr i32 %192, 6
  %194 = add nsw i32 %193, 48
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  store i8 %195, i8* %200, align 1
  %201 = load i8, i8* %14, align 1
  %202 = zext i8 %201 to i32
  %203 = ashr i32 %202, 3
  %204 = and i32 %203, 7
  %205 = add nsw i32 %204, 48
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  store i8 %206, i8* %211, align 1
  %212 = load i8, i8* %14, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %213, 7
  %215 = add nsw i32 %214, 48
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  br label %222

222:                                              ; preds = %185, %178
  br label %223

223:                                              ; preds = %222, %159
  br label %224

224:                                              ; preds = %223, %149
  br label %230

225:                                              ; preds = %140, %129
  %226 = load i8*, i8** %7, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  store i8 0, i8* %229, align 1
  br label %230

230:                                              ; preds = %225, %224
  %231 = load i8, i8* %14, align 1
  %232 = icmp ne i8 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %124

234:                                              ; preds = %230
  %235 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = call i64 @tomoyo_env_perm(%struct.tomoyo_request_info* %235, i8* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @EPERM, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %13, align 4
  br label %248

242:                                              ; preds = %234
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  store i32 0, i32* %13, align 4
  br label %248

247:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %124

248:                                              ; preds = %246, %239, %124
  store i32 0, i32* %10, align 4
  br label %78

249:                                              ; preds = %78
  br label %250

250:                                              ; preds = %249, %88, %76
  %251 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %252 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @TOMOYO_CONFIG_ENFORCING, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store i32 0, i32* %13, align 4
  br label %257

257:                                              ; preds = %256, %250
  %258 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %6, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @kfree(i8* %259)
  %261 = load i8*, i8** %7, align 8
  %262 = call i32 @kfree(i8* %261)
  %263 = load i32, i32* %13, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %257, %69
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @tomoyo_get_mode(i32, i32, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @tomoyo_dump_page(%struct.linux_binprm*, i64, %struct.tomoyo_page_dump*) #2

declare dso_local i64 @tomoyo_env_perm(%struct.tomoyo_request_info*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
