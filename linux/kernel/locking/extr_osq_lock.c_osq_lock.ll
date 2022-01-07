; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimistic_spin_queue = type { i32 }
%struct.optimistic_spin_node = type { i32, %struct.optimistic_spin_node*, %struct.optimistic_spin_node*, %struct.optimistic_spin_node* }

@osq_node = common dso_local global i32 0, align 4
@OSQ_UNLOCKED_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osq_lock(%struct.optimistic_spin_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.optimistic_spin_queue*, align 8
  %4 = alloca %struct.optimistic_spin_node*, align 8
  %5 = alloca %struct.optimistic_spin_node*, align 8
  %6 = alloca %struct.optimistic_spin_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.optimistic_spin_queue* %0, %struct.optimistic_spin_queue** %3, align 8
  %9 = call %struct.optimistic_spin_node* @this_cpu_ptr(i32* @osq_node)
  store %struct.optimistic_spin_node* %9, %struct.optimistic_spin_node** %4, align 8
  %10 = call i32 (...) @smp_processor_id()
  %11 = call i32 @encode_cpu(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %13 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %12, i32 0, i32 3
  store %struct.optimistic_spin_node* null, %struct.optimistic_spin_node** %13, align 8
  %14 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %15 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %14, i32 0, i32 1
  store %struct.optimistic_spin_node* null, %struct.optimistic_spin_node** %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %18 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %3, align 8
  %20 = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @atomic_xchg(i32* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @OSQ_UNLOCKED_VAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %106

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.optimistic_spin_node* @decode_cpu(i32 %28)
  store %struct.optimistic_spin_node* %29, %struct.optimistic_spin_node** %5, align 8
  %30 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %31 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %32 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %31, i32 0, i32 2
  store %struct.optimistic_spin_node* %30, %struct.optimistic_spin_node** %32, align 8
  %33 = call i32 (...) @smp_wmb()
  %34 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %35 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %34, i32 0, i32 1
  %36 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %35, align 8
  %37 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %38 = call i32 @WRITE_ONCE(%struct.optimistic_spin_node* %36, %struct.optimistic_spin_node* %37)
  br label %39

39:                                               ; preds = %57, %27
  %40 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %41 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %40, i32 0, i32 3
  %42 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %41, align 8
  %43 = call %struct.optimistic_spin_node* @READ_ONCE(%struct.optimistic_spin_node* %42)
  %44 = icmp ne %struct.optimistic_spin_node* %43, null
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = call i64 (...) @need_resched()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %51 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %50, i32 0, i32 2
  %52 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %51, align 8
  %53 = call i32 @node_cpu(%struct.optimistic_spin_node* %52)
  %54 = call i64 @vcpu_is_preempted(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %46
  br label %60

57:                                               ; preds = %49
  %58 = call i32 (...) @cpu_relax()
  br label %39

59:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %106

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %81, %60
  %62 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %63 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %62, i32 0, i32 1
  %64 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %63, align 8
  %65 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %66 = icmp eq %struct.optimistic_spin_node* %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %69 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %68, i32 0, i32 1
  %70 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %71 = call %struct.optimistic_spin_node* @cmpxchg(%struct.optimistic_spin_node** %69, %struct.optimistic_spin_node* %70, i32* null)
  %72 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %73 = icmp eq %struct.optimistic_spin_node* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %87

75:                                               ; preds = %67, %61
  %76 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %77 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %76, i32 0, i32 3
  %78 = call i64 @smp_load_acquire(%struct.optimistic_spin_node** %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %2, align 4
  br label %106

81:                                               ; preds = %75
  %82 = call i32 (...) @cpu_relax()
  %83 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %84 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %83, i32 0, i32 2
  %85 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %84, align 8
  %86 = call %struct.optimistic_spin_node* @READ_ONCE(%struct.optimistic_spin_node* %85)
  store %struct.optimistic_spin_node* %86, %struct.optimistic_spin_node** %5, align 8
  br label %61

87:                                               ; preds = %74
  %88 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %3, align 8
  %89 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %90 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %91 = call %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* %88, %struct.optimistic_spin_node* %89, %struct.optimistic_spin_node* %90)
  store %struct.optimistic_spin_node* %91, %struct.optimistic_spin_node** %6, align 8
  %92 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %6, align 8
  %93 = icmp ne %struct.optimistic_spin_node* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %106

95:                                               ; preds = %87
  %96 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %6, align 8
  %97 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %96, i32 0, i32 2
  %98 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %97, align 8
  %99 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %100 = call i32 @WRITE_ONCE(%struct.optimistic_spin_node* %98, %struct.optimistic_spin_node* %99)
  %101 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %102 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %101, i32 0, i32 1
  %103 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %102, align 8
  %104 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %6, align 8
  %105 = call i32 @WRITE_ONCE(%struct.optimistic_spin_node* %103, %struct.optimistic_spin_node* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %95, %94, %80, %59, %26
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.optimistic_spin_node* @this_cpu_ptr(i32*) #1

declare dso_local i32 @encode_cpu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local %struct.optimistic_spin_node* @decode_cpu(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(%struct.optimistic_spin_node*, %struct.optimistic_spin_node*) #1

declare dso_local %struct.optimistic_spin_node* @READ_ONCE(%struct.optimistic_spin_node*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @vcpu_is_preempted(i32) #1

declare dso_local i32 @node_cpu(%struct.optimistic_spin_node*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local %struct.optimistic_spin_node* @cmpxchg(%struct.optimistic_spin_node**, %struct.optimistic_spin_node*, i32*) #1

declare dso_local i64 @smp_load_acquire(%struct.optimistic_spin_node**) #1

declare dso_local %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue*, %struct.optimistic_spin_node*, %struct.optimistic_spin_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
