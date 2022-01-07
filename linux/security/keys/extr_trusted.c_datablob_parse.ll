; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_datablob_parse.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_datablob_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trusted_key_payload = type { i64, i32, i32 }
%struct.trusted_key_options = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@key_tokens = common dso_local global i32 0, align 4
@MIN_KEY_SIZE = common dso_local global i64 0, align 8
@MAX_KEY_SIZE = common dso_local global i64 0, align 8
@MAX_BLOB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.trusted_key_payload*, %struct.trusted_key_options*)* @datablob_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datablob_parse(i8* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trusted_key_payload*, align 8
  %7 = alloca %struct.trusted_key_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %6, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %7, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

27:                                               ; preds = %3
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* @key_tokens, align 4
  %30 = call i32 @match_token(i8* %28, i32 %29, i32* %18)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %126 [
    i32 129, label %32
    i32 130, label %68
    i32 128, label %113
    i32 131, label %123
  ]

32:                                               ; preds = %27
  %33 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

39:                                               ; preds = %32
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @kstrtol(i8* %40, i32 10, i64* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @MIN_KEY_SIZE, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @MAX_KEY_SIZE, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44, %39
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %58 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %61 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %62 = call i32 @getoptions(i8* %59, %struct.trusted_key_payload* %60, %struct.trusted_key_options* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

67:                                               ; preds = %55
  store i32 129, i32* %11, align 4
  br label %126

68:                                               ; preds = %27
  %69 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

75:                                               ; preds = %68
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sdiv i32 %77, 2
  %79 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %80 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %82 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MAX_BLOB_SIZE, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

89:                                               ; preds = %75
  %90 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %91 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %95 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @hex2bin(i32 %92, i8* %93, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

103:                                              ; preds = %89
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %106 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %107 = call i32 @getoptions(i8* %104, %struct.trusted_key_payload* %105, %struct.trusted_key_options* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

112:                                              ; preds = %103
  store i32 130, i32* %11, align 4
  br label %126

113:                                              ; preds = %27
  %114 = load i8*, i8** %5, align 8
  %115 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %116 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %117 = call i32 @getoptions(i8* %114, %struct.trusted_key_payload* %115, %struct.trusted_key_options* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

122:                                              ; preds = %113
  store i32 128, i32* %11, align 4
  br label %126

123:                                              ; preds = %27
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

126:                                              ; preds = %27, %122, %112, %67
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

128:                                              ; preds = %126, %123, %120, %110, %100, %86, %72, %65, %52, %36, %24
  %129 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @kstrtol(i8*, i32, i64*) #2

declare dso_local i32 @getoptions(i8*, %struct.trusted_key_payload*, %struct.trusted_key_options*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hex2bin(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
