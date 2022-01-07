; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_perf_llvm_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_perf_llvm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"llvm.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"clang-path\00", align 1
@llvm_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"clang-bpf-cmd-template\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"clang-opt\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"kbuild-dir\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kbuild-opts\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dump-obj\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"opts\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid LLVM config option: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_llvm_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strstarts(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 5
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 7), align 8
  br label %75

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 6), align 8
  br label %74

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 5), align 8
  br label %73

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 4), align 8
  br label %72

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 3), align 8
  br label %71

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @perf_config_bool(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 0), align 8
  br label %70

59:                                               ; preds = %47
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @strdup(i8* %64)
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 2), align 8
  br label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  store i32 -1, i32* %3, align 4
  br label %76

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %30
  br label %74

74:                                               ; preds = %73, %23
  br label %75

75:                                               ; preds = %74, %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 1), align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %66, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @perf_config_bool(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
