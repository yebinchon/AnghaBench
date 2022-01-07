; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@prog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Usage: %s <arch> <starting_dir> <output_file>\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@eventsfp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s Unable to create required file %s (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: Arch %s has no PMU event lists\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"#include \22pmu-events/pmu-events.h\22\0A\00", align 1
@mapfile = common dso_local global i8* null, align 8
@preprocess_arch_std_files = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: Error preprocessing arch standard files %s\0A\00", align 1
@process_one_file = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: Error walking file tree %s\0A\00", align 1
@close_table = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: No CPU->JSON mapping?\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: Error processing mapfile %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @basename(i8* %21)
  store i32 %22, i32* @prog, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @prog, align 4
  %27 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %12, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @atoi(i8* %43)
  store i64 %44, i64* @verbose, align 8
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* @eventsfp, align 4
  %48 = load i32, i32* @eventsfp, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @prog, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52, i32 %54)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %58)
  %60 = call i64 @stat(i8* %18, %struct.stat* %13)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @prog, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %63, i8* %64)
  br label %137

66:                                               ; preds = %56
  %67 = load i32, i32* @eventsfp, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 (...) @get_maxfds()
  store i32 %69, i32* %7, align 4
  store i8* null, i8** @mapfile, align 8
  %70 = load i32, i32* @preprocess_arch_std_files, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @nftw(i8* %18, i32 %70, i32 %71, i32 0)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i64, i64* @verbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @prog, align 4
  %80 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %79, i8* %18)
  br label %137

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @free_arch_std_events()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %137

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* @process_one_file, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @nftw(i8* %18, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i64, i64* @verbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @prog, align 4
  %103 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %102, i8* %18)
  br label %137

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (...) @free_arch_std_events()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %137

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* @close_table, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @eventsfp, align 4
  %120 = call i32 @print_events_table_suffix(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i8*, i8** @mapfile, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @prog, align 4
  %126 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  br label %137

127:                                              ; preds = %121
  %128 = load i32, i32* @eventsfp, align 4
  %129 = load i8*, i8** @mapfile, align 8
  %130 = call i64 @process_mapfile(i32 %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @prog, align 4
  %134 = load i8*, i8** @mapfile, align 8
  %135 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %134)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

136:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

137:                                              ; preds = %124, %112, %101, %89, %78, %62
  %138 = load i32, i32* @eventsfp, align 4
  %139 = call i32 @fclose(i32 %138)
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @create_empty_mapping(i8* %140)
  %142 = call i32 (...) @free_arch_std_events()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %143

143:                                              ; preds = %137, %136, %132, %107, %84, %50, %25
  %144 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @basename(i8*) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i32 @fopen(i8*, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @pr_info(i8*, i32, ...) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @get_maxfds(...) #2

declare dso_local i32 @nftw(i8*, i32, i32, i32) #2

declare dso_local i32 @free_arch_std_events(...) #2

declare dso_local i32 @print_events_table_suffix(i32) #2

declare dso_local i64 @process_mapfile(i32, i8*) #2

declare dso_local i32 @fclose(i32) #2

declare dso_local i32 @create_empty_mapping(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
