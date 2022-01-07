; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660_options = type { i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ISOFS_INVALID_MODE = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.iso9660_options*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.iso9660_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iso9660_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.iso9660_options* %1, %struct.iso9660_options** %5, align 8
  %13 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %14 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %13, i32 0, i32 0
  store i8 110, i8* %14, align 8
  %15 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %16 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %18 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %17, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %20 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %22 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %21, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %24 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %23, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %26 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %25, i32 0, i32 6
  store i8 117, i8* %26, align 8
  %27 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %28 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %27, i32 0, i32 7
  store i32 0, i32* %28, align 4
  %29 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %30 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %29, i32 0, i32 8
  store i32 1024, i32* %30, align 8
  %31 = load i32, i32* @ISOFS_INVALID_MODE, align 4
  %32 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %33 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %35 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %34, i32 0, i32 9
  store i32 %31, i32* %35, align 4
  %36 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %37 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %36, i32 0, i32 11
  store i32 0, i32* %37, align 4
  %38 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %39 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %38, i32 0, i32 12
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %41 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %42 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %44 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %45 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %44, i32 0, i32 18
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %47 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %46, i32 0, i32 19
  store i32* null, i32** %47, align 8
  %48 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %49 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %48, i32 0, i32 13
  store i32 0, i32* %49, align 4
  %50 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %51 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %50, i32 0, i32 14
  store i32 0, i32* %51, align 8
  %52 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %53 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %52, i32 0, i32 15
  store i32 -1, i32* %53, align 4
  %54 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %55 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %54, i32 0, i32 16
  store i32 -1, i32* %55, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %226

59:                                               ; preds = %2
  br label %60

60:                                               ; preds = %224, %221, %59
  %61 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %225

63:                                               ; preds = %60
  %64 = load i32, i32* @MAX_OPT_ARGS, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %9, align 8
  %67 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store i32 2, i32* %12, align 4
  br label %221

72:                                               ; preds = %63
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @tokens, align 4
  %75 = call i32 @match_token(i8* %73, i32 %74, i32* %67)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %219 [
    i32 135, label %77
    i32 136, label %80
    i32 144, label %83
    i32 129, label %86
    i32 131, label %86
    i32 147, label %89
    i32 128, label %92
    i32 141, label %95
    i32 139, label %98
    i32 140, label %101
    i32 132, label %104
    i32 133, label %119
    i32 149, label %128
    i32 148, label %131
    i32 143, label %134
    i32 130, label %135
    i32 145, label %155
    i32 138, label %175
    i32 146, label %184
    i32 134, label %193
    i32 150, label %196
    i32 137, label %216
  ]

77:                                               ; preds = %72
  %78 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %79 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %220

80:                                               ; preds = %72
  %81 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %82 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %220

83:                                               ; preds = %72
  %84 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %85 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  br label %220

86:                                               ; preds = %72, %72
  %87 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %88 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %87, i32 0, i32 5
  store i32 1, i32* %88, align 4
  br label %220

89:                                               ; preds = %72
  %90 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %91 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  br label %220

92:                                               ; preds = %72
  %93 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %94 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %93, i32 0, i32 13
  store i32 1, i32* %94, align 4
  br label %220

95:                                               ; preds = %72
  %96 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %97 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %96, i32 0, i32 0
  store i8 97, i8* %97, align 8
  br label %220

98:                                               ; preds = %72
  %99 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %100 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %99, i32 0, i32 0
  store i8 111, i8* %100, align 8
  br label %220

101:                                              ; preds = %72
  %102 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %103 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %102, i32 0, i32 0
  store i8 110, i8* %103, align 8
  br label %220

104:                                              ; preds = %72
  %105 = getelementptr inbounds i32, i32* %67, i64 0
  %106 = call i32 @match_int(i32* %105, i32* %7)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp uge i32 %111, 99
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, 1
  %117 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %118 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %117, i32 0, i32 15
  store i32 %116, i32* %118, align 4
  br label %220

119:                                              ; preds = %72
  %120 = getelementptr inbounds i32, i32* %67, i64 0
  %121 = call i32 @match_int(i32* %120, i32* %7)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %127 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %126, i32 0, i32 16
  store i32 %125, i32* %127, align 8
  br label %220

128:                                              ; preds = %72
  %129 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %130 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %129, i32 0, i32 6
  store i8 114, i8* %130, align 8
  br label %220

131:                                              ; preds = %72
  %132 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %133 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %132, i32 0, i32 6
  store i8 115, i8* %133, align 8
  br label %220

134:                                              ; preds = %72
  br label %220

135:                                              ; preds = %72
  %136 = getelementptr inbounds i32, i32* %67, i64 0
  %137 = call i32 @match_int(i32* %136, i32* %7)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

140:                                              ; preds = %135
  %141 = call i32 (...) @current_user_ns()
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @make_kuid(i32 %141, i32 %142)
  %144 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %145 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %144, i32 0, i32 18
  store i32 %143, i32* %145, align 8
  %146 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %147 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %146, i32 0, i32 18
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @uid_valid(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

152:                                              ; preds = %140
  %153 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %154 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %153, i32 0, i32 11
  store i32 1, i32* %154, align 4
  br label %220

155:                                              ; preds = %72
  %156 = getelementptr inbounds i32, i32* %67, i64 0
  %157 = call i32 @match_int(i32* %156, i32* %7)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

160:                                              ; preds = %155
  %161 = call i32 (...) @current_user_ns()
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @make_kgid(i32 %161, i32 %162)
  %164 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %165 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %164, i32 0, i32 17
  store i32 %163, i32* %165, align 4
  %166 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %167 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %166, i32 0, i32 17
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @gid_valid(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

172:                                              ; preds = %160
  %173 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %174 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %173, i32 0, i32 12
  store i32 1, i32* %174, align 8
  br label %220

175:                                              ; preds = %72
  %176 = getelementptr inbounds i32, i32* %67, i64 0
  %177 = call i32 @match_int(i32* %176, i32* %7)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %183 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 4
  br label %220

184:                                              ; preds = %72
  %185 = getelementptr inbounds i32, i32* %67, i64 0
  %186 = call i32 @match_int(i32* %185, i32* %7)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

189:                                              ; preds = %184
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %192 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 8
  br label %220

193:                                              ; preds = %72
  %194 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %195 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %194, i32 0, i32 14
  store i32 1, i32* %195, align 8
  br label %220

196:                                              ; preds = %72
  %197 = getelementptr inbounds i32, i32* %67, i64 0
  %198 = call i32 @match_int(i32* %197, i32* %7)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

201:                                              ; preds = %196
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 512
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 1024
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 2048
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

212:                                              ; preds = %208, %205, %201
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %215 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  br label %220

216:                                              ; preds = %72
  %217 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %218 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %217, i32 0, i32 7
  store i32 1, i32* %218, align 4
  br label %220

219:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %221

220:                                              ; preds = %216, %212, %193, %189, %180, %172, %152, %134, %131, %128, %124, %114, %101, %98, %95, %92, %89, %86, %83, %80, %77
  store i32 0, i32* %12, align 4
  br label %221

221:                                              ; preds = %220, %219, %211, %200, %188, %179, %171, %159, %151, %139, %123, %113, %108, %71
  %222 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %12, align 4
  switch i32 %223, label %228 [
    i32 0, label %224
    i32 2, label %60
    i32 1, label %226
  ]

224:                                              ; preds = %221
  br label %60

225:                                              ; preds = %60
  store i32 1, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %221, %58
  %227 = load i32, i32* %3, align 4
  ret i32 %227

228:                                              ; preds = %221
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
