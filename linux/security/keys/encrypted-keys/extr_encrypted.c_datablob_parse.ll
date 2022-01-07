; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_parse.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"encrypted_key: insufficient parameters specified\0A\00", align 1
@key_tokens = common dso_local global i32 0, align 4
@key_format_tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"encrypted_key: master key parameter is missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"encrypted_key: master key parameter '%s' is invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"encrypted_key: keylen parameter is missing\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"encrypted_key: keyword '%s' not allowed when called from .update method\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"encrypted_key: hex blob is missing\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"encrypted_key: keyword '%s' not allowed when called from .instantiate method\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"encrypted_key: keyword '%s' not recognized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i8**, i8**)* @datablob_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datablob_parse(i8* %0, i8** %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

32:                                               ; preds = %5
  %33 = load i8*, i8** %18, align 8
  %34 = load i32, i32* @key_tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, i32* %23)
  store i32 %35, i32* %15, align 4
  %36 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

42:                                               ; preds = %32
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* @key_format_tokens, align 4
  %45 = call i32 @match_token(i8* %43, i32 %44, i32* %23)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  switch i32 %46, label %55 [
    i32 134, label %47
    i32 133, label %47
    i32 135, label %47
    i32 131, label %52
  ]

47:                                               ; preds = %42, %42, %42
  %48 = load i8*, i8** %17, align 8
  %49 = load i8**, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  %50 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = load i8**, i8*** %9, align 8
  store i8* %50, i8** %51, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load i8*, i8** %17, align 8
  %54 = load i8**, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %42, %52, %47
  %56 = load i8**, i8*** %9, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %117

61:                                               ; preds = %55
  %62 = load i8**, i8*** %9, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @valid_master_desc(i8* %63, i32* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8**, i8*** %9, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %117

70:                                               ; preds = %61
  %71 = load i8**, i8*** %10, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %75 = load i8**, i8*** %10, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i8**, i8*** %10, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %117

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %15, align 4
  switch i32 %83, label %116 [
    i32 129, label %84
    i32 130, label %91
    i32 128, label %106
    i32 132, label %113
  ]

84:                                               ; preds = %82
  %85 = load i8**, i8*** %10, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %116

90:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %116

91:                                               ; preds = %82
  %92 = load i8**, i8*** %10, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %18, align 8
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %116

97:                                               ; preds = %91
  %98 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %99 = load i8**, i8*** %11, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %116

105:                                              ; preds = %97
  store i32 0, i32* %14, align 4
  br label %116

106:                                              ; preds = %82
  %107 = load i8**, i8*** %10, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  br label %116

112:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %116

113:                                              ; preds = %82
  %114 = load i8*, i8** %18, align 8
  %115 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %82, %113, %112, %109, %105, %103, %94, %90, %87
  br label %117

117:                                              ; preds = %116, %79, %66, %59
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

119:                                              ; preds = %117, %39, %29
  %120 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i64 @valid_master_desc(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
