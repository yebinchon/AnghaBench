; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script__setup_sample_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script__setup_sample_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_script = type { %struct.perf_session* }
%struct.perf_session = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@CALLCHAIN_DWARF = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dwarf_callchain_users = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@CALLCHAIN_LBR = common dso_local global i32 0, align 4
@CALLCHAIN_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_script*)* @script__setup_sample_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script__setup_sample_type(%struct.perf_script* %0) #0 {
  %2 = alloca %struct.perf_script*, align 8
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_script* %0, %struct.perf_script** %2, align 8
  %5 = load %struct.perf_script*, %struct.perf_script** %2, align 8
  %6 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %5, i32 0, i32 0
  %7 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  store %struct.perf_session* %7, %struct.perf_session** %3, align 8
  %8 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %9 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @perf_evlist__combined_sample_type(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @CALLCHAIN_DWARF, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 4
  store i32 1, i32* @dwarf_callchain_users, align 4
  br label %39

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @CALLCHAIN_LBR, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @CALLCHAIN_FP, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

declare dso_local i32 @perf_evlist__combined_sample_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
