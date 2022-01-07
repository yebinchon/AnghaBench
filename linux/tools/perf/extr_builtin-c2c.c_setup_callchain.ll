; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.evlist = type { i32 }

@CALLCHAIN_NONE = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@CALLCHAIN_DWARF = common dso_local global i32 0, align 4
@dwarf_callchain_users = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@CALLCHAIN_LBR = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@CALLCHAIN_FP = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CHAIN_NONE = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't register callchain params.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @setup_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_callchain(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %6 = load %struct.evlist*, %struct.evlist** %3, align 8
  %7 = call i32 @perf_evlist__combined_sample_type(%struct.evlist* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @CALLCHAIN_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @CALLCHAIN_DWARF, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* @dwarf_callchain_users, align 4
  br label %36

20:                                               ; preds = %13, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @CALLCHAIN_LBR, align 4
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @CALLCHAIN_FP, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 3), align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 0), align 8
  %41 = load i64, i64* @CHAIN_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CALLCHAIN_NONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %48 = call i64 @callchain_register_param(%struct.TYPE_5__* @callchain_param)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %43, %39, %36
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 2), align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @perf_evlist__combined_sample_type(%struct.evlist*) #1

declare dso_local i64 @callchain_register_param(%struct.TYPE_5__*) #1

declare dso_local i32 @ui__error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
