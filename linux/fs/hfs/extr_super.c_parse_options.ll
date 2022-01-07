; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_sb_info = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"uid requires an argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid uid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"gid requires an argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"invalid gid %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"umask requires a value\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"file_umask requires a value\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"dir_umask requires a value\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"part requires an argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"session requires an argument\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"type requires a 4 character value\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"creator requires a 4 character value\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"unable to change codepage\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"unable to load codepage \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"unable to change iocharset\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"unable to load iocharset \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"unable to load default iocharset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hfs_sb_info*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.hfs_sb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfs_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hfs_sb_info* %1, %struct.hfs_sb_info** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call i32 (...) @current_uid()
  %17 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @current_gid()
  %20 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %21 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %22, i32 0, i32 0
  store i32 91, i32* %23, align 8
  %24 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %24, i32 0, i32 1
  store i32 18, i32* %25, align 4
  %26 = call i32 @cpu_to_be32(i32 1061109567)
  %27 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %29, i32 0, i32 8
  store i32 %26, i32* %30, align 4
  %31 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %32 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 4
  %35 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %35, i32 0, i32 4
  store i32 -1, i32* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %241, %48, %40
  %42 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %242

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %41

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @tokens, align 4
  %52 = call i32 @match_token(i8* %50, i32 %51, i32* %15)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %240 [
    i32 129, label %54
    i32 135, label %75
    i32 128, label %96
    i32 136, label %115
    i32 137, label %128
    i32 133, label %141
    i32 131, label %150
    i32 130, label %159
    i32 138, label %168
    i32 132, label %177
    i32 139, label %180
    i32 134, label %210
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds i32, i32* %15, i64 0
  %56 = call i32 @match_int(i32* %55, i32* %9)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

60:                                               ; preds = %54
  %61 = call i32 (...) @current_user_ns()
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @make_kuid(i32 %61, i32 %62)
  %64 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %65 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @uid_valid(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

74:                                               ; preds = %60
  br label %241

75:                                               ; preds = %49
  %76 = getelementptr inbounds i32, i32* %15, i64 0
  %77 = call i32 @match_int(i32* %76, i32* %9)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

81:                                               ; preds = %75
  %82 = call i32 (...) @current_user_ns()
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @make_kgid(i32 %82, i32 %83)
  %85 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %86 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %88 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @gid_valid(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

95:                                               ; preds = %81
  br label %241

96:                                               ; preds = %49
  %97 = getelementptr inbounds i32, i32* %15, i64 0
  %98 = call i32 @match_octal(i32* %97, i32* %9)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %108 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %114 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %241

115:                                              ; preds = %49
  %116 = getelementptr inbounds i32, i32* %15, i64 0
  %117 = call i32 @match_octal(i32* %116, i32* %9)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %127 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %241

128:                                              ; preds = %49
  %129 = getelementptr inbounds i32, i32* %15, i64 0
  %130 = call i32 @match_octal(i32* %129, i32* %9)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %140 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %241

141:                                              ; preds = %49
  %142 = getelementptr inbounds i32, i32* %15, i64 0
  %143 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %144 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %143, i32 0, i32 3
  %145 = call i32 @match_int(i32* %142, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

149:                                              ; preds = %141
  br label %241

150:                                              ; preds = %49
  %151 = getelementptr inbounds i32, i32* %15, i64 0
  %152 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %153 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %152, i32 0, i32 4
  %154 = call i32 @match_int(i32* %151, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

158:                                              ; preds = %150
  br label %241

159:                                              ; preds = %49
  %160 = getelementptr inbounds i32, i32* %15, i64 0
  %161 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %162 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %161, i32 0, i32 8
  %163 = call i32 @match_fourchar(i32* %160, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

167:                                              ; preds = %159
  br label %241

168:                                              ; preds = %49
  %169 = getelementptr inbounds i32, i32* %15, i64 0
  %170 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %171 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %170, i32 0, i32 7
  %172 = call i32 @match_fourchar(i32* %169, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

176:                                              ; preds = %168
  br label %241

177:                                              ; preds = %49
  %178 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %179 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %178, i32 0, i32 2
  store i32 1, i32* %179, align 8
  br label %241

180:                                              ; preds = %49
  %181 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %182 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %181, i32 0, i32 6
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

187:                                              ; preds = %180
  %188 = getelementptr inbounds i32, i32* %15, i64 0
  %189 = call i8* @match_strdup(i32* %188)
  store i8* %189, i8** %6, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i8*, i8** %6, align 8
  %194 = call i8* @load_nls(i8* %193)
  %195 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %196 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %199 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %198, i32 0, i32 6
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %203)
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 @kfree(i8* %205)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

207:                                              ; preds = %197
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @kfree(i8* %208)
  br label %241

210:                                              ; preds = %49
  %211 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %212 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

217:                                              ; preds = %210
  %218 = getelementptr inbounds i32, i32* %15, i64 0
  %219 = call i8* @match_strdup(i32* %218)
  store i8* %219, i8** %6, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load i8*, i8** %6, align 8
  %224 = call i8* @load_nls(i8* %223)
  %225 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %226 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %229 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %228, i32 0, i32 5
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %233)
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @kfree(i8* %235)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

237:                                              ; preds = %227
  %238 = load i8*, i8** %6, align 8
  %239 = call i32 @kfree(i8* %238)
  br label %241

240:                                              ; preds = %49
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

241:                                              ; preds = %237, %207, %177, %176, %167, %158, %149, %134, %121, %102, %95, %74
  br label %41

242:                                              ; preds = %41
  %243 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %244 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %243, i32 0, i32 6
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %263

247:                                              ; preds = %242
  %248 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %249 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %248, i32 0, i32 5
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %263, label %252

252:                                              ; preds = %247
  %253 = call i8* (...) @load_nls_default()
  %254 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %255 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %254, i32 0, i32 5
  store i8* %253, i8** %255, align 8
  %256 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %257 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %256, i32 0, i32 5
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %252
  %261 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %247, %242
  %264 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %265 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 511
  store i32 %267, i32* %265, align 4
  %268 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %269 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 383
  store i32 %271, i32* %269, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %272

272:                                              ; preds = %263, %260, %240, %232, %215, %202, %185, %174, %165, %156, %147, %132, %119, %100, %92, %79, %71, %58, %39
  %273 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %273)
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local i32 @match_fourchar(i32*, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i8* @load_nls(i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @load_nls_default(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
