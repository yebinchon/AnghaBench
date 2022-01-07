; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_comment__symbol.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_comment__symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(%rip)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i8**)* @comment__symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comment__symbol(i8* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @strstr(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strtoull(i8* %18, i8** %10, i32 16)
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 60)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 62)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i8*, i8** %12, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  store i8 62, i8* %44, align 1
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %38, %30, %24, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
