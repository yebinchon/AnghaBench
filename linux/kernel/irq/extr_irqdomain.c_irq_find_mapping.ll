; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_find_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_find_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i64, i64, i32*, i32 }
%struct.irq_data = type { i64, i32 }

@irq_default_domain = common dso_local global %struct.irq_domain* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_find_mapping(%struct.irq_domain* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %8 = icmp eq %struct.irq_domain* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  store %struct.irq_domain* %10, %struct.irq_domain** %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = icmp eq %struct.irq_domain* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %66

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %22, i64 %23)
  store %struct.irq_data* %24, %struct.irq_data** %6, align 8
  %25 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %26 = icmp ne %struct.irq_data* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %27, %21
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %40 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %45 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %37
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %53 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %52, i32 0, i32 3
  %54 = load i64, i64* %5, align 8
  %55 = call %struct.irq_data* @radix_tree_lookup(i32* %53, i64 %54)
  store %struct.irq_data* %55, %struct.irq_data** %6, align 8
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %58 = icmp ne %struct.irq_data* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %61 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 0, %63 ]
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %43, %33, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.irq_data* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
