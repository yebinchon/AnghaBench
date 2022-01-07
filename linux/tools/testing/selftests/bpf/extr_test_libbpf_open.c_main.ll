; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_libbpf_open.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_libbpf_open.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libbpf_debug_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hDq\00", align 1
@long_options = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@EXIT_FAIL_OPTION = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR: Expected BPF_FILE argument after options\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast [1024 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 1024, i1 false)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @libbpf_debug_print, align 4
  %12 = call i32 @libbpf_set_print(i32 %11)
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @long_options, align 4
  %17 = call i32 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %24 [
    i32 68, label %21
    i32 113, label %22
    i32 104, label %23
  ]

21:                                               ; preds = %19
  store i32 1, i32* @debug, align 4
  br label %28

22:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %28

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %19, %23
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @usage(i8** %25)
  %27 = load i32, i32* @EXIT_FAIL_OPTION, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %22, %21
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* @optind, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @usage(i8** %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAIL_OPTION, align 4
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %29
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* @optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i8* %39, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @test_open_file(i8* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %33, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @libbpf_set_print(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @usage(i8**) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @test_open_file(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
