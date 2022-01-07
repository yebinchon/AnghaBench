; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  br label %165

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %163, %160, %33
  %35 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %22, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %164

37:                                               ; preds = %34
  %38 = load i32, i32* @MAX_OPT_ARGS, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %24, align 8
  %41 = alloca %struct.TYPE_5__, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 2, i32* %27, align 4
  br label %160

46:                                               ; preds = %37
  %47 = load i8*, i8** %22, align 8
  %48 = load i32, i32* @tokens, align 4
  %49 = call i32 @match_token(i8* %47, i32 %48, %struct.TYPE_5__* %41)
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* %26, align 4
  switch i32 %50, label %158 [
    i32 131, label %51
    i32 129, label %52
    i32 132, label %67
    i32 128, label %82
    i32 145, label %89
    i32 146, label %91
    i32 144, label %93
    i32 143, label %95
    i32 142, label %97
    i32 135, label %99
    i32 133, label %101
    i32 134, label %103
    i32 138, label %105
    i32 137, label %107
    i32 136, label %109
    i32 139, label %111
    i32 140, label %113
    i32 141, label %115
    i32 130, label %117
  ]

51:                                               ; preds = %46
  store i32 2, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

52:                                               ; preds = %46
  %53 = call i32 @match_int(%struct.TYPE_5__* %41, i32* %23)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

56:                                               ; preds = %52
  %57 = call i32 (...) @current_user_ns()
  %58 = load i32, i32* %23, align 4
  %59 = call i32 @make_kuid(i32 %57, i32 %58)
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @uid_valid(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

66:                                               ; preds = %56
  br label %159

67:                                               ; preds = %46
  %68 = call i32 @match_int(%struct.TYPE_5__* %41, i32* %23)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

71:                                               ; preds = %67
  %72 = call i32 (...) @current_user_ns()
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @make_kgid(i32 %72, i32 %73)
  %75 = load i32*, i32** %14, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gid_valid(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

81:                                               ; preds = %71
  br label %159

82:                                               ; preds = %46
  %83 = call i32 @match_octal(%struct.TYPE_5__* %41, i32* %23)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

86:                                               ; preds = %82
  %87 = load i32, i32* %23, align 4
  %88 = load i32*, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  br label %159

89:                                               ; preds = %46
  %90 = load i32*, i32** %16, align 8
  store i32 1, i32* %90, align 4
  br label %159

91:                                               ; preds = %46
  %92 = load i32*, i32** %16, align 8
  store i32 0, i32* %92, align 4
  br label %159

93:                                               ; preds = %46
  %94 = load i32*, i32** %18, align 8
  store i32 0, i32* %94, align 4
  br label %159

95:                                               ; preds = %46
  %96 = load i32*, i32** %18, align 8
  store i32 1, i32* %96, align 4
  br label %159

97:                                               ; preds = %46
  %98 = load i32*, i32** %18, align 8
  store i32 2, i32* %98, align 4
  br label %159

99:                                               ; preds = %46
  %100 = load i32*, i32** %19, align 8
  store i32 0, i32* %100, align 4
  br label %159

101:                                              ; preds = %46
  %102 = load i32*, i32** %19, align 8
  store i32 1, i32* %102, align 4
  br label %159

103:                                              ; preds = %46
  %104 = load i32*, i32** %19, align 8
  store i32 2, i32* %104, align 4
  br label %159

105:                                              ; preds = %46
  %106 = load i32*, i32** %17, align 8
  store i32 0, i32* %106, align 4
  br label %159

107:                                              ; preds = %46
  %108 = load i32*, i32** %17, align 8
  store i32 1, i32* %108, align 4
  br label %159

109:                                              ; preds = %46
  %110 = load i32*, i32** %17, align 8
  store i32 2, i32* %110, align 4
  br label %159

111:                                              ; preds = %46
  %112 = load i32*, i32** %20, align 8
  store i32 0, i32* %112, align 4
  br label %159

113:                                              ; preds = %46
  %114 = load i32*, i32** %20, align 8
  store i32 1, i32* %114, align 4
  br label %159

115:                                              ; preds = %46
  %116 = load i32*, i32** %20, align 8
  store i32 2, i32* %116, align 4
  br label %159

117:                                              ; preds = %46
  store i32 1, i32* %28, align 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 16
  store i8* %120, i8** %29, align 8
  %121 = load i8*, i8** %29, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i8*, i8** %29, align 8
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123, %117
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

128:                                              ; preds = %123
  %129 = load i8*, i8** %29, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 45
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 -1, i32* %28, align 4
  br label %134

134:                                              ; preds = %133, %128
  %135 = load i8*, i8** %29, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %29, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 45
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %134
  %145 = load i8*, i8** %29, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %29, align 8
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i8*, i8** %29, align 8
  %149 = call i32 @simple_strtoul(i8* %148, i8** %29, i32 0)
  %150 = load i32, i32* %28, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32*, i32** %21, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i8*, i8** %29, align 8
  %154 = load i8, i8* %153, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

157:                                              ; preds = %147
  br label %159

158:                                              ; preds = %46
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %160

159:                                              ; preds = %157, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %86, %81, %66
  store i32 0, i32* %27, align 4
  br label %160

160:                                              ; preds = %159, %158, %156, %127, %85, %80, %70, %65, %55, %51, %45
  %161 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %27, align 4
  switch i32 %162, label %167 [
    i32 0, label %163
    i32 2, label %34
    i32 1, label %165
  ]

163:                                              ; preds = %160
  br label %34

164:                                              ; preds = %34
  store i32 1, i32* %11, align 4
  br label %165

165:                                              ; preds = %164, %160, %32
  %166 = load i32, i32* %11, align 4
  ret i32 %166

167:                                              ; preds = %160
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @match_int(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @match_octal(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
