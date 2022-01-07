; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mm_struct = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64, i64, i32*, i32, i32, i32, i32, i64, i32, i32* }
%struct.task_struct = type { i32 }
%struct.user_namespace = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MMF_INIT_MASK = common dso_local global i32 0, align 4
@VM_INIT_DEF_MASK = common dso_local global i32 0, align 4
@default_dump_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mm_struct* (%struct.mm_struct*, %struct.task_struct*, %struct.user_namespace*)* @mm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mm_struct* @mm_init(%struct.mm_struct* %0, %struct.task_struct* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %7, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 18
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @RB_ROOT, align 4
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 17
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 16
  store i64 0, i64* %14, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 15
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 14
  %20 = call i32 @atomic_set(i32* %19, i32 1)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 13
  %23 = call i32 @init_rwsem(i32* %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 12
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 11
  store i32* null, i32** %28, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %30 = call i32 @mm_pgtables_bytes_init(%struct.mm_struct* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 8
  %37 = call i32 @atomic64_set(i32* %36, i32 0)
  %38 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 7
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 6
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 5
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %48 = call i32 @mm_init_cpumask(%struct.mm_struct* %47)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = call i32 @mm_init_aio(%struct.mm_struct* %49)
  %51 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = call i32 @mm_init_owner(%struct.mm_struct* %51, %struct.task_struct* %52)
  %54 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %55 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @RCU_INIT_POINTER(i32 %56, i32* null)
  %58 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %59 = call i32 @mmu_notifier_mm_init(%struct.mm_struct* %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = call i32 @init_tlb_flush_pending(%struct.mm_struct* %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %63 = call i32 @mm_init_uprobes_state(%struct.mm_struct* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MMF_INIT_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VM_INIT_DEF_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %86 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %93

87:                                               ; preds = %3
  %88 = load i32, i32* @default_dump_filter, align 4
  %89 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %90 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %92 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %68
  %94 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %95 = call i64 @mm_alloc_pgd(%struct.mm_struct* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %113

98:                                               ; preds = %93
  %99 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %100 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %101 = call i64 @init_new_context(%struct.task_struct* %99, %struct.mm_struct* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %110

104:                                              ; preds = %98
  %105 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %106 = call i32 @get_user_ns(%struct.user_namespace* %105)
  %107 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %108 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %109, %struct.mm_struct** %4, align 8
  br label %116

110:                                              ; preds = %103
  %111 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %112 = call i32 @mm_free_pgd(%struct.mm_struct* %111)
  br label %113

113:                                              ; preds = %110, %97
  %114 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %115 = call i32 @free_mm(%struct.mm_struct* %114)
  store %struct.mm_struct* null, %struct.mm_struct** %4, align 8
  br label %116

116:                                              ; preds = %113, %104
  %117 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  ret %struct.mm_struct* %117
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mm_pgtables_bytes_init(%struct.mm_struct*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mm_init_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @mm_init_aio(%struct.mm_struct*) #1

declare dso_local i32 @mm_init_owner(%struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mmu_notifier_mm_init(%struct.mm_struct*) #1

declare dso_local i32 @init_tlb_flush_pending(%struct.mm_struct*) #1

declare dso_local i32 @mm_init_uprobes_state(%struct.mm_struct*) #1

declare dso_local i64 @mm_alloc_pgd(%struct.mm_struct*) #1

declare dso_local i64 @init_new_context(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @mm_free_pgd(%struct.mm_struct*) #1

declare dso_local i32 @free_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
