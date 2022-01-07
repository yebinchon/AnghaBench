; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_check_expr_operands.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_check_expr_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.hist_field = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HIST_FIELD_FL_VAR_REF = common dso_local global i64 0, align 8
@HIST_FIELD_FL_ALIAS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i64 0, align 8
@HIST_ERR_TIMESTAMP_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, %struct.hist_field*, %struct.hist_field*)* @check_expr_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expr_operands(%struct.trace_array* %0, %struct.hist_field* %1, %struct.hist_field* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca %struct.hist_field*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store %struct.hist_field* %1, %struct.hist_field** %6, align 8
  store %struct.hist_field* %2, %struct.hist_field** %7, align 8
  %12 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %13 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %16 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @HIST_FIELD_FL_VAR_REF, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @HIST_FIELD_FL_ALIAS, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22, %3
  %28 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %29 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %33 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.hist_field* @find_var_field(i32 %31, i32 %34)
  store %struct.hist_field* %35, %struct.hist_field** %10, align 8
  %36 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %37 = icmp ne %struct.hist_field* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %88

41:                                               ; preds = %27
  %42 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %43 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %41, %22
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @HIST_FIELD_FL_VAR_REF, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @HIST_FIELD_FL_ALIAS, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50, %45
  %56 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %57 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %61 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.hist_field* @find_var_field(i32 %59, i32 %62)
  store %struct.hist_field* %63, %struct.hist_field** %11, align 8
  %64 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %65 = icmp ne %struct.hist_field* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %88

69:                                               ; preds = %55
  %70 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %71 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %69, %50
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP_USECS, align 8
  %76 = and i64 %74, %75
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP_USECS, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %83 = load i32, i32* @HIST_ERR_TIMESTAMP_MISMATCH, align 4
  %84 = call i32 @hist_err(%struct.trace_array* %82, i32 %83, i32 0)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %81, %66, %38
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.hist_field* @find_var_field(i32, i32) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
