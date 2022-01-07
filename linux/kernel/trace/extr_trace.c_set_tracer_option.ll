; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_set_tracer_option.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_set_tracer_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.tracer* }
%struct.tracer = type { %struct.tracer_flags* }
%struct.tracer_flags = type { %struct.tracer_opt* }
%struct.tracer_opt = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i8*, i32)* @set_tracer_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracer_option(%struct.trace_array* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracer*, align 8
  %9 = alloca %struct.tracer_flags*, align 8
  %10 = alloca %struct.tracer_opt*, align 8
  %11 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = load %struct.tracer*, %struct.tracer** %13, align 8
  store %struct.tracer* %14, %struct.tracer** %8, align 8
  %15 = load %struct.tracer*, %struct.tracer** %8, align 8
  %16 = getelementptr inbounds %struct.tracer, %struct.tracer* %15, i32 0, i32 0
  %17 = load %struct.tracer_flags*, %struct.tracer_flags** %16, align 8
  store %struct.tracer_flags* %17, %struct.tracer_flags** %9, align 8
  store %struct.tracer_opt* null, %struct.tracer_opt** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %50, %3
  %19 = load %struct.tracer_flags*, %struct.tracer_flags** %9, align 8
  %20 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %19, i32 0, i32 0
  %21 = load %struct.tracer_opt*, %struct.tracer_opt** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %21, i64 %23
  %25 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %18
  %29 = load %struct.tracer_flags*, %struct.tracer_flags** %9, align 8
  %30 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %29, i32 0, i32 0
  %31 = load %struct.tracer_opt*, %struct.tracer_opt** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %31, i64 %33
  store %struct.tracer_opt* %34, %struct.tracer_opt** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.tracer_opt*, %struct.tracer_opt** %10, align 8
  %37 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strcmp(i8* %35, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %28
  %42 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %43 = load %struct.tracer*, %struct.tracer** %8, align 8
  %44 = getelementptr inbounds %struct.tracer, %struct.tracer* %43, i32 0, i32 0
  %45 = load %struct.tracer_flags*, %struct.tracer_flags** %44, align 8
  %46 = load %struct.tracer_opt*, %struct.tracer_opt** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @__set_tracer_option(%struct.trace_array* %42, %struct.tracer_flags* %45, %struct.tracer_opt* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @__set_tracer_option(%struct.trace_array*, %struct.tracer_flags*, %struct.tracer_opt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
