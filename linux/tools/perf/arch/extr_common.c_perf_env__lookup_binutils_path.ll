; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/extr_common.c_perf_env__lookup_binutils_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/extr_common.c_perf_env__lookup_binutils_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"CROSS_COMPILE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@arc_triplets = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_triplets = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@arm64_triplets = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@powerpc_triplets = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@sh_triplets = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@s390_triplets = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@sparc_triplets = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@x86_triplets = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@mips_triplets = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"binutils for %s not supported.\0A\00", align 1
@.str.12 = private unnamed_addr constant [105 x i8] c"Please install %s for %s.\0AYou can add it to PATH, set CROSS_COMPILE or override the default using --%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*, i8*, i8**)* @perf_env__lookup_binutils_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__lookup_binutils_path(%struct.perf_env* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_env*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %14 = call i8* @perf_env__arch(%struct.perf_env* %13)
  store i8* %14, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %15 = call i8* @perf_env__arch(%struct.perf_env* null)
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @strcmp(i8* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %137

20:                                               ; preds = %3
  %21 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %140

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @F_OK, align 4
  %39 = call i64 @access(i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %137

42:                                               ; preds = %36
  br label %140

43:                                               ; preds = %30
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @lookup_path(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %137

48:                                               ; preds = %43
  %49 = call i32 @zfree(i8** %12)
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i8**, i8*** @arc_triplets, align 8
  store i8** %55, i8*** %11, align 8
  br label %115

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i8**, i8*** @arm_triplets, align 8
  store i8** %61, i8*** %11, align 8
  br label %114

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i8**, i8*** @arm64_triplets, align 8
  store i8** %67, i8*** %11, align 8
  br label %113

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i8**, i8*** @powerpc_triplets, align 8
  store i8** %73, i8*** %11, align 8
  br label %112

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i8**, i8*** @sh_triplets, align 8
  store i8** %79, i8*** %11, align 8
  br label %111

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i8**, i8*** @s390_triplets, align 8
  store i8** %85, i8*** %11, align 8
  br label %110

86:                                               ; preds = %80
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i8**, i8*** @sparc_triplets, align 8
  store i8** %91, i8*** %11, align 8
  br label %109

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i8**, i8*** @x86_triplets, align 8
  store i8** %97, i8*** %11, align 8
  br label %108

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i8**, i8*** @mips_triplets, align 8
  store i8** %103, i8*** %11, align 8
  br label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 (i8*, i8*, ...) @ui__error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %105)
  br label %140

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %78
  br label %112

112:                                              ; preds = %111, %72
  br label %113

113:                                              ; preds = %112, %66
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %114, %54
  %116 = load i8**, i8*** %11, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @lookup_triplets(i8** %116, i8* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 (i8*, i8*, ...) @ui__error(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.12, i64 0, i64 0), i8* %122, i8* %123, i8* %124)
  br label %140

126:                                              ; preds = %115
  %127 = load i8**, i8*** %11, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %131, i8* %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %140

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %47, %41, %19
  %138 = load i8*, i8** %12, align 8
  %139 = load i8**, i8*** %7, align 8
  store i8* %138, i8** %139, align 8
  store i32 0, i32* %4, align 4
  br label %144

140:                                              ; preds = %135, %121, %104, %42, %29
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8**, i8*** %7, align 8
  store i8* null, i8** %143, align 8
  store i32 -1, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i8* @perf_env__arch(%struct.perf_env*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @lookup_path(i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @ui__error(i8*, i8*, ...) #1

declare dso_local i32 @lookup_triplets(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
