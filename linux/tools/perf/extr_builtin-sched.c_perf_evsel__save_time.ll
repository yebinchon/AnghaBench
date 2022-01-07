; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_evsel__save_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_evsel__save_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.evsel_runtime = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, i8*, i32)* @perf_evsel__save_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evsel__save_time(%struct.evsel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evsel_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = call %struct.evsel_runtime* @perf_evsel__get_runtime(%struct.evsel* %11)
  store %struct.evsel_runtime* %12, %struct.evsel_runtime** %7, align 8
  %13 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %14 = icmp eq %struct.evsel_runtime* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %80

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %19 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %24 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %27, label %72

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @__roundup_pow_of_two(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %32 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = bitcast i8** %33 to i8*
  store i8* %34, i8** %10, align 8
  %35 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @realloc(i8** %37, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %27
  br label %80

46:                                               ; preds = %27
  %47 = load i8*, i8** %10, align 8
  %48 = bitcast i8* %47 to i8**
  %49 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %50 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %49, i32 0, i32 1
  store i8** %48, i8*** %50, align 8
  %51 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %52 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %65, %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* null, i8** %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %22
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.evsel_runtime*, %struct.evsel_runtime** %7, align 8
  %75 = getelementptr inbounds %struct.evsel_runtime, %struct.evsel_runtime* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %73, i8** %79, align 8
  br label %80

80:                                               ; preds = %72, %45, %15
  ret void
}

declare dso_local %struct.evsel_runtime* @perf_evsel__get_runtime(%struct.evsel*) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i8* @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
