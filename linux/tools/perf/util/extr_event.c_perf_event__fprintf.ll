; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"PERF_RECORD_%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @perf_event__name(i32 %10)
  %12 = call i64 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i64 %12, i64* %5, align 8
  %13 = load %union.perf_event*, %union.perf_event** %3, align 8
  %14 = bitcast %union.perf_event* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %83 [
    i32 138, label %17
    i32 136, label %23
    i32 137, label %23
    i32 132, label %29
    i32 130, label %35
    i32 131, label %41
    i32 140, label %47
    i32 135, label %53
    i32 129, label %59
    i32 128, label %59
    i32 133, label %65
    i32 134, label %71
    i32 139, label %77
  ]

17:                                               ; preds = %2
  %18 = load %union.perf_event*, %union.perf_event** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @perf_event__fprintf_comm(%union.perf_event* %18, i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %88

23:                                               ; preds = %2, %2
  %24 = load %union.perf_event*, %union.perf_event** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @perf_event__fprintf_task(%union.perf_event* %24, i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %88

29:                                               ; preds = %2
  %30 = load %union.perf_event*, %union.perf_event** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @perf_event__fprintf_mmap(%union.perf_event* %30, i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %88

35:                                               ; preds = %2
  %36 = load %union.perf_event*, %union.perf_event** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @perf_event__fprintf_namespaces(%union.perf_event* %36, i32* %37)
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %88

41:                                               ; preds = %2
  %42 = load %union.perf_event*, %union.perf_event** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @perf_event__fprintf_mmap2(%union.perf_event* %42, i32* %43)
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %88

47:                                               ; preds = %2
  %48 = load %union.perf_event*, %union.perf_event** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @perf_event__fprintf_aux(%union.perf_event* %48, i32* %49)
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %88

53:                                               ; preds = %2
  %54 = load %union.perf_event*, %union.perf_event** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @perf_event__fprintf_itrace_start(%union.perf_event* %54, i32* %55)
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %88

59:                                               ; preds = %2, %2
  %60 = load %union.perf_event*, %union.perf_event** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @perf_event__fprintf_switch(%union.perf_event* %60, i32* %61)
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %88

65:                                               ; preds = %2
  %66 = load %union.perf_event*, %union.perf_event** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @perf_event__fprintf_lost(%union.perf_event* %66, i32* %67)
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %88

71:                                               ; preds = %2
  %72 = load %union.perf_event*, %union.perf_event** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @perf_event__fprintf_ksymbol(%union.perf_event* %72, i32* %73)
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %88

77:                                               ; preds = %2
  %78 = load %union.perf_event*, %union.perf_event** %3, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @perf_event__fprintf_bpf(%union.perf_event* %78, i32* %79)
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %5, align 8
  br label %88

83:                                               ; preds = %2
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @perf_event__name(i32) #1

declare dso_local i64 @perf_event__fprintf_comm(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_task(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_mmap(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_namespaces(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_mmap2(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_aux(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_itrace_start(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_switch(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_lost(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_ksymbol(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_bpf(%union.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
