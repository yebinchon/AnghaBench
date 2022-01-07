; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c___irq_move_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c___irq_move_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__irq_move_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call i32 @irq_data_to_desc(%struct.irq_data* %4)
  %6 = call %struct.irq_data* @irq_desc_get_irq_data(i32 %5)
  store %struct.irq_data* %6, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call i32 @irqd_irq_disabled(%struct.irq_data* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = call i32 @irqd_irq_masked(%struct.irq_data* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %21, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %24 = call i32 %22(%struct.irq_data* %23)
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %27 = call i32 @irq_move_masked_irq(%struct.irq_data* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %34, align 8
  %36 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %37 = call i32 %35(%struct.irq_data* %36)
  br label %38

38:                                               ; preds = %11, %30, %25
  ret void
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @irq_data_to_desc(%struct.irq_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irqd_irq_disabled(%struct.irq_data*) #1

declare dso_local i32 @irqd_irq_masked(%struct.irq_data*) #1

declare dso_local i32 @irq_move_masked_irq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
