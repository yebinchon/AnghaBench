; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_do_new_line_std.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_do_new_line_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i64 }
%struct.outstate = type { i32, i32, i32, i32, i32 }

@AGGR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"                                                 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.outstate*)* @do_new_line_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_new_line_std(%struct.perf_stat_config* %0, %struct.outstate* %1) #0 {
  %3 = alloca %struct.perf_stat_config*, align 8
  %4 = alloca %struct.outstate*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %3, align 8
  store %struct.outstate* %1, %struct.outstate** %4, align 8
  %5 = load %struct.outstate*, %struct.outstate** %4, align 8
  %6 = getelementptr inbounds %struct.outstate, %struct.outstate* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fputc(i8 signext 10, i32 %7)
  %9 = load %struct.outstate*, %struct.outstate** %4, align 8
  %10 = getelementptr inbounds %struct.outstate, %struct.outstate* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.outstate*, %struct.outstate** %4, align 8
  %13 = getelementptr inbounds %struct.outstate, %struct.outstate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fputs(i32 %11, i32 %14)
  %16 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %17 = load %struct.outstate*, %struct.outstate** %4, align 8
  %18 = getelementptr inbounds %struct.outstate, %struct.outstate* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.outstate*, %struct.outstate** %4, align 8
  %21 = getelementptr inbounds %struct.outstate, %struct.outstate* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.outstate*, %struct.outstate** %4, align 8
  %24 = getelementptr inbounds %struct.outstate, %struct.outstate* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @aggr_printout(%struct.perf_stat_config* %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %28 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AGGR_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.outstate*, %struct.outstate** %4, align 8
  %34 = getelementptr inbounds %struct.outstate, %struct.outstate* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.outstate*, %struct.outstate** %4, align 8
  %39 = getelementptr inbounds %struct.outstate, %struct.outstate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @aggr_printout(%struct.perf_stat_config*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
