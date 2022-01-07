; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_snapshot_proc_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_snapshot_proc_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@snapshot_proc_interrupts.fp = internal global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"/proc/interrupts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" CPU%d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/proc/interrupts: cpu%d: > %d\00", align 1
@irq_column_2_cpu = common dso_local global i32* null, align 8
@irqs_per_cpu = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_proc_interrupts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32* @fopen_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** @snapshot_proc_interrupts.fp, align 8
  br label %16

13:                                               ; preds = %0
  %14 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %15 = call i32 @rewind(i32* %14)
  br label %16

16:                                               ; preds = %13, %11
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %23 = call i32 (i32*, i8*, ...) @fscanf(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %48

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 4
  %34 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33)
  store i32 1, i32* %1, align 4
  br label %92

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** @irq_column_2_cpu, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32*, i32** @irqs_per_cpu, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %17

48:                                               ; preds = %26, %17
  br label %49

49:                                               ; preds = %48, %90
  %50 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %52 = call i32 (i32*, i8*, ...) @fscanf(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %91

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %63 = call i32 (i32*, i8*, ...) @fscanf(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %83

67:                                               ; preds = %61
  %68 = load i32*, i32** @irq_column_2_cpu, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** @irqs_per_cpu, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %57

83:                                               ; preds = %66, %57
  br label %84

84:                                               ; preds = %89, %83
  %85 = load i32*, i32** @snapshot_proc_interrupts.fp, align 8
  %86 = call signext i8 @getc(i32* %85)
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 10
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %84

90:                                               ; preds = %84
  br label %49

91:                                               ; preds = %55
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %31
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32* @fopen_or_die(i8*, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local signext i8 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
