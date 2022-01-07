; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_rq_attach_root.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_rq_attach_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32, i32, %struct.root_domain* }
%struct.root_domain = type { i32, i32, i32, i32 }

@cpu_active_mask = common dso_local global i32 0, align 4
@free_rootdomain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rq_attach_root(%struct.rq* %0, %struct.root_domain* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.root_domain*, align 8
  %5 = alloca %struct.root_domain*, align 8
  %6 = alloca i64, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.root_domain* %1, %struct.root_domain** %4, align 8
  store %struct.root_domain* null, %struct.root_domain** %5, align 8
  %7 = load %struct.rq*, %struct.rq** %3, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rq*, %struct.rq** %3, align 8
  %12 = getelementptr inbounds %struct.rq, %struct.rq* %11, i32 0, i32 2
  %13 = load %struct.root_domain*, %struct.root_domain** %12, align 8
  %14 = icmp ne %struct.root_domain* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.rq*, %struct.rq** %3, align 8
  %17 = getelementptr inbounds %struct.rq, %struct.rq* %16, i32 0, i32 2
  %18 = load %struct.root_domain*, %struct.root_domain** %17, align 8
  store %struct.root_domain* %18, %struct.root_domain** %5, align 8
  %19 = load %struct.rq*, %struct.rq** %3, align 8
  %20 = getelementptr inbounds %struct.rq, %struct.rq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %23 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @cpumask_test_cpu(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.rq*, %struct.rq** %3, align 8
  %29 = call i32 @set_rq_offline(%struct.rq* %28)
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.rq*, %struct.rq** %3, align 8
  %32 = getelementptr inbounds %struct.rq, %struct.rq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %35 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpumask_clear_cpu(i32 %33, i32 %36)
  %38 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %39 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %38, i32 0, i32 2
  %40 = call i32 @atomic_dec_and_test(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store %struct.root_domain* null, %struct.root_domain** %5, align 8
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.root_domain*, %struct.root_domain** %4, align 8
  %46 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %45, i32 0, i32 2
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.root_domain*, %struct.root_domain** %4, align 8
  %49 = load %struct.rq*, %struct.rq** %3, align 8
  %50 = getelementptr inbounds %struct.rq, %struct.rq* %49, i32 0, i32 2
  store %struct.root_domain* %48, %struct.root_domain** %50, align 8
  %51 = load %struct.rq*, %struct.rq** %3, align 8
  %52 = getelementptr inbounds %struct.rq, %struct.rq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.root_domain*, %struct.root_domain** %4, align 8
  %55 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpumask_set_cpu(i32 %53, i32 %56)
  %58 = load %struct.rq*, %struct.rq** %3, align 8
  %59 = getelementptr inbounds %struct.rq, %struct.rq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @cpu_active_mask, align 4
  %62 = call i64 @cpumask_test_cpu(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load %struct.rq*, %struct.rq** %3, align 8
  %66 = call i32 @set_rq_online(%struct.rq* %65)
  br label %67

67:                                               ; preds = %64, %44
  %68 = load %struct.rq*, %struct.rq** %3, align 8
  %69 = getelementptr inbounds %struct.rq, %struct.rq* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %73 = icmp ne %struct.root_domain* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %76 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %75, i32 0, i32 0
  %77 = load i32, i32* @free_rootdomain, align 4
  %78 = call i32 @call_rcu(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @set_rq_offline(%struct.rq*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @set_rq_online(%struct.rq*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
