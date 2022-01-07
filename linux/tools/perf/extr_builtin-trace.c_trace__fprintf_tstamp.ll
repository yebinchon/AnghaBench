; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"         ? \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trace*, i64, i32*)* @trace__fprintf_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trace__fprintf_tstamp(%struct.trace* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.trace* %0, %struct.trace** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.trace*, %struct.trace** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @__trace__fprintf_tstamp(%struct.trace* %11, i64 %12, i32* %13)
  store i64 %14, i64* %4, align 8
  br label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @fprintf(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

declare dso_local i64 @__trace__fprintf_tstamp(%struct.trace*, i64, i32*) #1

declare dso_local i64 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
