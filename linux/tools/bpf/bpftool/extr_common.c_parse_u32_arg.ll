; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_parse_u32_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_parse_u32_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%s already specified\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't parse %s as %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_u32_arg(i32* %0, i8*** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i32 (...) @NEXT_ARGP()
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load i8***, i8**** %7, align 8
  %20 = load i8**, i8*** %19, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strtoul(i8* %21, i8** %10, i32 0)
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i8***, i8**** %7, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  store i32 -1, i32* %5, align 4
  br label %35

33:                                               ; preds = %18
  %34 = call i32 (...) @NEXT_ARGP()
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %27, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @NEXT_ARGP(...) #1

declare dso_local i32 @p_err(i8*, i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
