; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_options.c_hfsplus_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_options.c_hfsplus_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_sb_info = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"creator requires a 4 character value\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"type requires a 4 character value\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"umask requires a value\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"uid requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid uid specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"gid requires an argument\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid gid specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"part requires an argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"session requires an argument\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"unable to change nls mapping\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to load nls mapping \22%s\22\0A\00", align 1
@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@HFSPLUS_SB_NOBARRIER = common dso_local global i32 0, align 4
@HFSPLUS_SB_FORCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_parse_options(i8* %0, %struct.hfsplus_sb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfsplus_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hfsplus_sb_info* %1, %struct.hfsplus_sb_info** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %177

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %175, %27, %19
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %176

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %20

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @tokens, align 4
  %31 = call i32 @match_token(i8* %29, i32 %30, i32* %15)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %174 [
    i32 139, label %33
    i32 130, label %42
    i32 128, label %51
    i32 129, label %61
    i32 136, label %81
    i32 132, label %101
    i32 131, label %110
    i32 135, label %119
    i32 138, label %149
    i32 133, label %154
    i32 140, label %159
    i32 134, label %164
    i32 137, label %169
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds i32, i32* %15, i64 0
  %35 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %35, i32 0, i32 8
  %37 = call i32 @match_fourchar(i32* %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

41:                                               ; preds = %33
  br label %175

42:                                               ; preds = %28
  %43 = getelementptr inbounds i32, i32* %15, i64 0
  %44 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %44, i32 0, i32 7
  %46 = call i32 @match_fourchar(i32* %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

50:                                               ; preds = %42
  br label %175

51:                                               ; preds = %28
  %52 = getelementptr inbounds i32, i32* %15, i64 0
  %53 = call i32 @match_octal(i32* %52, i32* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  br label %175

61:                                               ; preds = %28
  %62 = getelementptr inbounds i32, i32* %15, i64 0
  %63 = call i32 @match_int(i32* %62, i32* %9)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

67:                                               ; preds = %61
  %68 = call i32 (...) @current_user_ns()
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @make_kuid(i32 %68, i32 %69)
  %71 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @uid_valid(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

80:                                               ; preds = %67
  br label %175

81:                                               ; preds = %28
  %82 = getelementptr inbounds i32, i32* %15, i64 0
  %83 = call i32 @match_int(i32* %82, i32* %9)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

87:                                               ; preds = %81
  %88 = call i32 (...) @current_user_ns()
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @make_kgid(i32 %88, i32 %89)
  %91 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %92 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gid_valid(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

100:                                              ; preds = %87
  br label %175

101:                                              ; preds = %28
  %102 = getelementptr inbounds i32, i32* %15, i64 0
  %103 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %104 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %103, i32 0, i32 0
  %105 = call i32 @match_int(i32* %102, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

109:                                              ; preds = %101
  br label %175

110:                                              ; preds = %28
  %111 = getelementptr inbounds i32, i32* %15, i64 0
  %112 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %113 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %112, i32 0, i32 1
  %114 = call i32 @match_int(i32* %111, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

118:                                              ; preds = %110
  br label %175

119:                                              ; preds = %28
  %120 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %121 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

126:                                              ; preds = %119
  %127 = getelementptr inbounds i32, i32* %15, i64 0
  %128 = call i8* @match_strdup(i32* %127)
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %6, align 8
  %133 = call i8* @load_nls(i8* %132)
  %134 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %135 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %138 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %142)
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @kfree(i8* %144)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

146:                                              ; preds = %136
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @kfree(i8* %147)
  br label %175

149:                                              ; preds = %28
  %150 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %151 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %152 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %151, i32 0, i32 3
  %153 = call i32 @clear_bit(i32 %150, i32* %152)
  br label %175

154:                                              ; preds = %28
  %155 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %156 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %157 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %156, i32 0, i32 3
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  br label %175

159:                                              ; preds = %28
  %160 = load i32, i32* @HFSPLUS_SB_NOBARRIER, align 4
  %161 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %162 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %161, i32 0, i32 3
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  br label %175

164:                                              ; preds = %28
  %165 = load i32, i32* @HFSPLUS_SB_NOBARRIER, align 4
  %166 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %167 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %166, i32 0, i32 3
  %168 = call i32 @set_bit(i32 %165, i32* %167)
  br label %175

169:                                              ; preds = %28
  %170 = load i32, i32* @HFSPLUS_SB_FORCE, align 4
  %171 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %172 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %171, i32 0, i32 3
  %173 = call i32 @set_bit(i32 %170, i32* %172)
  br label %175

174:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

175:                                              ; preds = %169, %164, %159, %154, %149, %146, %118, %109, %100, %80, %57, %50, %41
  br label %20

176:                                              ; preds = %20
  br label %177

177:                                              ; preds = %176, %18
  %178 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %179 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %201, label %182

182:                                              ; preds = %177
  %183 = call i8* @load_nls(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %184 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %185 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %187 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %182
  %191 = call i8* (...) @load_nls_default()
  %192 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %193 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %190, %182
  %195 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %196 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %177
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %202

202:                                              ; preds = %201, %199, %174, %141, %124, %116, %107, %98, %85, %78, %65, %55, %48, %39
  %203 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_fourchar(i32*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i8* @load_nls(i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

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
