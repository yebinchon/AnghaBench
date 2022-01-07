; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_ppc__setup_book3s_hv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_ppc__setup_book3s_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i8*, i32 }
%struct.evlist = type { i32 }

@ppc_book3s_hv_kvm_tp = common dso_local global i8** null, align 8
@kvm_events_tp = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@kvm_exit_reason = common dso_local global i8* null, align 8
@hv_exit_reasons = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, %struct.evlist*)* @ppc__setup_book3s_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc__setup_book3s_hv(%struct.perf_kvm_stat* %0, %struct.evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_kvm_stat*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i8**, i8*** @ppc_book3s_hv_kvm_tp, align 8
  store i8** %10, i8*** %6, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.evlist*, %struct.evlist** %5, align 8
  %19 = call i32 @is_tracepoint_available(i8* %17, %struct.evlist* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %57

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %6, align 8
  br label %11

29:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i8**, i8*** @ppc_book3s_hv_kvm_tp, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** @kvm_events_tp, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i8**, i8*** @kvm_events_tp, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* null, i8** %51, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** @kvm_exit_reason, align 8
  %52 = load i32, i32* @hv_exit_reasons, align 4
  %53 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %54 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %56 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @is_tracepoint_available(i8*, %struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
