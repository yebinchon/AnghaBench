; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, %struct.ebitmap*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__*, %struct.ebitmap, %struct.ebitmap, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ebitmap = type { i32 }
%struct.policydb_compat_info = type { i64, i64 }
%struct.policy_data = type { %struct.policydb*, i8* }

@POLICYDB_VERSION_AVTAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"SELinux: refusing to write policy version %d.  Because it is less than version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@POLICYDB_CONFIG_MLS = common dso_local global i64 0, align 8
@REJECT_UNKNOWN = common dso_local global i64 0, align 8
@ALLOW_UNKNOWN = common dso_local global i64 0, align 8
@POLICYDB_MAGIC = common dso_local global i64 0, align 8
@POLICYDB_STRING = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"SELinux: compatibility lookup failed for policy version %d\00", align 1
@POLICYDB_VERSION_POLCAP = common dso_local global i64 0, align 8
@POLICYDB_VERSION_PERMISSIVE = common dso_local global i64 0, align 8
@write_f = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policydb_write(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.policydb_compat_info*, align 8
  %13 = alloca %struct.policy_data, align 8
  %14 = alloca %struct.ebitmap*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.policydb*, %struct.policydb** %4, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @POLICYDB_VERSION_AVTAB, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.policydb*, %struct.policydb** %4, align 8
  %22 = getelementptr inbounds %struct.policydb, %struct.policydb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @POLICYDB_VERSION_AVTAB, align 8
  %25 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %318

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  %29 = load %struct.policydb*, %struct.policydb** %4, align 8
  %30 = getelementptr inbounds %struct.policydb, %struct.policydb* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @POLICYDB_CONFIG_MLS, align 8
  %35 = load i64, i64* %10, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.policydb*, %struct.policydb** %4, align 8
  %39 = getelementptr inbounds %struct.policydb, %struct.policydb* %38, i32 0, i32 10
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @REJECT_UNKNOWN, align 8
  %44 = load i64, i64* %10, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.policydb*, %struct.policydb** %4, align 8
  %48 = getelementptr inbounds %struct.policydb, %struct.policydb* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @ALLOW_UNKNOWN, align 8
  %53 = load i64, i64* %10, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i64, i64* @POLICYDB_MAGIC, align 8
  %57 = call i32 @cpu_to_le32(i64 %56)
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = load i32*, i32** @POLICYDB_STRING, align 8
  %60 = call i64 @strlen(i32* %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @cpu_to_le32(i64 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @put_entry(i32* %64, i32 8, i32 2, i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %318

71:                                               ; preds = %55
  %72 = load i32*, i32** @POLICYDB_STRING, align 8
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @put_entry(i32* %72, i32 1, i32 %74, i8* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %318

81:                                               ; preds = %71
  %82 = load %struct.policydb*, %struct.policydb** %4, align 8
  %83 = getelementptr inbounds %struct.policydb, %struct.policydb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call %struct.policydb_compat_info* @policydb_lookup_compat(i64 %84)
  store %struct.policydb_compat_info* %85, %struct.policydb_compat_info** %12, align 8
  %86 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %12, align 8
  %87 = icmp ne %struct.policydb_compat_info* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.policydb*, %struct.policydb** %4, align 8
  %90 = getelementptr inbounds %struct.policydb, %struct.policydb* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %318

95:                                               ; preds = %81
  %96 = load %struct.policydb*, %struct.policydb** %4, align 8
  %97 = getelementptr inbounds %struct.policydb, %struct.policydb* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @cpu_to_le32(i64 %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %99, i32* %100, align 16
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @cpu_to_le32(i64 %101)
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %12, align 8
  %105 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @cpu_to_le32(i64 %106)
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %107, i32* %108, align 8
  %109 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %12, align 8
  %110 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @cpu_to_le32(i64 %111)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @put_entry(i32* %114, i32 8, i32 4, i8* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %95
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %318

121:                                              ; preds = %95
  %122 = load %struct.policydb*, %struct.policydb** %4, align 8
  %123 = getelementptr inbounds %struct.policydb, %struct.policydb* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @POLICYDB_VERSION_POLCAP, align 8
  %126 = icmp uge i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.policydb*, %struct.policydb** %4, align 8
  %129 = getelementptr inbounds %struct.policydb, %struct.policydb* %128, i32 0, i32 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @ebitmap_write(%struct.ebitmap* %129, i8* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %318

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.policydb*, %struct.policydb** %4, align 8
  %139 = getelementptr inbounds %struct.policydb, %struct.policydb* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @POLICYDB_VERSION_PERMISSIVE, align 8
  %142 = icmp uge i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.policydb*, %struct.policydb** %4, align 8
  %145 = getelementptr inbounds %struct.policydb, %struct.policydb* %144, i32 0, i32 7
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @ebitmap_write(%struct.ebitmap* %145, i8* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %318

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %137
  %154 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %12, align 8
  %155 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %216, %153
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %219

162:                                              ; preds = %158
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %13, i32 0, i32 1
  store i8* %163, i8** %164, align 8
  %165 = load %struct.policydb*, %struct.policydb** %4, align 8
  %166 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %13, i32 0, i32 0
  store %struct.policydb* %165, %struct.policydb** %166, align 8
  %167 = load %struct.policydb*, %struct.policydb** %4, align 8
  %168 = getelementptr inbounds %struct.policydb, %struct.policydb* %167, i32 0, i32 6
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @cpu_to_le32(i64 %174)
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %175, i32* %176, align 16
  %177 = load %struct.policydb*, %struct.policydb** %4, align 8
  %178 = getelementptr inbounds %struct.policydb, %struct.policydb* %177, i32 0, i32 6
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @cpu_to_le32(i64 %186)
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %187, i32* %188, align 4
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @put_entry(i32* %189, i32 8, i32 2, i8* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %162
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %3, align 4
  br label %318

196:                                              ; preds = %162
  %197 = load %struct.policydb*, %struct.policydb** %4, align 8
  %198 = getelementptr inbounds %struct.policydb, %struct.policydb* %197, i32 0, i32 6
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32*, i32** @write_f, align 8
  %206 = load i32, i32* %6, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @hashtab_map(%struct.TYPE_6__* %204, i32 %209, %struct.policy_data* %13)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %196
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %3, align 4
  br label %318

215:                                              ; preds = %196
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %6, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %158

219:                                              ; preds = %158
  %220 = load %struct.policydb*, %struct.policydb** %4, align 8
  %221 = load %struct.policydb*, %struct.policydb** %4, align 8
  %222 = getelementptr inbounds %struct.policydb, %struct.policydb* %221, i32 0, i32 5
  %223 = load i8*, i8** %5, align 8
  %224 = call i32 @avtab_write(%struct.policydb* %220, i32* %222, i8* %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %3, align 4
  br label %318

229:                                              ; preds = %219
  %230 = load %struct.policydb*, %struct.policydb** %4, align 8
  %231 = load %struct.policydb*, %struct.policydb** %4, align 8
  %232 = getelementptr inbounds %struct.policydb, %struct.policydb* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i8*, i8** %5, align 8
  %235 = call i32 @cond_write_list(%struct.policydb* %230, i32 %233, i8* %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %3, align 4
  br label %318

240:                                              ; preds = %229
  %241 = load %struct.policydb*, %struct.policydb** %4, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = call i32 @role_trans_write(%struct.policydb* %241, i8* %242)
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %3, align 4
  br label %318

248:                                              ; preds = %240
  %249 = load %struct.policydb*, %struct.policydb** %4, align 8
  %250 = getelementptr inbounds %struct.policydb, %struct.policydb* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i8*, i8** %5, align 8
  %253 = call i32 @role_allow_write(i32 %251, i8* %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %248
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %3, align 4
  br label %318

258:                                              ; preds = %248
  %259 = load %struct.policydb*, %struct.policydb** %4, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = call i32 @filename_trans_write(%struct.policydb* %259, i8* %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %3, align 4
  br label %318

266:                                              ; preds = %258
  %267 = load %struct.policydb*, %struct.policydb** %4, align 8
  %268 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %12, align 8
  %269 = load i8*, i8** %5, align 8
  %270 = call i32 @ocontext_write(%struct.policydb* %267, %struct.policydb_compat_info* %268, i8* %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %3, align 4
  br label %318

275:                                              ; preds = %266
  %276 = load %struct.policydb*, %struct.policydb** %4, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = call i32 @genfs_write(%struct.policydb* %276, i8* %277)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = load i32, i32* %8, align 4
  store i32 %282, i32* %3, align 4
  br label %318

283:                                              ; preds = %275
  %284 = load %struct.policydb*, %struct.policydb** %4, align 8
  %285 = load i8*, i8** %5, align 8
  %286 = call i32 @range_write(%struct.policydb* %284, i8* %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %283
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %3, align 4
  br label %318

291:                                              ; preds = %283
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %314, %291
  %293 = load i32, i32* %6, align 4
  %294 = load %struct.policydb*, %struct.policydb** %4, align 8
  %295 = getelementptr inbounds %struct.policydb, %struct.policydb* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ult i32 %293, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %292
  %300 = load %struct.policydb*, %struct.policydb** %4, align 8
  %301 = getelementptr inbounds %struct.policydb, %struct.policydb* %300, i32 0, i32 1
  %302 = load %struct.ebitmap*, %struct.ebitmap** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %302, i64 %304
  store %struct.ebitmap* %305, %struct.ebitmap** %14, align 8
  %306 = load %struct.ebitmap*, %struct.ebitmap** %14, align 8
  %307 = load i8*, i8** %5, align 8
  %308 = call i32 @ebitmap_write(%struct.ebitmap* %306, i8* %307)
  store i32 %308, i32* %8, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %299
  %312 = load i32, i32* %8, align 4
  store i32 %312, i32* %3, align 4
  br label %318

313:                                              ; preds = %299
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %6, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %6, align 4
  br label %292

317:                                              ; preds = %292
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %317, %311, %289, %281, %273, %264, %256, %246, %238, %227, %213, %194, %150, %134, %119, %88, %79, %69, %20
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local %struct.policydb_compat_info* @policydb_lookup_compat(i64) #1

declare dso_local i32 @ebitmap_write(%struct.ebitmap*, i8*) #1

declare dso_local i32 @hashtab_map(%struct.TYPE_6__*, i32, %struct.policy_data*) #1

declare dso_local i32 @avtab_write(%struct.policydb*, i32*, i8*) #1

declare dso_local i32 @cond_write_list(%struct.policydb*, i32, i8*) #1

declare dso_local i32 @role_trans_write(%struct.policydb*, i8*) #1

declare dso_local i32 @role_allow_write(i32, i8*) #1

declare dso_local i32 @filename_trans_write(%struct.policydb*, i8*) #1

declare dso_local i32 @ocontext_write(%struct.policydb*, %struct.policydb_compat_info*, i8*) #1

declare dso_local i32 @genfs_write(%struct.policydb*, i8*) #1

declare dso_local i32 @range_write(%struct.policydb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
