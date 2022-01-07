; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_new_line_csv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_new_line_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 }
%struct.outstate = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, i8*)* @new_line_csv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_line_csv(%struct.perf_stat_config* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_stat_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.outstate*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.outstate*
  store %struct.outstate* %8, %struct.outstate** %5, align 8
  %9 = load %struct.outstate*, %struct.outstate** %5, align 8
  %10 = getelementptr inbounds %struct.outstate, %struct.outstate* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @fputc(i8 signext 10, i32 %11)
  %13 = load %struct.outstate*, %struct.outstate** %5, align 8
  %14 = getelementptr inbounds %struct.outstate, %struct.outstate* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.outstate*, %struct.outstate** %5, align 8
  %19 = getelementptr inbounds %struct.outstate, %struct.outstate* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.outstate*, %struct.outstate** %5, align 8
  %22 = getelementptr inbounds %struct.outstate, %struct.outstate* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %25 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %30 = load %struct.outstate*, %struct.outstate** %5, align 8
  %31 = getelementptr inbounds %struct.outstate, %struct.outstate* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.outstate*, %struct.outstate** %5, align 8
  %34 = getelementptr inbounds %struct.outstate, %struct.outstate* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.outstate*, %struct.outstate** %5, align 8
  %37 = getelementptr inbounds %struct.outstate, %struct.outstate* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @aggr_printout(%struct.perf_stat_config* %29, i32 %32, i32 %35, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %54, %28
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.outstate*, %struct.outstate** %5, align 8
  %43 = getelementptr inbounds %struct.outstate, %struct.outstate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %48 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.outstate*, %struct.outstate** %5, align 8
  %51 = getelementptr inbounds %struct.outstate, %struct.outstate* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fputs(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %40

57:                                               ; preds = %40
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @aggr_printout(%struct.perf_stat_config*, i32, i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
