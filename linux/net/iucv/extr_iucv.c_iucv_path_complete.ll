; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.iucv_path*, i32)* }
%struct.iucv_irq_data = type { i32 }
%struct.iucv_path_complete = type { i64, i32, i32 }

@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_irq_data*)* @iucv_path_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_path_complete(%struct.iucv_irq_data* %0) #0 {
  %2 = alloca %struct.iucv_irq_data*, align 8
  %3 = alloca %struct.iucv_path_complete*, align 8
  %4 = alloca %struct.iucv_path*, align 8
  store %struct.iucv_irq_data* %0, %struct.iucv_irq_data** %2, align 8
  %5 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %2, align 8
  %6 = bitcast %struct.iucv_irq_data* %5 to i8*
  %7 = bitcast i8* %6 to %struct.iucv_path_complete*
  store %struct.iucv_path_complete* %7, %struct.iucv_path_complete** %3, align 8
  %8 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %9 = load %struct.iucv_path_complete*, %struct.iucv_path_complete** %3, align 8
  %10 = getelementptr inbounds %struct.iucv_path_complete, %struct.iucv_path_complete* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %8, i64 %11
  %13 = load %struct.iucv_path*, %struct.iucv_path** %12, align 8
  store %struct.iucv_path* %13, %struct.iucv_path** %4, align 8
  %14 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %15 = icmp ne %struct.iucv_path* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.iucv_path_complete*, %struct.iucv_path_complete** %3, align 8
  %18 = getelementptr inbounds %struct.iucv_path_complete, %struct.iucv_path_complete* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %21 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %24 = icmp ne %struct.iucv_path* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %27 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %32 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.iucv_path*, i32)* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %39 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %41, align 8
  %43 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %44 = load %struct.iucv_path_complete*, %struct.iucv_path_complete** %3, align 8
  %45 = getelementptr inbounds %struct.iucv_path_complete, %struct.iucv_path_complete* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %42(%struct.iucv_path* %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %30, %25, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
