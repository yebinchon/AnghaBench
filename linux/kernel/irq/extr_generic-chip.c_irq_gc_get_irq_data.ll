; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_get_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_get_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_data* (%struct.irq_chip_generic*)* @irq_gc_get_irq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_data* @irq_gc_get_irq_data(%struct.irq_chip_generic* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %3, align 8
  %5 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %6 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %11 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.irq_data* @irq_get_irq_data(i32 %12)
  store %struct.irq_data* %13, %struct.irq_data** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %16 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.irq_data* null, %struct.irq_data** %2, align 8
  br label %41

20:                                               ; preds = %14
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %22 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %25 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %28 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__ffs(i32 %29)
  %31 = add i32 %26, %30
  %32 = call i32 @irq_find_mapping(i32 %23, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.irq_data* @irq_get_irq_data(i32 %36)
  br label %39

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi %struct.irq_data* [ %37, %35 ], [ null, %38 ]
  store %struct.irq_data* %40, %struct.irq_data** %2, align 8
  br label %41

41:                                               ; preds = %39, %19, %9
  %42 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  ret %struct.irq_data* %42
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
