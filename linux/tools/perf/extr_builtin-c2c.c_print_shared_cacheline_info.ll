; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_print_shared_cacheline_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_print_shared_cacheline_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.c2c_stats }
%struct.c2c_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@c2c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"    Global Shared Cache Line Event Information   \0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"  Total Shared Cache Lines          : %10d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"  Load HITs on shared lines         : %10d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"  Fill Buffer Hits on shared lines  : %10d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"  L1D hits on shared lines          : %10d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"  L2D hits on shared lines          : %10d\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"  LLC hits on shared lines          : %10d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"  Locked Access on shared lines     : %10d\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"  Store HITs on shared lines        : %10d\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"  Store L1D hits on shared lines    : %10d\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"  Total Merged records              : %10d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_shared_cacheline_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_shared_cacheline_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.c2c_stats*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.c2c_stats* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 1), %struct.c2c_stats** %3, align 8
  %5 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %6 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %9 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 0), align 4
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %23 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %28 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %33 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %38 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %43 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %46 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %52 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %57 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %62 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %68 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
