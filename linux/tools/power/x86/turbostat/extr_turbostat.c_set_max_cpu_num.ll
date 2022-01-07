; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_set_max_cpu_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_set_max_cpu_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"/sys/devices/system/cpu/cpu0/topology/thread_siblings\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lx,\00", align 1
@BITMASK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_max_cpu_num() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  %3 = call i32* @fopen_or_die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @fscanf(i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %2)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i64, i64* @BITMASK_SIZE, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  br label %4

12:                                               ; preds = %4
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @fclose(i32* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32* @fopen_or_die(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
