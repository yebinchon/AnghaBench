; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_trace_helpers.c_load_kallsyms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_trace_helpers.c_load_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%p %c %s\00", align 1
@syms = common dso_local global %struct.TYPE_3__* null, align 8
@sym_cnt = common dso_local global i32 0, align 4
@ksym_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_kallsyms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = call i32* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %55

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %30, %29, %14
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @fgets(i8* %16, i32 256, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %23 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %6, i8* %5, i8* %22)
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %47

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %15

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syms, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %32, i64* %37, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %39 = call i32 @strdup(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syms, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %15

47:                                               ; preds = %25, %15
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* @sym_cnt, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syms, align 8
  %52 = load i32, i32* @sym_cnt, align 4
  %53 = load i32, i32* @ksym_cmp, align 4
  %54 = call i32 @qsort(%struct.TYPE_3__* %51, i32 %52, i32 4, i32 %53)
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %47, %11
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
