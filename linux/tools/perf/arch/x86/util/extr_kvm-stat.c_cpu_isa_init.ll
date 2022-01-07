; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_kvm-stat.c_cpu_isa_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_kvm-stat.c_cpu_isa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@vmx_exit_reasons = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"VMX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Hygon\00", align 1
@svm_exit_reasons = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"SVM\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_isa_init(%struct.perf_kvm_stat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_kvm_stat*, align 8
  %5 = alloca i8*, align 8
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @vmx_exit_reasons, align 4
  %11 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %12 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %14 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @svm_exit_reasons, align 4
  %25 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %26 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %28 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %28, align 8
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %9
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
