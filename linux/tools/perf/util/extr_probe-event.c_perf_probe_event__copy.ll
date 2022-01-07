; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_perf_probe_event__copy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_perf_probe_event__copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, i32*, i32, i32, i8*, i8*, i8* }

@out_err = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_probe_event__copy(%struct.perf_probe_event* %0, %struct.perf_probe_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_probe_event*, align 8
  %5 = alloca %struct.perf_probe_event*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %4, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %5, align 8
  %7 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %8 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %7, i32 0, i32 6
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* @out_err, align 4
  %11 = call i8* @strdup_or_goto(i8* %9, i32 %10)
  %12 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %14, i32 0, i32 5
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @out_err, align 4
  %18 = call i8* @strdup_or_goto(i8* %16, i32 %17)
  %19 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %22 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @out_err, align 4
  %25 = call i8* @strdup_or_goto(i8* %23, i32 %24)
  %26 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %29 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %32 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %34 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %33, i32 0, i32 2
  %35 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %36 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %35, i32 0, i32 2
  %37 = call i64 @perf_probe_point__copy(i32* %34, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %88

40:                                               ; preds = %2
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32* @zalloc(i32 %46)
  %48 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %49 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  br label %88

55:                                               ; preds = %40
  %56 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %57 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %60 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %84, %55
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %64 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %69 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %75 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @perf_probe_arg__copy(i32* %73, i32* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %88

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %61

87:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %93

88:                                               ; preds = %82, %54, %39
  %89 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %90 = call i32 @clear_perf_probe_event(%struct.perf_probe_event* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %87
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @strdup_or_goto(i8*, i32) #1

declare dso_local i64 @perf_probe_point__copy(i32*, i32*) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i64 @perf_probe_arg__copy(i32*, i32*) #1

declare dso_local i32 @clear_perf_probe_event(%struct.perf_probe_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
