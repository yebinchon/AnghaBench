; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_process_mapfile.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_process_mapfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"%s: Processing mapfile %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Error %s opening %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: Mapfile %s: line %d too long, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\09.cpuid = \22%s\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09.version = \22%s\22,\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09.type = \22%s\22,\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\09.table = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @process_mapfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_mapfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 16384, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %17 = load i32, i32* @prog, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %122

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @prog, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %31, i8* %35, i8* %36)
  store i32 -1, i32* %3, align 4
  br label %122

38:                                               ; preds = %25
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @print_mapping_table_prefix(i32* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @fgets(i8* %41, i32 %42, i32* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %119

48:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %71, %87
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @fgets(i8* %52, i32 %53, i32* %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %118

59:                                               ; preds = %49
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %59
  br label %49

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, i32* @prog, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %83, i8* %84, i32 %85)
  store i32 -1, i32* %3, align 4
  br label %122

87:                                               ; preds = %72
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %10, align 8
  %95 = call i8* @strtok_r(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %96 = call i8* @fixregex(i8* %95)
  store i8* %96, i8** %13, align 8
  %97 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  store i8* %97, i8** %14, align 8
  %98 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  store i8* %98, i8** %16, align 8
  %99 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = call i8* @file_name_to_table_name(i8* %100)
  store i8* %101, i8** %12, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %49

118:                                              ; preds = %58
  br label %119

119:                                              ; preds = %118, %47
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @print_mapping_table_suffix(i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %82, %30, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @pr_info(i8*, i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @print_mapping_table_prefix(i32*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @fixregex(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @file_name_to_table_name(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_mapping_table_suffix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
