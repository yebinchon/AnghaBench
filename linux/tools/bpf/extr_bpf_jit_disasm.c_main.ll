; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_jit_disasm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_jit_disasm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"of:O:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not retrieve log buffer!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"No JIT image found!\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not open file %s for writing: \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not write data to %s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %29 [
    i32 111, label %24
    i32 79, label %25
    i32 102, label %27
  ]

24:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %12, align 8
  br label %31

27:                                               ; preds = %22
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %11, align 8
  br label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %108

31:                                               ; preds = %27, %25, %24
  br label %17

32:                                               ; preds = %17
  %33 = call i32 (...) @bfd_init()
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @get_log_buff(i8* %34, i32* %7)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %108

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @get_last_jit_image(i8* %42, i32 %43, i32* %6)
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %103

50:                                               ; preds = %41
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @get_asm_insns(i32* %54, i32 %55, i32 %56)
  br label %103

58:                                               ; preds = %50
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* @O_WRONLY, align 4
  %61 = load i32, i32* @O_CREAT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_TRUNC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DEFFILEMODE, align 4
  %66 = call i32 @open(i8* %59, i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = call i32 @perror(i32* null)
  br label %103

74:                                               ; preds = %58
  %75 = load i32*, i32** %16, align 8
  store i32* %75, i32** %15, align 8
  br label %76

76:                                               ; preds = %97, %74
  %77 = load i32, i32* %13, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @write(i32 %77, i32* %78, i32 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = call i32 @perror(i32* null)
  br label %103

88:                                               ; preds = %76
  %89 = load i64, i64* %14, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load i64, i64* %14, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %15, align 8
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %76, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %100, %83, %69, %53, %47
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @put_log_buff(i8* %104)
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @free(i32* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %38, %29
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i8* @get_log_buff(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @get_last_jit_image(i8*, i32, i32*) #1

declare dso_local i32 @get_asm_insns(i32*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i32*) #1

declare dso_local i64 @write(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @put_log_buff(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
