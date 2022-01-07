; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_dispose_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_dispose_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_dispose_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.irq_data* @irq_get_irq_data(i32 %5)
  store %struct.irq_data* %6, %struct.irq_data** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = icmp ne %struct.irq_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  br label %36

13:                                               ; preds = %9
  %14 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  store %struct.irq_domain* %16, %struct.irq_domain** %4, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %18 = icmp eq %struct.irq_domain* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %25 = call i64 @irq_domain_is_hierarchy(%struct.irq_domain* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @irq_domain_free_irqs(i32 %28, i32 1)
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @irq_domain_disassociate(%struct.irq_domain* %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @irq_free_desc(i32 %34)
  br label %36

36:                                               ; preds = %12, %22, %30, %27
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @irq_domain_is_hierarchy(%struct.irq_domain*) #1

declare dso_local i32 @irq_domain_free_irqs(i32, i32) #1

declare dso_local i32 @irq_domain_disassociate(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_free_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
