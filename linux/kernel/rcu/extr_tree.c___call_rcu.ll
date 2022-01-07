; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c___call_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c___call_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rcu_head = type { i32*, i64 }
%struct.rcu_data = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"__call_rcu(): Double-freed CB %p->%pS()!!!\0A\00", align 1
@rcu_leak_callback = common dso_local global i32 0, align 4
@rcu_data = common dso_local global i32 0, align 4
@rcu_scheduler_active = common dso_local global i64 0, align 8
@RCU_SCHEDULER_INACTIVE = common dso_local global i64 0, align 8
@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONFIG_RCU_NOCB_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_head*, i64, i32)* @__call_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__call_rcu(%struct.rcu_head* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rcu_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.rcu_data*, align 8
  %9 = alloca i32, align 4
  store %struct.rcu_head* %0, %struct.rcu_head** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %11 = ptrtoint %struct.rcu_head* %10 to i64
  %12 = and i64 %11, 7
  %13 = trunc i64 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %16 = call i64 @debug_rcu_head_queue(%struct.rcu_head* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %20 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %21 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.rcu_head* %19, i64 %22)
  %24 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %25 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @rcu_leak_callback, align 4
  %28 = call i32 @WRITE_ONCE(i64 %26, i32 %27)
  br label %125

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %32 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %34 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @local_irq_save(i64 %35)
  %37 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %37, %struct.rcu_data** %8, align 8
  %38 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %39 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %38, i32 0, i32 0
  %40 = call i32 @rcu_segcblist_is_enabled(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %29
  %47 = load i64, i64* @rcu_scheduler_active, align 8
  %48 = load i64, i64* @RCU_SCHEDULER_INACTIVE, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = call i32 (...) @rcu_is_watching()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON_ONCE(i32 %55)
  %57 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %58 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %57, i32 0, i32 0
  %59 = call i64 @rcu_segcblist_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %63 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %62, i32 0, i32 0
  %64 = call i32 @rcu_segcblist_init(i32* %63)
  br label %65

65:                                               ; preds = %61, %46
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %68 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @rcu_nocb_try_bypass(%struct.rcu_data* %67, %struct.rcu_head* %68, i32* %9, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %125

73:                                               ; preds = %66
  %74 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %75 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %74, i32 0, i32 0
  %76 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @rcu_segcblist_enqueue(i32* %75, %struct.rcu_head* %76, i32 %77)
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @__is_kfree_rcu_offset(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %84 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %87 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %86, i32 0, i32 0
  %88 = call i32 @rcu_segcblist_n_lazy_cbs(i32* %87)
  %89 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %90 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %89, i32 0, i32 0
  %91 = call i32 @rcu_segcblist_n_cbs(i32* %90)
  %92 = call i32 @trace_rcu_kfree_callback(i32 %83, %struct.rcu_head* %84, i64 %85, i32 %88, i32 %91)
  br label %103

93:                                               ; preds = %73
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %95 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %96 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %97 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %96, i32 0, i32 0
  %98 = call i32 @rcu_segcblist_n_lazy_cbs(i32* %97)
  %99 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %100 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %99, i32 0, i32 0
  %101 = call i32 @rcu_segcblist_n_cbs(i32* %100)
  %102 = call i32 @trace_rcu_callback(i32 %94, %struct.rcu_head* %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %93, %82
  %104 = load i32, i32* @CONFIG_RCU_NOCB_CPU, align 4
  %105 = call i64 @IS_ENABLED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %109 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %108, i32 0, i32 0
  %110 = call i32 @rcu_segcblist_is_offloaded(i32* %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @__call_rcu_nocb_wake(%struct.rcu_data* %114, i32 %115, i64 %116)
  br label %125

118:                                              ; preds = %107, %103
  %119 = load %struct.rcu_data*, %struct.rcu_data** %8, align 8
  %120 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @__call_rcu_core(%struct.rcu_data* %119, %struct.rcu_head* %120, i64 %121)
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @local_irq_restore(i64 %123)
  br label %125

125:                                              ; preds = %18, %72, %118, %113
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @debug_rcu_head_queue(%struct.rcu_head*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, %struct.rcu_head*, i64) #1

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_segcblist_is_enabled(i32*) #1

declare dso_local i32 @rcu_is_watching(...) #1

declare dso_local i64 @rcu_segcblist_empty(i32*) #1

declare dso_local i32 @rcu_segcblist_init(i32*) #1

declare dso_local i64 @rcu_nocb_try_bypass(%struct.rcu_data*, %struct.rcu_head*, i32*, i64) #1

declare dso_local i32 @rcu_segcblist_enqueue(i32*, %struct.rcu_head*, i32) #1

declare dso_local i64 @__is_kfree_rcu_offset(i64) #1

declare dso_local i32 @trace_rcu_kfree_callback(i32, %struct.rcu_head*, i64, i32, i32) #1

declare dso_local i32 @rcu_segcblist_n_lazy_cbs(i32*) #1

declare dso_local i32 @rcu_segcblist_n_cbs(i32*) #1

declare dso_local i32 @trace_rcu_callback(i32, %struct.rcu_head*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rcu_segcblist_is_offloaded(i32*) #1

declare dso_local i32 @__call_rcu_nocb_wake(%struct.rcu_data*, i32, i64) #1

declare dso_local i32 @__call_rcu_core(%struct.rcu_data*, %struct.rcu_head*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
