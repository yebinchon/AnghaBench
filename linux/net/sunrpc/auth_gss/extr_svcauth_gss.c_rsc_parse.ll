; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsc_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.rsc = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.gss_api_mech*, %struct.TYPE_6__*, i8*, i32 }
%struct.gss_api_mech = type { i32 }
%struct.TYPE_6__ = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@NGROUPS_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @rsc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsc_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rsc, align 8
  %12 = alloca %struct.rsc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gss_api_mech*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  store %struct.rsc* null, %struct.rsc** %12, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  store %struct.gss_api_mech* null, %struct.gss_api_mech** %15, align 8
  %22 = call i32 @memset(%struct.rsc* %11, i32 0, i32 64)
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @qword_get(i8** %5, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %208

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 3
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @dup_to_netobj(i32* %32, i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %208

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = call i64 @get_expiry(i8** %5)
  store i64 %41, i64* %13, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %208

47:                                               ; preds = %38
  %48 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %49 = call %struct.rsc* @rsc_lookup(%struct.cache_detail* %48, %struct.rsc* %11)
  store %struct.rsc* %49, %struct.rsc** %12, align 8
  %50 = load %struct.rsc*, %struct.rsc** %12, align 8
  %51 = icmp ne %struct.rsc* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %208

53:                                               ; preds = %47
  %54 = call i32 @get_int(i8** %5, i32* %8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %208

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @CACHE_NEGATIVE, align 4
  %67 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = call i32 @set_bit(i32 %66, i64* %68)
  br label %201

70:                                               ; preds = %60
  %71 = call i32 (...) @current_user_ns()
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @make_kuid(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = call i32 @get_int(i8** %5, i32* %8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %208

79:                                               ; preds = %70
  %80 = call i32 (...) @current_user_ns()
  %81 = load i32, i32* %8, align 4
  %82 = call i8* @make_kgid(i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = call i32 @get_int(i8** %5, i32* %16)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %208

88:                                               ; preds = %79
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @NGROUPS_MAX, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %88
  br label %208

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call %struct.TYPE_6__* @groups_alloc(i32 %99)
  %101 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = icmp eq %struct.TYPE_6__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %208

108:                                              ; preds = %96
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %137, %108
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = call i32 @get_int(i8** %5, i32* %8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %208

119:                                              ; preds = %115
  %120 = call i32 (...) @current_user_ns()
  %121 = load i32, i32* %8, align 4
  %122 = call i8* @make_kgid(i32 %120, i32 %121)
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @gid_valid(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %208

127:                                              ; preds = %119
  %128 = load i8*, i8** %18, align 8
  %129 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %128, i8** %136, align 8
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %111

140:                                              ; preds = %111
  %141 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = call i32 @groups_sort(%struct.TYPE_6__* %143)
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @qword_get(i8** %5, i8* %145, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %208

151:                                              ; preds = %140
  %152 = load i8*, i8** %7, align 8
  %153 = call %struct.gss_api_mech* @gss_mech_get_by_name(i8* %152)
  %154 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store %struct.gss_api_mech* %153, %struct.gss_api_mech** %155, align 8
  store %struct.gss_api_mech* %153, %struct.gss_api_mech** %15, align 8
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %14, align 4
  %158 = load %struct.gss_api_mech*, %struct.gss_api_mech** %15, align 8
  %159 = icmp ne %struct.gss_api_mech* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  br label %208

161:                                              ; preds = %151
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %14, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @qword_get(i8** %5, i8* %164, i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %208

170:                                              ; preds = %161
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.gss_api_mech*, %struct.gss_api_mech** %15, align 8
  %174 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 2
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i32 @gss_import_sec_context(i8* %171, i32 %172, %struct.gss_api_mech* %173, i32* %174, i32* null, i32 %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %208

180:                                              ; preds = %170
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @qword_get(i8** %5, i8* %181, i32 %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %180
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i32 @kstrdup(i8* %187, i32 %188)
  %190 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %186
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %14, align 4
  br label %208

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %180
  br label %201

201:                                              ; preds = %200, %65
  %202 = load i64, i64* %13, align 8
  %203 = getelementptr inbounds %struct.rsc, %struct.rsc* %11, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %206 = load %struct.rsc*, %struct.rsc** %12, align 8
  %207 = call %struct.rsc* @rsc_update(%struct.cache_detail* %205, %struct.rsc* %11, %struct.rsc* %206)
  store %struct.rsc* %207, %struct.rsc** %12, align 8
  store i32 0, i32* %14, align 4
  br label %208

208:                                              ; preds = %201, %196, %179, %169, %160, %150, %126, %118, %107, %95, %87, %78, %59, %52, %46, %37, %28
  %209 = call i32 @rsc_free(%struct.rsc* %11)
  %210 = load %struct.rsc*, %struct.rsc** %12, align 8
  %211 = icmp ne %struct.rsc* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load %struct.rsc*, %struct.rsc** %12, align 8
  %214 = getelementptr inbounds %struct.rsc, %struct.rsc* %213, i32 0, i32 0
  %215 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %216 = call i32 @cache_put(%struct.TYPE_7__* %214, %struct.cache_detail* %215)
  br label %220

217:                                              ; preds = %208
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* %14, align 4
  ret i32 %221
}

declare dso_local i32 @memset(%struct.rsc*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i64 @dup_to_netobj(i32*, i8*, i32) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local %struct.rsc* @rsc_lookup(%struct.cache_detail*, %struct.rsc*) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i8* @make_kgid(i32, i32) #1

declare dso_local %struct.TYPE_6__* @groups_alloc(i32) #1

declare dso_local i32 @gid_valid(i8*) #1

declare dso_local i32 @groups_sort(%struct.TYPE_6__*) #1

declare dso_local %struct.gss_api_mech* @gss_mech_get_by_name(i8*) #1

declare dso_local i32 @gss_import_sec_context(i8*, i32, %struct.gss_api_mech*, i32*, i32*, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local %struct.rsc* @rsc_update(%struct.cache_detail*, %struct.rsc*, %struct.rsc*) #1

declare dso_local i32 @rsc_free(%struct.rsc*) #1

declare dso_local i32 @cache_put(%struct.TYPE_7__*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
