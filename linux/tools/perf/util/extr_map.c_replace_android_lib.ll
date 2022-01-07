; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_replace_android_lib.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_replace_android_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"APP_ABI\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/data/app-lib\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"APK_PATH\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"%s/libs/%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"libs/%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/system/lib/\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NDK_ROOT\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"APP_PLATFORM\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%s/platforms/%s/arch-%s/usr/lib/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @replace_android_lib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_android_lib(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %10, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %156

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %79, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %156

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = add i64 7, %42
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @PATH_MAX, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %156

60:                                               ; preds = %49
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %64, i8* %65)
  br label %78

67:                                               ; preds = %41
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PATH_MAX, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %156

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %73, i64 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %72, %60
  store i32 1, i32* %3, align 4
  br label %156

79:                                               ; preds = %30
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %155, label %83

83:                                               ; preds = %79
  %84 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %84, i8** %12, align 8
  %85 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88, %83
  store i32 0, i32* %3, align 4
  br label %156

92:                                               ; preds = %88
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %15, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i64, i64* %16, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104, %101, %92
  store i32 0, i32* %3, align 4
  br label %156

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %127

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strncmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %125

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strncmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* null
  br label %125

125:                                              ; preds = %118, %117
  %126 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %117 ], [ %124, %118 ]
  br label %127

127:                                              ; preds = %125, %112
  %128 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %112 ], [ %126, %125 ]
  store i8* %128, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %156

132:                                              ; preds = %127
  %133 = load i64, i64* %15, align 8
  %134 = add i64 27, %133
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %134, %135
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %136, %137
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = sext i32 %140 to i64
  %142 = add i64 %138, %141
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @PATH_MAX, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %156

147:                                              ; preds = %132
  %148 = load i8*, i8** %5, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %148, i64 %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %150, i8* %151, i8* %152, i8* %153)
  store i32 1, i32* %3, align 4
  br label %156

155:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %147, %146, %131, %107, %91, %78, %71, %59, %40, %29
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
