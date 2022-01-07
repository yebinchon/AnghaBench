; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_ibumad_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_ibumad_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@dump_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hd:rSw\00", align 1
@long_options = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ERROR: invalid delay : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ERROR: failed to load eBPF from file : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 5, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @snprintf(i8* %10, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @SIGINT, align 4
  %16 = load i32, i32* @dump_exit, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = load i32, i32* @SIGTERM, align 4
  %19 = load i32, i32* @dump_exit, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %56, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* @long_options, align 4
  %25 = call i32 @getopt_long(i32 %22, i8** %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %50 [
    i32 100, label %29
    i32 104, label %51
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i64 @strtoul(i8* %30, i32* null, i32 0)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ULONG_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %39, 1000000
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %35, %29
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @usage(i8* %47)
  store i32 1, i32* %3, align 4
  br label %70

49:                                               ; preds = %38
  br label %56

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %27, %50
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @usage(i8* %54)
  store i32 1, i32* %3, align 4
  br label %70

56:                                               ; preds = %49
  br label %21

57:                                               ; preds = %21
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = call i64 @load_bpf_file(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %64 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  store i32 1, i32* %3, align 4
  br label %70

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %66
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @sleep(i64 %67)
  %69 = call i32 (...) @dump_all_counts()
  br label %66

70:                                               ; preds = %61, %51, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i32 @dump_all_counts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
