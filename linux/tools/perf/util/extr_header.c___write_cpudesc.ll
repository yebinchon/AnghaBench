; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___write_cpudesc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___write_cpudesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i8*)* @__write_cpudesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_cpudesc(%struct.feat_fd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.feat_fd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.feat_fd* %0, %struct.feat_fd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %116

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @getline(i8** %7, i64* %11, i32* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @strncmp(i8* %30, i8* %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %29
  br label %25

39:                                               ; preds = %37, %25
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %12, align 4
  br label %110

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 58)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %61, %55, %49, %43
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 10)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %103, %71
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i8* @skip_spaces(i8* %85)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %9, align 8
  store i8 32, i8* %87, align 1
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = icmp ne i8* %88, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %14, align 8
  %96 = load i8, i8* %94, align 1
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  store i8 %96, i8* %97, align 1
  %99 = icmp ne i8 %96, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %77
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  br label %73

106:                                              ; preds = %73
  %107 = load %struct.feat_fd*, %struct.feat_fd** %4, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @do_write_string(%struct.feat_fd* %107, i8* %108)
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %42
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @fclose(i32* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %23, %18
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @do_write_string(%struct.feat_fd*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
