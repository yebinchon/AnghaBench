; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_svc_export_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_svc_export_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.svc_export = type { i32, i32, i8*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__, i32*, %struct.cache_detail*, %struct.auth_domain* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fsloc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"secinfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @svc_export_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_export_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.auth_domain*, align 8
  %12 = alloca %struct.svc_export, align 8
  %13 = alloca %struct.svc_export*, align 8
  %14 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.auth_domain* null, %struct.auth_domain** %11, align 8
  %15 = bitcast %struct.svc_export* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 72, i1 false)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %243

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %243

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i32 @qword_get(i8** %6, i8* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %239

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call %struct.auth_domain* @auth_domain_find(i8* %53)
  store %struct.auth_domain* %54, %struct.auth_domain** %11, align 8
  %55 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %56 = icmp ne %struct.auth_domain* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %239

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 @qword_get(i8** %6, i8* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %236

66:                                               ; preds = %58
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 3
  %69 = call i32 @kern_path(i8* %67, i32 0, %struct.TYPE_5__* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %236

73:                                               ; preds = %66
  %74 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %75 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 10
  store %struct.auth_domain* %74, %struct.auth_domain** %75, align 8
  %76 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %77 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 9
  store %struct.cache_detail* %76, %struct.cache_detail** %77, align 8
  %78 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 8
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  %81 = call i64 @get_expiry(i8** %6)
  %82 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %233

89:                                               ; preds = %73
  %90 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  %96 = load i32, i32* @CACHE_NEGATIVE, align 4
  %97 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  br label %206

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %100
  br label %233

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %233

114:                                              ; preds = %107
  %115 = call i32 (...) @current_user_ns()
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @make_kuid(i32 %115, i32 %116)
  %118 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 6
  store i32 %117, i32* %118, align 4
  %119 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %233

123:                                              ; preds = %114
  %124 = call i32 (...) @current_user_ns()
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @make_kgid(i32 %124, i32 %125)
  %127 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  store i32 %126, i32* %127, align 8
  %128 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %233

132:                                              ; preds = %123
  %133 = load i32, i32* %14, align 4
  %134 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %170, %132
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = call i32 @qword_get(i8** %6, i8* %136, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %171

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 4
  %147 = call i32 @fsloc_parse(i8** %6, i8* %145, i32* %146)
  store i32 %147, i32* %10, align 4
  br label %166

148:                                              ; preds = %140
  %149 = load i8*, i8** %8, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 2
  %155 = call i32 @nfsd_uuid_parse(i8** %6, i8* %153, i8** %154)
  store i32 %155, i32* %10, align 4
  br label %165

156:                                              ; preds = %148
  %157 = load i8*, i8** %8, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @secinfo_parse(i8** %6, i8* %161, %struct.svc_export* %12)
  store i32 %162, i32* %10, align 4
  br label %164

163:                                              ; preds = %156
  br label %171

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164, %152
  br label %166

166:                                              ; preds = %165, %144
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %227

170:                                              ; preds = %166
  br label %135

171:                                              ; preds = %163, %135
  %172 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @d_inode(i32 %174)
  %176 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 0
  %177 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @check_export(i32 %175, i32* %176, i8* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %227

183:                                              ; preds = %171
  %184 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 (...) @seconds_since_boot()
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %227

190:                                              ; preds = %183
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %10, align 4
  %193 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @uid_valid(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  br label %227

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @gid_valid(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  br label %227

204:                                              ; preds = %198
  store i32 0, i32* %10, align 4
  %205 = call i32 @nfsd4_setup_layout_type(%struct.svc_export* %12)
  br label %206

206:                                              ; preds = %204, %95
  %207 = call %struct.svc_export* @svc_export_lookup(%struct.svc_export* %12)
  store %struct.svc_export* %207, %struct.svc_export** %13, align 8
  %208 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %209 = icmp ne %struct.svc_export* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %212 = call %struct.svc_export* @svc_export_update(%struct.svc_export* %12, %struct.svc_export* %211)
  store %struct.svc_export* %212, %struct.svc_export** %13, align 8
  br label %216

213:                                              ; preds = %206
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %213, %210
  %217 = call i32 (...) @cache_flush()
  %218 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %219 = icmp eq %struct.svc_export* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %10, align 4
  br label %226

223:                                              ; preds = %216
  %224 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %225 = call i32 @exp_put(%struct.svc_export* %224)
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %203, %197, %189, %182, %169
  %228 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 4
  %229 = call i32 @nfsd4_fslocs_free(i32* %228)
  %230 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @kfree(i8* %231)
  br label %233

233:                                              ; preds = %227, %131, %122, %113, %106, %88
  %234 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 3
  %235 = call i32 @path_put(%struct.TYPE_5__* %234)
  br label %236

236:                                              ; preds = %233, %72, %65
  %237 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %238 = call i32 @auth_domain_put(%struct.auth_domain* %237)
  br label %239

239:                                              ; preds = %236, %57, %49
  %240 = load i8*, i8** %8, align 8
  %241 = call i32 @kfree(i8* %240)
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %239, %38, %24
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @qword_get(i8**, i8*, i32) #2

declare dso_local %struct.auth_domain* @auth_domain_find(i8*) #2

declare dso_local i32 @kern_path(i8*, i32, %struct.TYPE_5__*) #2

declare dso_local i64 @get_expiry(i8**) #2

declare dso_local i32 @get_int(i8**, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fsloc_parse(i8**, i8*, i32*) #2

declare dso_local i32 @nfsd_uuid_parse(i8**, i8*, i8**) #2

declare dso_local i32 @secinfo_parse(i8**, i8*, %struct.svc_export*) #2

declare dso_local i32 @check_export(i32, i32*, i8*) #2

declare dso_local i32 @d_inode(i32) #2

declare dso_local i64 @seconds_since_boot(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @nfsd4_setup_layout_type(%struct.svc_export*) #2

declare dso_local %struct.svc_export* @svc_export_lookup(%struct.svc_export*) #2

declare dso_local %struct.svc_export* @svc_export_update(%struct.svc_export*, %struct.svc_export*) #2

declare dso_local i32 @cache_flush(...) #2

declare dso_local i32 @exp_put(%struct.svc_export*) #2

declare dso_local i32 @nfsd4_fslocs_free(i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @path_put(%struct.TYPE_5__*) #2

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
