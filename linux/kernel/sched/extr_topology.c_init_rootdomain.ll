; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_init_rootdomain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_init_rootdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root_domain = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rto_push_irq_work_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.root_domain*)* @init_rootdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rootdomain(%struct.root_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.root_domain*, align 8
  store %struct.root_domain* %0, %struct.root_domain** %3, align 8
  %4 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %5 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %4, i32 0, i32 1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @zalloc_cpumask_var(i32* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %12 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %11, i32 0, i32 2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @zalloc_cpumask_var(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %66

17:                                               ; preds = %10
  %18 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %19 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @zalloc_cpumask_var(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %61

24:                                               ; preds = %17
  %25 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %26 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %25, i32 0, i32 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @zalloc_cpumask_var(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %33 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %32, i32 0, i32 7
  %34 = call i32 @init_dl_bw(i32* %33)
  %35 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %36 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %35, i32 0, i32 5
  %37 = call i64 @cpudl_init(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %42 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %41, i32 0, i32 6
  %43 = call i64 @cpupri_init(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %74

47:                                               ; preds = %45
  %48 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %49 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %48, i32 0, i32 5
  %50 = call i32 @cpudl_cleanup(i32* %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %53 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @free_cpumask_var(i32 %54)
  br label %56

56:                                               ; preds = %51, %30
  %57 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %58 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @free_cpumask_var(i32 %59)
  br label %61

61:                                               ; preds = %56, %23
  %62 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %63 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free_cpumask_var(i32 %64)
  br label %66

66:                                               ; preds = %61, %16
  %67 = load %struct.root_domain*, %struct.root_domain** %3, align 8
  %68 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @free_cpumask_var(i32 %69)
  br label %71

71:                                               ; preds = %66, %9
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %46
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @init_dl_bw(i32*) #1

declare dso_local i64 @cpudl_init(i32*) #1

declare dso_local i64 @cpupri_init(i32*) #1

declare dso_local i32 @cpudl_cleanup(i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
