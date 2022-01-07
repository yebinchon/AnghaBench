; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_update_bus_token.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_update_bus_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, i8*, i32 }

@irq_domain_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@IRQ_DOMAIN_NAME_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_domain_update_bus_token(%struct.irq_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %54

12:                                               ; preds = %2
  %13 = call i32 @mutex_lock(i32* @irq_domain_mutex)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %19 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @kasprintf(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = call i32 @mutex_unlock(i32* @irq_domain_mutex)
  br label %54

27:                                               ; preds = %12
  %28 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %29 = call i32 @debugfs_remove_domain_dir(%struct.irq_domain* %28)
  %30 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %31 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IRQ_DOMAIN_NAME_ALLOCATED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %38 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @kfree(i8* %39)
  br label %47

41:                                               ; preds = %27
  %42 = load i32, i32* @IRQ_DOMAIN_NAME_ALLOCATED, align 4
  %43 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %44 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %50 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %52 = call i32 @debugfs_add_domain_dir(%struct.irq_domain* %51)
  %53 = call i32 @mutex_unlock(i32* @irq_domain_mutex)
  br label %54

54:                                               ; preds = %47, %25, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @debugfs_remove_domain_dir(%struct.irq_domain*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @debugfs_add_domain_dir(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
