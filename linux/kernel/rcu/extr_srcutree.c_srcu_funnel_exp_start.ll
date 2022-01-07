; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_funnel_exp_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_funnel_exp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i64, i32, %struct.srcu_struct* }
%struct.srcu_node = type { i64, i32, %struct.srcu_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*, %struct.srcu_node*, i64)* @srcu_funnel_exp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srcu_funnel_exp_start(%struct.srcu_struct* %0, %struct.srcu_node* %1, i64 %2) #0 {
  %4 = alloca %struct.srcu_struct*, align 8
  %5 = alloca %struct.srcu_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %4, align 8
  store %struct.srcu_node* %1, %struct.srcu_node** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %52, %3
  %9 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %10 = icmp ne %struct.srcu_node* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %13 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @rcu_seq_done(i32* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %19 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @READ_ONCE(i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @ULONG_CMP_GE(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %11
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %28 = bitcast %struct.srcu_node* %27 to %struct.srcu_struct*
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct* %28, i64 %29)
  %31 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %32 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @ULONG_CMP_GE(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %39 = bitcast %struct.srcu_node* %38 to %struct.srcu_struct*
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %39, i64 %40)
  br label %74

42:                                               ; preds = %26
  %43 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %44 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @WRITE_ONCE(i64 %45, i64 %46)
  %48 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %49 = bitcast %struct.srcu_node* %48 to %struct.srcu_struct*
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %49, i64 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load %struct.srcu_node*, %struct.srcu_node** %5, align 8
  %54 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %53, i32 0, i32 2
  %55 = load %struct.srcu_node*, %struct.srcu_node** %54, align 8
  store %struct.srcu_node* %55, %struct.srcu_node** %5, align 8
  br label %8

56:                                               ; preds = %8
  %57 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct* %57, i64 %58)
  %60 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %61 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @ULONG_CMP_LT(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %69 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %56
  %71 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %37, %25
  ret void
}

declare dso_local i64 @rcu_seq_done(i32*, i64) #1

declare dso_local i64 @ULONG_CMP_GE(i64, i64) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct*, i64) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
