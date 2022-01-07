; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_add_simple.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_add_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.irq_domain_ops = type { i32 }

@CONFIG_SPARSE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Cannot allocate irq_descs @ IRQ%d, assuming pre-allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @irq_domain_add_simple(%struct.device_node* %0, i32 %1, i32 %2, %struct.irq_domain_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_domain_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.irq_domain*, align 8
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.irq_domain_ops* %3, %struct.irq_domain_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i32 @of_node_to_fwnode(%struct.device_node* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.irq_domain* @__irq_domain_add(i32 %15, i32 %16, i32 %17, i32 0, %struct.irq_domain_ops* %18, i8* %19)
  store %struct.irq_domain* %20, %struct.irq_domain** %12, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %12, align 8
  %22 = icmp ne %struct.irq_domain* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.irq_domain* null, %struct.irq_domain** %6, align 8
  br label %51

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* @CONFIG_SPARSE_IRQ, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 @of_node_to_nid(%struct.device_node* %35)
  %37 = call i32 @irq_alloc_descs(i32 %32, i32 %33, i32 %34, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %31
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.irq_domain*, %struct.irq_domain** %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @irq_domain_associate_many(%struct.irq_domain* %45, i32 %46, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %44, %24
  %50 = load %struct.irq_domain*, %struct.irq_domain** %12, align 8
  store %struct.irq_domain* %50, %struct.irq_domain** %6, align 8
  br label %51

51:                                               ; preds = %49, %23
  %52 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  ret %struct.irq_domain* %52
}

declare dso_local %struct.irq_domain* @__irq_domain_add(i32, i32, i32, i32, %struct.irq_domain_ops*, i8*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @of_node_to_nid(%struct.device_node*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @irq_domain_associate_many(%struct.irq_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
