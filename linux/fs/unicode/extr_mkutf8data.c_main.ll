; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@argv0 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"a:c:d:f:hn:o:p:t:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@age_name = common dso_local global i8* null, align 8
@ccc_name = common dso_local global i8* null, align 8
@data_name = common dso_local global i8* null, align 8
@fold_name = common dso_local global i8* null, align 8
@norm_name = common dso_local global i8* null, align 8
@utf8_name = common dso_local global i8* null, align 8
@prop_name = common dso_local global i8* null, align 8
@test_name = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@nfdi_tree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@nfdicf_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @argv0, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %40 [
    i32 97, label %18
    i32 99, label %20
    i32 100, label %22
    i32 102, label %24
    i32 110, label %26
    i32 111, label %28
    i32 112, label %30
    i32 116, label %32
    i32 118, label %34
    i32 104, label %37
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @age_name, align 8
  br label %42

20:                                               ; preds = %16
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @ccc_name, align 8
  br label %42

22:                                               ; preds = %16
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @data_name, align 8
  br label %42

24:                                               ; preds = %16
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @fold_name, align 8
  br label %42

26:                                               ; preds = %16
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @norm_name, align 8
  br label %42

28:                                               ; preds = %16
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** @utf8_name, align 8
  br label %42

30:                                               ; preds = %16
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @prop_name, align 8
  br label %42

32:                                               ; preds = %16
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @test_name, align 8
  br label %42

34:                                               ; preds = %16
  %35 = load i32, i32* @verbose, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @verbose, align 4
  br label %42

37:                                               ; preds = %16
  %38 = call i32 (...) @help()
  %39 = call i32 @exit(i32 0) #3
  unreachable

40:                                               ; preds = %16
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %34, %32, %30, %28, %26, %24, %22, %20, %18
  br label %11

43:                                               ; preds = %11
  %44 = load i32, i32* @verbose, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (...) @help()
  br label %48

48:                                               ; preds = %46, %43
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 1114112
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %49

62:                                               ; preds = %49
  %63 = call i32 (...) @age_init()
  %64 = call i32 (...) @ccc_init()
  %65 = call i32 (...) @nfdi_init()
  %66 = call i32 (...) @nfdicf_init()
  %67 = call i32 (...) @ignore_init()
  %68 = call i32 (...) @corrections_init()
  %69 = call i32 (...) @hangul_decompose()
  %70 = call i32 (...) @nfdi_decompose()
  %71 = call i32 (...) @nfdicf_decompose()
  %72 = call i32 (...) @utf8_init()
  %73 = call i32 (...) @trees_init()
  %74 = call i32 (...) @trees_populate()
  %75 = call i32 (...) @trees_reduce()
  %76 = call i32 (...) @trees_verify()
  %77 = load i32, i32* @nfdi_tree, align 4
  %78 = call i32 @lookup(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @verbose, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load i32, i32* @nfdi_tree, align 4
  %83 = call i32 @tree_walk(i32 %82)
  br label %84

84:                                               ; preds = %81, %62
  %85 = load i32, i32* @verbose, align 4
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @nfdicf_tree, align 4
  %89 = call i32 @tree_walk(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 (...) @normalization_test()
  %92 = call i32 (...) @write_file()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @age_init(...) #1

declare dso_local i32 @ccc_init(...) #1

declare dso_local i32 @nfdi_init(...) #1

declare dso_local i32 @nfdicf_init(...) #1

declare dso_local i32 @ignore_init(...) #1

declare dso_local i32 @corrections_init(...) #1

declare dso_local i32 @hangul_decompose(...) #1

declare dso_local i32 @nfdi_decompose(...) #1

declare dso_local i32 @nfdicf_decompose(...) #1

declare dso_local i32 @utf8_init(...) #1

declare dso_local i32 @trees_init(...) #1

declare dso_local i32 @trees_populate(...) #1

declare dso_local i32 @trees_reduce(...) #1

declare dso_local i32 @trees_verify(...) #1

declare dso_local i32 @lookup(i32, i8*) #1

declare dso_local i32 @tree_walk(i32) #1

declare dso_local i32 @normalization_test(...) #1

declare dso_local i32 @write_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
