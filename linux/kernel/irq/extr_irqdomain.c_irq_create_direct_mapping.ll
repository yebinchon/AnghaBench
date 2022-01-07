; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_create_direct_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_create_direct_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@irq_default_domain = common dso_local global %struct.irq_domain* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"create_direct virq allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ERROR: no free irqs available below %i maximum\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"create_direct obtained virq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_create_direct_mapping(%struct.irq_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = icmp eq %struct.irq_domain* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  store %struct.irq_domain* %9, %struct.irq_domain** %3, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %12 = call %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* %11)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_node_to_nid(%struct.device_node* %13)
  %15 = call i32 @irq_alloc_desc_from(i32 1, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %28 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @irq_free_desc(i32 %31)
  store i32 0, i32* %2, align 4
  br label %46

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @irq_domain_associate(%struct.irq_domain* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @irq_free_desc(i32 %42)
  store i32 0, i32* %2, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %41, %26, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain*) #1

declare dso_local i32 @irq_alloc_desc_from(i32, i32) #1

declare dso_local i32 @of_node_to_nid(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @irq_free_desc(i32) #1

declare dso_local i64 @irq_domain_associate(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
