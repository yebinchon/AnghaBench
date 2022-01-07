; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf_dump.c_test_btf_dump_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf_dump.c_test_btf_dump_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump_test_case = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.btf = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Test case #%d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.o\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to load test BTF: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"/tmp/%s.output.XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to create temp output file: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to open temp output file: %s(%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failure during C dumping: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"progs/%s.c\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"%s.c\00", align 1
@.str.10 = private unnamed_addr constant [145 x i8] c"awk '/START-EXPECTED-OUTPUT/{out=1;next} /END-EXPECTED-OUTPUT/{out=0} /\\/\\*|\\*\\//{next} out {sub(/^[ \\t]*\\*/, \22\22); print}' '%s' | diff -u - '%s'\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"differing test output, output=%s, err=%d, diff cmd:\0A%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_btf_dump_case(i32 %0, %struct.btf_dump_test_case* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dump_test_case*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.btf_dump_test_case* %1, %struct.btf_dump_test_case** %4, align 8
  store %struct.btf* null, %struct.btf** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %15 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %19 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %20 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %24 = call %struct.btf* @btf__parse_elf(i8* %23, i32* null)
  store %struct.btf* %24, %struct.btf** %8, align 8
  %25 = load %struct.btf*, %struct.btf** %8, align 8
  %26 = call i32 @IS_ERR(%struct.btf* %25)
  %27 = load %struct.btf*, %struct.btf** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.btf* %27)
  %29 = call i64 (i32, i8*, ...) @CHECK(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.btf*, %struct.btf** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.btf* %32)
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  store %struct.btf* null, %struct.btf** %8, align 8
  br label %118

35:                                               ; preds = %2
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %38 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %42 = call i32 @mkstemp(i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %10, align 4
  %47 = call i64 (i32, i8*, ...) @CHECK(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  br label %118

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = call i32* @fdopen(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = icmp eq i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = load i32, i32* @errno, align 4
  %60 = call i64 (i32, i8*, ...) @CHECK(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @close(i32 %63)
  br label %118

65:                                               ; preds = %51
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %68 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load %struct.btf*, %struct.btf** %8, align 8
  %71 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %72 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %71, i32 0, i32 1
  %73 = call i32 @btf_dump_all_types(%struct.btf* %70, %struct.TYPE_2__* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @fclose(i32* %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 (i32, i8*, ...) @CHECK(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %118

83:                                               ; preds = %65
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %85 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %86 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %84, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %90 = load i32, i32* @R_OK, align 4
  %91 = call i32 @access(i8* %89, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %95 = load %struct.btf_dump_test_case*, %struct.btf_dump_test_case** %4, align 8
  %96 = getelementptr inbounds %struct.btf_dump_test_case, %struct.btf_dump_test_case* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %94, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %93, %83
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %103 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %100, i32 1024, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.10, i64 0, i64 0), i8* %101, i8* %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %105 = call i32 @system(i8* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %110 = call i64 (i32, i8*, ...) @CHECK(i32 %106, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* %107, i32 %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %118

113:                                              ; preds = %99
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %115 = call i32 @remove(i8* %114)
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %112, %82, %62, %49, %31
  %119 = load %struct.btf*, %struct.btf** %8, align 8
  %120 = call i32 @btf__free(%struct.btf* %119)
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.btf* @btf__parse_elf(i8*, i32*) #1

declare dso_local i64 @CHECK(i32, i8*, ...) #1

declare dso_local i32 @IS_ERR(%struct.btf*) #1

declare dso_local i32 @PTR_ERR(%struct.btf*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @btf_dump_all_types(%struct.btf*, %struct.TYPE_2__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @btf__free(%struct.btf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
