; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c___call_srcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c___call_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32 }
%struct.rcu_head = type { i32 }
%struct.srcu_data = type { i64, i64, i32, i32 }

@srcu_leak_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"call_srcu(): Leaked duplicate callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*, %struct.rcu_head*, i32, i32)* @__call_srcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__call_srcu(%struct.srcu_struct* %0, %struct.rcu_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.srcu_struct*, align 8
  %6 = alloca %struct.rcu_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.srcu_data*, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %5, align 8
  store %struct.rcu_head* %1, %struct.rcu_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %16 = call i32 @check_init_srcu_struct(%struct.srcu_struct* %15)
  %17 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %18 = call i64 @debug_rcu_head_queue(%struct.rcu_head* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %22 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @srcu_leak_callback, align 4
  %25 = call i32 @WRITE_ONCE(i32 %23, i32 %24)
  %26 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %109

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %30 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %32 = call i32 @srcu_read_lock(%struct.srcu_struct* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @local_irq_save(i64 %33)
  %35 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %36 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.srcu_data* @this_cpu_ptr(i32 %37)
  store %struct.srcu_data* %38, %struct.srcu_data** %14, align 8
  %39 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %40 = call i32 @spin_lock_rcu_node(%struct.srcu_data* %39)
  %41 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %42 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %41, i32 0, i32 3
  %43 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %44 = call i32 @rcu_segcblist_enqueue(i32* %42, %struct.rcu_head* %43, i32 0)
  %45 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %46 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %45, i32 0, i32 3
  %47 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %48 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %47, i32 0, i32 0
  %49 = call i32 @rcu_seq_current(i32* %48)
  %50 = call i32 @rcu_segcblist_advance(i32* %46, i32 %49)
  %51 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %52 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %51, i32 0, i32 0
  %53 = call i64 @rcu_seq_snap(i32* %52)
  store i64 %53, i64* %13, align 8
  %54 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %55 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %54, i32 0, i32 3
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @rcu_segcblist_accelerate(i32* %55, i64 %56)
  %58 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %59 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @ULONG_CMP_LT(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %27
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %67 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %64, %27
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %73 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @ULONG_CMP_LT(i64 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %81 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %71, %68
  %83 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_data* %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %90 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @srcu_funnel_gp_start(%struct.srcu_struct* %89, %struct.srcu_data* %90, i64 %91, i32 %92)
  br label %105

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %99 = load %struct.srcu_data*, %struct.srcu_data** %14, align 8
  %100 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @srcu_funnel_exp_start(%struct.srcu_struct* %98, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @srcu_read_unlock(%struct.srcu_struct* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %20
  ret void
}

declare dso_local i32 @check_init_srcu_struct(%struct.srcu_struct*) #1

declare dso_local i64 @debug_rcu_head_queue(%struct.rcu_head*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @srcu_read_lock(%struct.srcu_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.srcu_data* @this_cpu_ptr(i32) #1

declare dso_local i32 @spin_lock_rcu_node(%struct.srcu_data*) #1

declare dso_local i32 @rcu_segcblist_enqueue(i32*, %struct.rcu_head*, i32) #1

declare dso_local i32 @rcu_segcblist_advance(i32*, i32) #1

declare dso_local i32 @rcu_seq_current(i32*) #1

declare dso_local i64 @rcu_seq_snap(i32*) #1

declare dso_local i32 @rcu_segcblist_accelerate(i32*, i64) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_data*, i64) #1

declare dso_local i32 @srcu_funnel_gp_start(%struct.srcu_struct*, %struct.srcu_data*, i64, i32) #1

declare dso_local i32 @srcu_funnel_exp_start(%struct.srcu_struct*, i32, i64) #1

declare dso_local i32 @srcu_read_unlock(%struct.srcu_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
