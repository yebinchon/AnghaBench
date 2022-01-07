; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_kvm_add_default_arch_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_kvm_add_default_arch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"trace_imc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"trace_cycles\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"trace_imc/trace_cycles/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_add_default_arch_event(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.option], align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %14 = call i32 @OPT_BOOLEAN(i8 signext 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7, i32* null)
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %17 = call i32 (...) @OPT_END()
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8** @calloc(i32 %20, i32 8)
  store i8** %21, i8*** %6, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %49 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %50 = call i32 @parse_options(i32 %46, i8** %47, %struct.option* %48, i32* null, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %45
  %54 = call i64 @pmu_have_event(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %57, i8** %62, align 8
  %63 = call i8* @strdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %69, align 4
  br label %77

72:                                               ; preds = %53
  %73 = load i8**, i8*** %6, align 8
  %74 = call i32 @free(i8** %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i8**, i8*** %6, align 8
  %80 = call i32 @free(i8** %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %72, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i32*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i32*, i32) #1

declare dso_local i64 @pmu_have_event(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
