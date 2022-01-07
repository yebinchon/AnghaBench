; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_read_procfs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_read_procfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_procfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_procfs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @getline(i8** %5, i64* %6, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @fclose(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %42

22:                                               ; preds = %14
  store i64 0, i64* @errno, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strtol(i8* %23, i8** %4, i32 10)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27, %22
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %21, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
