; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_add_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_add_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.irq_domain_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @irq_domain_add_legacy(%struct.device_node* %0, i32 %1, i32 %2, i32 %3, %struct.irq_domain_ops* %4, i8* %5) #0 {
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_domain_ops*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.irq_domain*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.irq_domain_ops* %4, %struct.irq_domain_ops** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i32 @of_node_to_fwnode(%struct.device_node* %14)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %19, %20
  %22 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call %struct.irq_domain* @__irq_domain_add(i32 %15, i32 %18, i32 %21, i32 0, %struct.irq_domain_ops* %22, i8* %23)
  store %struct.irq_domain* %24, %struct.irq_domain** %13, align 8
  %25 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %26 = icmp ne %struct.irq_domain* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @irq_domain_associate_many(%struct.irq_domain* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %6
  %34 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  ret %struct.irq_domain* %34
}

declare dso_local %struct.irq_domain* @__irq_domain_add(i32, i32, i32, i32, %struct.irq_domain_ops*, i8*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_associate_many(%struct.irq_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
