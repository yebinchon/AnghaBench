; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_profile.c_profile_setup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_profile.c_profile_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@profile_setup.schedstr = internal constant [9 x i8] c"schedule\00", align 1
@profile_setup.sleepstr = internal constant [6 x i8] c"sleep\00", align 1
@profile_setup.kvmstr = internal constant [4 x i8] c"kvm\00", align 1
@.str = private unnamed_addr constant [51 x i8] c"kernel sleep profiling requires CONFIG_SCHEDSTATS\0A\00", align 1
@SCHED_PROFILING = common dso_local global i32 0, align 4
@prof_on = common dso_local global i32 0, align 4
@prof_shift = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"kernel schedule profiling enabled (shift: %ld)\0A\00", align 1
@KVM_PROFILING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"kernel KVM profiling enabled (shift: %ld)\0A\00", align 1
@CPU_PROFILING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"kernel profiling enabled (shift: %ld)\0A\00", align 1
@SLEEP_PROFILING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @profile_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @profile_setup.sleepstr, i64 0, i64 0))
  %6 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @profile_setup.sleepstr, i64 0, i64 0), i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %77

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @profile_setup.schedstr, i64 0, i64 0))
  %13 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @profile_setup.schedstr, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @SCHED_PROFILING, align 4
  store i32 %16, i32* @prof_on, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @profile_setup.schedstr, i64 0, i64 0))
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @profile_setup.schedstr, i64 0, i64 0))
  %26 = add nsw i32 %25, 1
  %27 = load i8*, i8** %2, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %24, %15
  %31 = call i64 @get_option(i8** %2, i32* %3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* @prof_shift, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* @prof_shift, align 4
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %76

38:                                               ; preds = %10
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @profile_setup.kvmstr, i64 0, i64 0))
  %41 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @profile_setup.kvmstr, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @KVM_PROFILING, align 4
  store i32 %44, i32* @prof_on, align 4
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @profile_setup.kvmstr, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @profile_setup.kvmstr, i64 0, i64 0))
  %54 = add nsw i32 %53, 1
  %55 = load i8*, i8** %2, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %2, align 8
  br label %58

58:                                               ; preds = %52, %43
  %59 = call i64 @get_option(i8** %2, i32* %3)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* @prof_shift, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* @prof_shift, align 4
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %75

66:                                               ; preds = %38
  %67 = call i64 @get_option(i8** %2, i32* %3)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  store i32 %70, i32* @prof_shift, align 4
  %71 = load i32, i32* @CPU_PROFILING, align 4
  store i32 %71, i32* @prof_on, align 4
  %72 = load i32, i32* @prof_shift, align 4
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %35
  br label %77

77:                                               ; preds = %76, %8
  ret i32 1
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @get_option(i8**, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
