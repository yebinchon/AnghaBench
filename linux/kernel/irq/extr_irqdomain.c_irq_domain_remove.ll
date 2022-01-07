; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_remove.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, %struct.irq_domain*, i32, i32 }

@irq_domain_mutex = common dso_local global i32 0, align 4
@irq_default_domain = common dso_local global %struct.irq_domain* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Removed domain %s\0A\00", align 1
@IRQ_DOMAIN_NAME_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_domain_remove(%struct.irq_domain* %0) #0 {
  %2 = alloca %struct.irq_domain*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %2, align 8
  %3 = call i32 @mutex_lock(i32* @irq_domain_mutex)
  %4 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %5 = call i32 @debugfs_remove_domain_dir(%struct.irq_domain* %4)
  %6 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %7 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %6, i32 0, i32 3
  %8 = call i32 @radix_tree_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %18 = icmp eq %struct.irq_domain* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @irq_set_default_host(i32* null)
  br label %24

24:                                               ; preds = %22, %1
  %25 = call i32 @mutex_unlock(i32* @irq_domain_mutex)
  %26 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %27 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %26, i32 0, i32 1
  %28 = load %struct.irq_domain*, %struct.irq_domain** %27, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.irq_domain* %28)
  %30 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %31 = call i32 @irq_domain_get_of_node(%struct.irq_domain* %30)
  %32 = call i32 @of_node_put(i32 %31)
  %33 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %34 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IRQ_DOMAIN_NAME_ALLOCATED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %41 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %40, i32 0, i32 1
  %42 = load %struct.irq_domain*, %struct.irq_domain** %41, align 8
  %43 = call i32 @kfree(%struct.irq_domain* %42)
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  %46 = call i32 @kfree(%struct.irq_domain* %45)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @debugfs_remove_domain_dir(%struct.irq_domain*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @radix_tree_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irq_set_default_host(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.irq_domain*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @irq_domain_get_of_node(%struct.irq_domain*) #1

declare dso_local i32 @kfree(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
