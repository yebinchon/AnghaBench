; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_symbol__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_symbol__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.perf_env = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"'.' is the only non valid --field-separator argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tid\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__init(%struct.perf_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca i8*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %103

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %10 = call i32 @PERF_ALIGN(i32 %9, i32 4)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %11 = call i32 (...) @symbol__elf_init()
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 18), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 0
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  br label %19

19:                                               ; preds = %14, %8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 17), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %24 = call i64 @vmlinux_path__init(%struct.perf_env* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %103

27:                                               ; preds = %22, %19
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

37:                                               ; preds = %30, %27
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 16), align 8
  %39 = call i64 @setup_list(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 4), i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %103

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 15), align 4
  %44 = call i64 @setup_list(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 5), i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %100

47:                                               ; preds = %42
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 14), align 8
  %49 = call i64 @setup_intlist(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 6), i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %97

52:                                               ; preds = %47
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 13), align 4
  %54 = call i64 @setup_intlist(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 7), i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %94

57:                                               ; preds = %52
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 12), align 8
  %59 = call i64 @setup_list(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 8), i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %91

62:                                               ; preds = %57
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 10), align 8
  %64 = call i64 @setup_list(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 11), i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %88

67:                                               ; preds = %62
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  %69 = call i8* @realpath(i8* %68, i32* null)
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i8*, i8** %4, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  %82 = icmp ne i8* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = call i32 (...) @symbol__read_kptr_restrict()
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 9), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %103

88:                                               ; preds = %66
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 8), align 8
  %90 = call i32 @strlist__delete(i32 %89)
  br label %91

91:                                               ; preds = %88, %61
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 7), align 4
  %93 = call i32 @intlist__delete(i32 %92)
  br label %94

94:                                               ; preds = %91, %56
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 6), align 8
  %96 = call i32 @intlist__delete(i32 %95)
  br label %97

97:                                               ; preds = %94, %51
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 5), align 4
  %99 = call i32 @strlist__delete(i32 %98)
  br label %100

100:                                              ; preds = %97, %46
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 4), align 8
  %102 = call i32 @strlist__delete(i32 %101)
  store i32 -1, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %86, %41, %35, %26, %7
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @PERF_ALIGN(i32, i32) #1

declare dso_local i32 @symbol__elf_init(...) #1

declare dso_local i64 @vmlinux_path__init(%struct.perf_env*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @setup_list(i32*, i32, i8*) #1

declare dso_local i64 @setup_intlist(i32*, i32, i8*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @symbol__read_kptr_restrict(...) #1

declare dso_local i32 @strlist__delete(i32) #1

declare dso_local i32 @intlist__delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
