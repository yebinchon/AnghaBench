; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_nmi_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_nmi_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { %struct.irq_chip* }
%struct.irq_chip = type { i32 (%struct.irq_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @irq_nmi_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_nmi_teardown(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %6 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %5)
  store %struct.irq_data* %6, %struct.irq_data** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  store %struct.irq_chip* %9, %struct.irq_chip** %4, align 8
  %10 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %11 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %10, i32 0, i32 0
  %12 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %11, align 8
  %13 = icmp ne i32 (%struct.irq_data*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %16 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %15, i32 0, i32 0
  %17 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %16, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = call i32 %17(%struct.irq_data* %18)
  br label %20

20:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
