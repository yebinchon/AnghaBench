; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_print.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stat_data = type { i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\0ACPU states statistics:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%-10s \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"state(ms)\00", align 1
@MAX_CSTATE_ENTRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"cstate-%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%-11s \00", align 1
@MAX_PSTATE_ENTRIES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"pstate-%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_CPU = common dso_local global i32 0, align 4
@stat_data = common dso_local global %struct.cpu_stat_data* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"CPU-%-6d \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%-11ld \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_stat_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_stat_print() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i8], align 1
  %4 = alloca %struct.cpu_stat_data*, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MAX_CSTATE_ENTRIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %8

21:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @MAX_PSTATE_ENTRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %22

35:                                               ; preds = %22
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %85, %35
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @MAX_CPU, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load %struct.cpu_stat_data*, %struct.cpu_stat_data** @stat_data, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cpu_stat_data, %struct.cpu_stat_data* %42, i64 %44
  store %struct.cpu_stat_data* %45, %struct.cpu_stat_data** %4, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %62, %41
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @MAX_CSTATE_ENTRIES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.cpu_stat_data*, %struct.cpu_stat_data** %4, align 8
  %54 = getelementptr inbounds %struct.cpu_stat_data, %struct.cpu_stat_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 1000000
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @MAX_PSTATE_ENTRIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.cpu_stat_data*, %struct.cpu_stat_data** %4, align 8
  %72 = getelementptr inbounds %struct.cpu_stat_data, %struct.cpu_stat_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 1000000
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %66

83:                                               ; preds = %66
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %37

88:                                               ; preds = %37
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
