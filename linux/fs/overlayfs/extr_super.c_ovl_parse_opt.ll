; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_parse_opt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_config = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@ovl_tokens = common dso_local global i32 0, align 4
@OVL_XINO_ON = common dso_local global i32 0, align 4
@OVL_XINO_OFF = common dso_local global i32 0, align 4
@OVL_XINO_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"overlayfs: unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"overlayfs: option \22workdir=%s\22 is useless in a non-upper mount, ignore\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"overlayfs: conflicting options: metacopy=on,redirect_dir=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"overlayfs: disabling metacopy due to redirect_dir=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ovl_config*)* @ovl_parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_parse_opt(i8* %0, %struct.ovl_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ovl_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ovl_config* %1, %struct.ovl_config** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 (...) @ovl_redirect_mode_def()
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kstrdup(i32 %14, i32 %15)
  %17 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %18 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %20 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %239

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %154, %151, %26
  %28 = call i8* @ovl_next_opt(i8** %4)
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %155

30:                                               ; preds = %27
  %31 = load i32, i32* @MAX_OPT_ARGS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %11, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 2, i32* %13, align 4
  br label %151

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @ovl_tokens, align 4
  %42 = call i32 @match_token(i8* %40, i32 %41, i32* %34)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %145 [
    i32 132, label %44
    i32 138, label %61
    i32 131, label %78
    i32 141, label %95
    i32 133, label %98
    i32 139, label %115
    i32 140, label %118
    i32 134, label %121
    i32 135, label %124
    i32 128, label %127
    i32 129, label %131
    i32 130, label %135
    i32 136, label %139
    i32 137, label %142
  ]

44:                                               ; preds = %39
  %45 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %46 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = getelementptr inbounds i32, i32* %34, i64 0
  %50 = call i8* @match_strdup(i32* %49)
  %51 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %52 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %54 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

60:                                               ; preds = %44
  br label %150

61:                                               ; preds = %39
  %62 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %63 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = getelementptr inbounds i32, i32* %34, i64 0
  %67 = call i8* @match_strdup(i32* %66)
  %68 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %69 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %71 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

77:                                               ; preds = %61
  br label %150

78:                                               ; preds = %39
  %79 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %80 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = getelementptr inbounds i32, i32* %34, i64 0
  %84 = call i8* @match_strdup(i32* %83)
  %85 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %86 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %88 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

94:                                               ; preds = %78
  br label %150

95:                                               ; preds = %39
  %96 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %97 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %96, i32 0, i32 4
  store i32 1, i32* %97, align 8
  br label %150

98:                                               ; preds = %39
  %99 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %100 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @kfree(i8* %101)
  %103 = getelementptr inbounds i32, i32* %34, i64 0
  %104 = call i8* @match_strdup(i32* %103)
  %105 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %106 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %108 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

114:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  br label %150

115:                                              ; preds = %39
  %116 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %117 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %116, i32 0, i32 5
  store i32 1, i32* %117, align 4
  br label %150

118:                                              ; preds = %39
  %119 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %120 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %119, i32 0, i32 5
  store i32 0, i32* %120, align 4
  br label %150

121:                                              ; preds = %39
  %122 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %123 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %122, i32 0, i32 6
  store i32 1, i32* %123, align 8
  br label %150

124:                                              ; preds = %39
  %125 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %126 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %125, i32 0, i32 6
  store i32 0, i32* %126, align 8
  br label %150

127:                                              ; preds = %39
  %128 = load i32, i32* @OVL_XINO_ON, align 4
  %129 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %130 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 8
  br label %150

131:                                              ; preds = %39
  %132 = load i32, i32* @OVL_XINO_OFF, align 4
  %133 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %134 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 8
  br label %150

135:                                              ; preds = %39
  %136 = load i32, i32* @OVL_XINO_AUTO, align 4
  %137 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %138 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  br label %150

139:                                              ; preds = %39
  %140 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %141 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %140, i32 0, i32 7
  store i32 1, i32* %141, align 4
  store i32 1, i32* %8, align 4
  br label %150

142:                                              ; preds = %39
  %143 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %144 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %143, i32 0, i32 7
  store i32 0, i32* %144, align 4
  br label %150

145:                                              ; preds = %39
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

150:                                              ; preds = %142, %139, %135, %131, %127, %124, %121, %118, %115, %114, %95, %94, %77, %60
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %145, %111, %91, %74, %57, %38
  %152 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %13, align 4
  switch i32 %153, label %241 [
    i32 0, label %154
    i32 2, label %27
    i32 1, label %239
  ]

154:                                              ; preds = %151
  br label %27

155:                                              ; preds = %27
  %156 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %157 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %176, label %160

160:                                              ; preds = %155
  %161 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %162 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %167 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %168)
  %170 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %171 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @kfree(i8* %172)
  %174 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %175 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %174, i32 0, i32 3
  store i8* null, i8** %175, align 8
  br label %176

176:                                              ; preds = %165, %160, %155
  %177 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %178 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %179 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @ovl_parse_redirect_mode(%struct.ovl_config* %177, i8* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %3, align 4
  br label %239

186:                                              ; preds = %176
  %187 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %188 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %199, label %191

191:                                              ; preds = %186
  %192 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %193 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %198 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %197, i32 0, i32 9
  store i32 1, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %191, %186
  %200 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %201 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %238

204:                                              ; preds = %199
  %205 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %206 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %238, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %217 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %239

222:                                              ; preds = %212, %209
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %227 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %228)
  %230 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %231 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %230, i32 0, i32 7
  store i32 0, i32* %231, align 4
  br label %237

232:                                              ; preds = %222
  %233 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %234 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %233, i32 0, i32 9
  store i32 1, i32* %234, align 4
  %235 = load %struct.ovl_config*, %struct.ovl_config** %5, align 8
  %236 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %235, i32 0, i32 8
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %232, %225
  br label %238

238:                                              ; preds = %237, %204, %199
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %215, %184, %151, %23
  %240 = load i32, i32* %3, align 4
  ret i32 %240

241:                                              ; preds = %151
  unreachable
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @ovl_redirect_mode_def(...) #1

declare dso_local i8* @ovl_next_opt(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @match_strdup(i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @ovl_parse_redirect_mode(%struct.ovl_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
