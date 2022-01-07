; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_allocate_irq_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_allocate_irq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@irq_column_2_cpu = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"calloc %d\00", align 1
@irqs_per_cpu = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @allocate_irq_buffers() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 8
  %2 = call i8* @calloc(i64 %1, i32 4)
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** @irq_column_2_cpu, align 8
  %4 = load i32*, i32** @irq_column_2_cpu, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 8
  %8 = call i32 @err(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, 1
  %12 = call i8* @calloc(i64 %11, i32 4)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @irqs_per_cpu, align 8
  %14 = load i32*, i32** @irqs_per_cpu, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @err(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %9
  ret void
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
