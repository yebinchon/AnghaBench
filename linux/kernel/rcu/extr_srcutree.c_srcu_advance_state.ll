; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_advance_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_advance_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32, i32, i32 }

@SRCU_STATE_IDLE = common dso_local global i32 0, align 4
@SRCU_STATE_SCAN1 = common dso_local global i32 0, align 4
@SRCU_STATE_SCAN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*)* @srcu_advance_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srcu_advance_state(%struct.srcu_struct* %0) #0 {
  %2 = alloca %struct.srcu_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %2, align 8
  %4 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %5 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %7, i32 0, i32 2
  %9 = call i32 @smp_load_acquire(i32* %8)
  %10 = call i32 @rcu_seq_state(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SRCU_STATE_IDLE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %16 = call i32 @spin_lock_irq_rcu_node(%struct.srcu_struct* %15)
  %17 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %18 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %21 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ULONG_CMP_GE(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %27 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rcu_seq_state(i32 %28)
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %32 = call i32 @spin_unlock_irq_rcu_node(%struct.srcu_struct* %31)
  %33 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %34 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %113

36:                                               ; preds = %14
  %37 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %38 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @READ_ONCE(i32 %39)
  %41 = call i32 @rcu_seq_state(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SRCU_STATE_IDLE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %47 = call i32 @srcu_gp_start(%struct.srcu_struct* %46)
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %50 = call i32 @spin_unlock_irq_rcu_node(%struct.srcu_struct* %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SRCU_STATE_IDLE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %56 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %113

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %61 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @READ_ONCE(i32 %62)
  %64 = call i32 @rcu_seq_state(i32 %63)
  %65 = load i32, i32* @SRCU_STATE_SCAN1, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %59
  %68 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %69 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = xor i32 1, %71
  store i32 %72, i32* %3, align 4
  %73 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @try_check_zero(%struct.srcu_struct* %73, i32 %74, i32 1)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %79 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %113

81:                                               ; preds = %67
  %82 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %83 = call i32 @srcu_flip(%struct.srcu_struct* %82)
  %84 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %85 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %84, i32 0, i32 2
  %86 = load i32, i32* @SRCU_STATE_SCAN2, align 4
  %87 = call i32 @rcu_seq_set_state(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %59
  %89 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %90 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @READ_ONCE(i32 %91)
  %93 = call i32 @rcu_seq_state(i32 %92)
  %94 = load i32, i32* @SRCU_STATE_SCAN2, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %88
  %97 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %98 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = xor i32 1, %100
  store i32 %101, i32* %3, align 4
  %102 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @try_check_zero(%struct.srcu_struct* %102, i32 %103, i32 2)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %96
  %107 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %108 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %113

110:                                              ; preds = %96
  %111 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %112 = call i32 @srcu_gp_end(%struct.srcu_struct* %111)
  br label %113

113:                                              ; preds = %25, %54, %77, %106, %110, %88
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_seq_state(i32) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @spin_lock_irq_rcu_node(%struct.srcu_struct*) #1

declare dso_local i64 @ULONG_CMP_GE(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irq_rcu_node(%struct.srcu_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @srcu_gp_start(%struct.srcu_struct*) #1

declare dso_local i32 @try_check_zero(%struct.srcu_struct*, i32, i32) #1

declare dso_local i32 @srcu_flip(%struct.srcu_struct*) #1

declare dso_local i32 @rcu_seq_set_state(i32*, i32) #1

declare dso_local i32 @srcu_gp_end(%struct.srcu_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
