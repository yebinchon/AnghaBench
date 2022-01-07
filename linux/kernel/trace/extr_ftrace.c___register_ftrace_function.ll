; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c___register_ftrace_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c___register_ftrace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32, i32, i32 }

@FTRACE_OPS_FL_DELETED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_SAVE_REGS = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_DYNAMIC = common dso_local global i32 0, align 4
@ftrace_ops_list = common dso_local global i32 0, align 4
@ftrace_pid_func = common dso_local global i32 0, align 4
@ftrace_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_ftrace_function(%struct.ftrace_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_ops*, align 8
  store %struct.ftrace_ops* %0, %struct.ftrace_ops** %3, align 8
  %4 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %5 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FTRACE_OPS_FL_DELETED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %15 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %13
  %25 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %26 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FTRACE_OPS_FL_SAVE_REGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %33 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %31, %24
  %42 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %43 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @FTRACE_OPS_FL_SAVE_REGS, align 4
  %50 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %51 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %56 = ptrtoint %struct.ftrace_ops* %55 to i64
  %57 = call i32 @core_kernel_data(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @FTRACE_OPS_FL_DYNAMIC, align 4
  %61 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %62 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %67 = call i32 @add_ftrace_ops(i32* @ftrace_ops_list, %struct.ftrace_ops* %66)
  %68 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %69 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %72 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %74 = call i64 @ftrace_pids_enabled(%struct.ftrace_ops* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @ftrace_pid_func, align 4
  %78 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %79 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %65
  %81 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %82 = call i32 @ftrace_update_trampoline(%struct.ftrace_ops* %81)
  %83 = load i64, i64* @ftrace_enabled, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (...) @update_ftrace_function()
  br label %87

87:                                               ; preds = %85, %80
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %38, %21, %10
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @core_kernel_data(i64) #1

declare dso_local i32 @add_ftrace_ops(i32*, %struct.ftrace_ops*) #1

declare dso_local i64 @ftrace_pids_enabled(%struct.ftrace_ops*) #1

declare dso_local i32 @ftrace_update_trampoline(%struct.ftrace_ops*) #1

declare dso_local i32 @update_ftrace_function(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
