; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"--all-symbols\00", align 1
@all_symbols = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"--absolute-percpu\00", align 1
@absolute_percpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"--base-relative\00", align 1
@base_relative = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %9
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* @all_symbols, align 4
  br label %45

23:                                               ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* @absolute_percpu, align 4
  br label %44

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* @base_relative, align 4
  br label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %40
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  br label %56

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* @stdin, align 4
  %58 = call i32 @read_map(i32 %57)
  %59 = load i32, i32* @absolute_percpu, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @make_percpus_absolute()
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* @base_relative, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @record_relative_base()
  br label %68

68:                                               ; preds = %66, %63
  %69 = call i32 (...) @sort_symbols()
  %70 = call i32 (...) @optimize_token_table()
  %71 = call i32 (...) @write_src()
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @read_map(i32) #1

declare dso_local i32 @make_percpus_absolute(...) #1

declare dso_local i32 @record_relative_base(...) #1

declare dso_local i32 @sort_symbols(...) #1

declare dso_local i32 @optimize_token_table(...) #1

declare dso_local i32 @write_src(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
