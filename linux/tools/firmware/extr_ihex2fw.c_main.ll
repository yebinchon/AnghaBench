; ModuleID = '/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"wsj\00", align 1
@wide_records = common dso_local global i32 0, align 4
@sort_records = common dso_local global i32 0, align 4
@include_jump = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to open source file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to open destination file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %21 [
    i32 119, label %18
    i32 115, label %19
    i32 106, label %20
  ]

18:                                               ; preds = %16
  store i32 1, i32* @wide_records, align 4
  br label %23

19:                                               ; preds = %16
  store i32 1, i32* @sort_records, align 4
  br label %23

20:                                               ; preds = %16
  store i32 1, i32* @include_jump, align 4
  br label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @usage()
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %20, %19, %18
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* @optind, align 4
  %26 = add nsw i32 %25, 2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @usage()
  store i32 %30, i32* %3, align 4
  br label %117

31:                                               ; preds = %24
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @optind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %48

40:                                               ; preds = %31
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @optind, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = call i32 (i8*, i32, ...) @open(i8* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = call i32 (...) @usage()
  store i32 %56, i32* %3, align 4
  br label %117

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @fstat(i32 %58, %struct.stat* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %117

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PROT_READ, align 4
  %67 = load i32, i32* @MAP_SHARED, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32* @mmap(i32* null, i32 %65, i32 %66, i32 %67, i32 %68, i32 0)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** @MAP_FAILED, align 8
  %72 = icmp eq i32* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %117

75:                                               ; preds = %63
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %98

85:                                               ; preds = %75
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* @optind, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @O_TRUNC, align 4
  %93 = load i32, i32* @O_CREAT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @O_WRONLY, align 4
  %96 = or i32 %94, %95
  %97 = call i32 (i8*, i32, ...) @open(i8* %91, i32 %96, i32 420)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %85, %84
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* @errno, align 4
  %104 = call i8* @strerror(i32 %103)
  %105 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  %106 = call i32 (...) @usage()
  store i32 %106, i32* %3, align 4
  br label %117

107:                                              ; preds = %98
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @process_ihex(i32* %108, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @output_records(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %113, %101, %73, %61, %51, %29, %21
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @process_ihex(i32*, i32) #1

declare dso_local i32 @output_records(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
