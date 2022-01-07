; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"b:f:h\00", align 1
@acpi_aml_batch_cmd = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Already specify %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@ACPI_AML_BATCH = common dso_local global i64 0, align 8
@acpi_aml_mode = common dso_local global i64 0, align 8
@acpi_aml_file_path = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %64

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %56 [
    i32 98, label %18
    i32 102, label %47
    i32 104, label %49
    i32 63, label %55
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %25, i32* %9, align 4
  br label %91

26:                                               ; preds = %18
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @strlen(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i8* @calloc(i32 %30, i32 1)
  store i8* %31, i8** @acpi_aml_batch_cmd, align 8
  %32 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %36, i32* %9, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %39 = load i32, i32* @optarg, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i8* %38, i32 %39, i32 %40)
  %42 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 10, i8* %45, align 1
  %46 = load i64, i64* @ACPI_AML_BATCH, align 8
  store i64 %46, i64* @acpi_aml_mode, align 8
  br label %63

47:                                               ; preds = %16
  %48 = load i32, i32* @optarg, align 4
  store i32 %48, i32* @acpi_aml_file_path, align 4
  br label %63

49:                                               ; preds = %16
  %50 = load i32, i32* @stdout, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @usage(i32 %50, i8* %53)
  br label %91

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %16, %55
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @usage(i32 %57, i8* %60)
  %62 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %62, i32* %9, align 4
  br label %91

63:                                               ; preds = %47, %37
  br label %11

64:                                               ; preds = %11
  %65 = load i32, i32* @acpi_aml_file_path, align 4
  %66 = load i32, i32* @O_RDWR, align 4
  %67 = load i32, i32* @O_NONBLOCK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @open(i32 %65, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %74, i32* %9, align 4
  br label %91

75:                                               ; preds = %64
  %76 = load i32, i32* @STDIN_FILENO, align 4
  %77 = load i32, i32* @O_NONBLOCK, align 4
  %78 = call i32 @acpi_aml_set_fl(i32 %76, i32 %77)
  %79 = load i32, i32* @STDOUT_FILENO, align 4
  %80 = load i32, i32* @O_NONBLOCK, align 4
  %81 = call i32 @acpi_aml_set_fl(i32 %79, i32 %80)
  %82 = load i64, i64* @acpi_aml_mode, align 8
  %83 = load i64, i64* @ACPI_AML_BATCH, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @acpi_aml_flush(i32 %86)
  br label %88

88:                                               ; preds = %85, %75
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @acpi_aml_loop(i32 %89)
  br label %91

91:                                               ; preds = %88, %72, %56, %49, %34, %21
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** @acpi_aml_batch_cmd, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @usage(i32, i8*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @acpi_aml_set_fl(i32, i32) #1

declare dso_local i32 @acpi_aml_flush(i32) #1

declare dso_local i32 @acpi_aml_loop(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
