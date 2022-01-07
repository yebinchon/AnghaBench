; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_options = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_MAX_MON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"parse_options %p options '%s' dev_name '%s'\0A\00", align 1
@CEPH_OPT_DEFAULT = common dso_local global i32 0, align 4
@CEPH_OSD_KEEPALIVE_DEFAULT = common dso_local global i8* null, align 8
@CEPH_MOUNT_TIMEOUT_DEFAULT = common dso_local global i8* null, align 8
@CEPH_OSD_IDLE_TTL_DEFAULT = common dso_local global i8* null, align 8
@CEPH_OSD_REQUEST_TIMEOUT_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@opt_tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bad option at '%s'\0A\00", align 1
@Opt_last_int = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"bad option arg (not int) at '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"got int token %d val %d\0A\00", align 1
@Opt_last_string = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"got string token %d val %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"got token %d\0A\00", align 1
@CEPH_OPT_MYIP = common dso_local global i32 0, align 4
@CEPH_OPT_FSID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"ignoring deprecated osdtimeout option\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"osdkeepalive out of range\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"osd_idle_ttl out of range\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"mount_timeout out of range\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"osd_request_timeout out of range\0A\00", align 1
@CEPH_OPT_NOSHARE = common dso_local global i32 0, align 4
@CEPH_OPT_NOCRC = common dso_local global i32 0, align 4
@CEPH_OPT_NOMSGAUTH = common dso_local global i32 0, align 4
@CEPH_OPT_NOMSGSIGN = common dso_local global i32 0, align 4
@CEPH_OPT_TCP_NODELAY = common dso_local global i32 0, align 4
@CEPH_OPT_ABORT_ON_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_options* @ceph_parse_options(i8* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ceph_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ceph_options*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @MAX_OPT_ARGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca %struct.TYPE_4__, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 80, i32 %26)
  %28 = bitcast i8* %27 to %struct.ceph_options*
  store %struct.ceph_options* %28, %struct.ceph_options** %12, align 8
  %29 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %30 = icmp ne %struct.ceph_options* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ceph_options* @ERR_PTR(i32 %33)
  store %struct.ceph_options* %34, %struct.ceph_options** %6, align 8
  store i32 1, i32* %17, align 4
  br label %430

35:                                               ; preds = %5
  %36 = load i32, i32* @CEPH_MAX_MON, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %40 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %39, i32 0, i32 10
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %42 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %425

46:                                               ; preds = %35
  %47 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.ceph_options* %47, i8* %48, i8* %49)
  %51 = load i32, i32* @CEPH_OPT_DEFAULT, align 4
  %52 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %53 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @CEPH_OSD_KEEPALIVE_DEFAULT, align 8
  %55 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %56 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @CEPH_MOUNT_TIMEOUT_DEFAULT, align 8
  %58 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %59 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @CEPH_OSD_IDLE_TTL_DEFAULT, align 8
  %61 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %62 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @CEPH_OSD_REQUEST_TIMEOUT_DEFAULT, align 8
  %64 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %65 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %69 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %68, i32 0, i32 10
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @CEPH_MAX_MON, align 4
  %72 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %73 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %72, i32 0, i32 9
  %74 = call i32 @ceph_parse_ips(i8* %66, i8* %67, i32* %70, i32 %71, i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %46
  br label %425

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %422, %108, %86, %78
  %80 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %80, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %423

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %79

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* @opt_tokens, align 4
  %92 = call i32 @match_token(i8* %90, i32 %91, %struct.TYPE_4__* %25)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %87
  %96 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %97 = icmp ne i32 (i8*, i8*)* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 %99(i8* %100, i8* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  br label %425

108:                                              ; preds = %98
  br label %79

109:                                              ; preds = %95, %87
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @Opt_last_int, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %115 = call i32 @match_int(%struct.TYPE_4__* %114, i32* %19)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  br label %425

121:                                              ; preds = %113
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  br label %143

125:                                              ; preds = %109
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @Opt_last_int, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @Opt_last_string, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %18, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 16
  %138 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %134, i8* %137)
  br label %142

139:                                              ; preds = %129, %125
  %140 = load i32, i32* %18, align 4
  %141 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %133
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32, i32* %18, align 4
  switch i32 %144, label %419 [
    i32 143, label %145
    i32 144, label %164
    i32 140, label %180
    i32 130, label %210
    i32 142, label %242
    i32 131, label %274
    i32 132, label %276
    i32 134, label %294
    i32 141, label %312
    i32 133, label %330
    i32 129, label %348
    i32 136, label %355
    i32 145, label %361
    i32 137, label %368
    i32 147, label %374
    i32 139, label %381
    i32 146, label %387
    i32 138, label %394
    i32 128, label %400
    i32 135, label %406
    i32 148, label %413
  ]

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 16
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %153 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %152, i32 0, i32 8
  %154 = call i32 @ceph_parse_ips(i8* %148, i8* %151, i32* %153, i32 1, i32* null)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  br label %425

158:                                              ; preds = %145
  %159 = load i32, i32* @CEPH_OPT_MYIP, align 4
  %160 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %161 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %422

164:                                              ; preds = %143
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 16
  %168 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %169 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %168, i32 0, i32 7
  %170 = call i32 @parse_fsid(i8* %167, i32* %169)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  %174 = load i32, i32* @CEPH_OPT_FSID, align 4
  %175 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %176 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %164
  br label %422

180:                                              ; preds = %143
  %181 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %182 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %181, i32 0, i32 6
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @kfree(i8* %183)
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 16
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 16
  %194 = ptrtoint i8* %190 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = inttoptr i64 %196 to i8*
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i8* @kstrndup(i8* %187, i8* %197, i32 %198)
  %200 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %201 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  %202 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %203 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %202, i32 0, i32 6
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %180
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %14, align 4
  br label %425

209:                                              ; preds = %180
  br label %422

210:                                              ; preds = %143
  %211 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %212 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @ceph_crypto_key_destroy(i8* %213)
  %215 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %216 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @kfree(i8* %217)
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call i8* @kzalloc(i32 1, i32 %219)
  %221 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %222 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %221, i32 0, i32 5
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %224 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %223, i32 0, i32 5
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %210
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %14, align 4
  br label %425

230:                                              ; preds = %210
  %231 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %232 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %231, i32 0, i32 5
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 16
  %237 = call i32 @ceph_crypto_key_unarmor(i8* %233, i8* %236)
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %230
  br label %425

241:                                              ; preds = %230
  br label %422

242:                                              ; preds = %143
  %243 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %244 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %243, i32 0, i32 5
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @ceph_crypto_key_destroy(i8* %245)
  %247 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %248 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %247, i32 0, i32 5
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @kfree(i8* %249)
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call i8* @kzalloc(i32 1, i32 %251)
  %253 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %254 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  %255 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %256 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %255, i32 0, i32 5
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %242
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %14, align 4
  br label %425

262:                                              ; preds = %242
  %263 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %264 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %263, i32 0, i32 5
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 16
  %269 = call i32 @get_secret(i8* %265, i8* %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %262
  br label %425

273:                                              ; preds = %262
  br label %422

274:                                              ; preds = %143
  %275 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %422

276:                                              ; preds = %143
  %277 = load i32, i32* %19, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* @INT_MAX, align 4
  %282 = sdiv i32 %281, 1000
  %283 = icmp sgt i32 %280, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %279, %276
  %285 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %14, align 4
  br label %425

288:                                              ; preds = %279
  %289 = load i32, i32* %19, align 4
  %290 = mul nsw i32 %289, 1000
  %291 = call i8* @msecs_to_jiffies(i32 %290)
  %292 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %293 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %292, i32 0, i32 4
  store i8* %291, i8** %293, align 8
  br label %422

294:                                              ; preds = %143
  %295 = load i32, i32* %19, align 4
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %302, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* @INT_MAX, align 4
  %300 = sdiv i32 %299, 1000
  %301 = icmp sgt i32 %298, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %297, %294
  %303 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %14, align 4
  br label %425

306:                                              ; preds = %297
  %307 = load i32, i32* %19, align 4
  %308 = mul nsw i32 %307, 1000
  %309 = call i8* @msecs_to_jiffies(i32 %308)
  %310 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %311 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %310, i32 0, i32 3
  store i8* %309, i8** %311, align 8
  br label %422

312:                                              ; preds = %143
  %313 = load i32, i32* %19, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %312
  %316 = load i32, i32* %19, align 4
  %317 = load i32, i32* @INT_MAX, align 4
  %318 = sdiv i32 %317, 1000
  %319 = icmp sgt i32 %316, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %315, %312
  %321 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %14, align 4
  br label %425

324:                                              ; preds = %315
  %325 = load i32, i32* %19, align 4
  %326 = mul nsw i32 %325, 1000
  %327 = call i8* @msecs_to_jiffies(i32 %326)
  %328 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %329 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %328, i32 0, i32 2
  store i8* %327, i8** %329, align 8
  br label %422

330:                                              ; preds = %143
  %331 = load i32, i32* %19, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %19, align 4
  %335 = load i32, i32* @INT_MAX, align 4
  %336 = sdiv i32 %335, 1000
  %337 = icmp sgt i32 %334, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %333, %330
  %339 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %14, align 4
  br label %425

342:                                              ; preds = %333
  %343 = load i32, i32* %19, align 4
  %344 = mul nsw i32 %343, 1000
  %345 = call i8* @msecs_to_jiffies(i32 %344)
  %346 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %347 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %346, i32 0, i32 1
  store i8* %345, i8** %347, align 8
  br label %422

348:                                              ; preds = %143
  %349 = load i32, i32* @CEPH_OPT_NOSHARE, align 4
  %350 = xor i32 %349, -1
  %351 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %352 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = and i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %422

355:                                              ; preds = %143
  %356 = load i32, i32* @CEPH_OPT_NOSHARE, align 4
  %357 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %358 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  br label %422

361:                                              ; preds = %143
  %362 = load i32, i32* @CEPH_OPT_NOCRC, align 4
  %363 = xor i32 %362, -1
  %364 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %365 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %422

368:                                              ; preds = %143
  %369 = load i32, i32* @CEPH_OPT_NOCRC, align 4
  %370 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %371 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 8
  br label %422

374:                                              ; preds = %143
  %375 = load i32, i32* @CEPH_OPT_NOMSGAUTH, align 4
  %376 = xor i32 %375, -1
  %377 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %378 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %422

381:                                              ; preds = %143
  %382 = load i32, i32* @CEPH_OPT_NOMSGAUTH, align 4
  %383 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %384 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %422

387:                                              ; preds = %143
  %388 = load i32, i32* @CEPH_OPT_NOMSGSIGN, align 4
  %389 = xor i32 %388, -1
  %390 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %391 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = and i32 %392, %389
  store i32 %393, i32* %391, align 8
  br label %422

394:                                              ; preds = %143
  %395 = load i32, i32* @CEPH_OPT_NOMSGSIGN, align 4
  %396 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %397 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 8
  br label %422

400:                                              ; preds = %143
  %401 = load i32, i32* @CEPH_OPT_TCP_NODELAY, align 4
  %402 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %403 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 8
  br label %422

406:                                              ; preds = %143
  %407 = load i32, i32* @CEPH_OPT_TCP_NODELAY, align 4
  %408 = xor i32 %407, -1
  %409 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %410 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = and i32 %411, %408
  store i32 %412, i32* %410, align 8
  br label %422

413:                                              ; preds = %143
  %414 = load i32, i32* @CEPH_OPT_ABORT_ON_FULL, align 4
  %415 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %416 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 8
  br label %422

419:                                              ; preds = %143
  %420 = load i32, i32* %18, align 4
  %421 = call i32 @BUG_ON(i32 %420)
  br label %422

422:                                              ; preds = %419, %413, %406, %400, %394, %387, %381, %374, %368, %361, %355, %348, %342, %324, %306, %288, %274, %273, %241, %209, %179, %158
  br label %79

423:                                              ; preds = %79
  %424 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  store %struct.ceph_options* %424, %struct.ceph_options** %6, align 8
  store i32 1, i32* %17, align 4
  br label %430

425:                                              ; preds = %338, %320, %302, %284, %272, %259, %240, %227, %206, %157, %118, %105, %77, %45
  %426 = load %struct.ceph_options*, %struct.ceph_options** %12, align 8
  %427 = call i32 @ceph_destroy_options(%struct.ceph_options* %426)
  %428 = load i32, i32* %14, align 4
  %429 = call %struct.ceph_options* @ERR_PTR(i32 %428)
  store %struct.ceph_options* %429, %struct.ceph_options** %6, align 8
  store i32 1, i32* %17, align 4
  br label %430

430:                                              ; preds = %425, %423, %31
  %431 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %431)
  %432 = load %struct.ceph_options*, %struct.ceph_options** %6, align 8
  ret %struct.ceph_options* %432
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local %struct.ceph_options* @ERR_PTR(i32) #2

declare dso_local i32* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @dout(i8*, ...) #2

declare dso_local i32 @ceph_parse_ips(i8*, i8*, i32*, i32, i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @match_int(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @parse_fsid(i8*, i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @kstrndup(i8*, i8*, i32) #2

declare dso_local i32 @ceph_crypto_key_destroy(i8*) #2

declare dso_local i32 @ceph_crypto_key_unarmor(i8*, i8*) #2

declare dso_local i32 @get_secret(i8*, i8*) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i8* @msecs_to_jiffies(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ceph_destroy_options(%struct.ceph_options*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
