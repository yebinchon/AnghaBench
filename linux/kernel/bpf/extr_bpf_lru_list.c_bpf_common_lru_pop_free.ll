; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_pop_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_pop_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru_node = type { i32 }
%struct.bpf_lru = type { %struct.bpf_common_lru }
%struct.bpf_common_lru = type { i32 }
%struct.bpf_lru_locallist = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_lru_node* (%struct.bpf_lru*, i32)* @bpf_common_lru_pop_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_lru_node* @bpf_common_lru_pop_free(%struct.bpf_lru* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_lru_node*, align 8
  %4 = alloca %struct.bpf_lru*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_lru_locallist*, align 8
  %7 = alloca %struct.bpf_lru_locallist*, align 8
  %8 = alloca %struct.bpf_common_lru*, align 8
  %9 = alloca %struct.bpf_lru_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bpf_lru* %0, %struct.bpf_lru** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.bpf_lru*, %struct.bpf_lru** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_lru, %struct.bpf_lru* %14, i32 0, i32 0
  store %struct.bpf_common_lru* %15, %struct.bpf_common_lru** %8, align 8
  %16 = call i32 (...) @raw_smp_processor_id()
  store i32 %16, i32* %13, align 4
  %17 = load %struct.bpf_common_lru*, %struct.bpf_common_lru** %8, align 8
  %18 = getelementptr inbounds %struct.bpf_common_lru, %struct.bpf_common_lru* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.bpf_lru_locallist* @per_cpu_ptr(i32 %19, i32 %20)
  store %struct.bpf_lru_locallist* %21, %struct.bpf_lru_locallist** %6, align 8
  %22 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %22, i32 0, i32 1
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %27 = call %struct.bpf_lru_node* @__local_list_pop_free(%struct.bpf_lru_locallist* %26)
  store %struct.bpf_lru_node* %27, %struct.bpf_lru_node** %9, align 8
  %28 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %29 = icmp ne %struct.bpf_lru_node* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.bpf_lru*, %struct.bpf_lru** %4, align 8
  %32 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %33 = call i32 @bpf_lru_list_pop_free_to_local(%struct.bpf_lru* %31, %struct.bpf_lru_locallist* %32)
  %34 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %35 = call %struct.bpf_lru_node* @__local_list_pop_free(%struct.bpf_lru_locallist* %34)
  store %struct.bpf_lru_node* %35, %struct.bpf_lru_node** %9, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %38 = icmp ne %struct.bpf_lru_node* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.bpf_lru*, %struct.bpf_lru** %4, align 8
  %41 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @__local_list_add_pending(%struct.bpf_lru* %40, %struct.bpf_lru_locallist* %41, i32 %42, %struct.bpf_lru_node* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %47, i32 0, i32 1
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %52 = icmp ne %struct.bpf_lru_node* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  store %struct.bpf_lru_node* %54, %struct.bpf_lru_node** %3, align 8
  br label %117

55:                                               ; preds = %46
  %56 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %57 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %92, %55
  %61 = load %struct.bpf_common_lru*, %struct.bpf_common_lru** %8, align 8
  %62 = getelementptr inbounds %struct.bpf_common_lru, %struct.bpf_common_lru* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.bpf_lru_locallist* @per_cpu_ptr(i32 %63, i32 %64)
  store %struct.bpf_lru_locallist* %65, %struct.bpf_lru_locallist** %7, align 8
  %66 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %7, align 8
  %67 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %66, i32 0, i32 1
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @raw_spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %7, align 8
  %71 = call %struct.bpf_lru_node* @__local_list_pop_free(%struct.bpf_lru_locallist* %70)
  store %struct.bpf_lru_node* %71, %struct.bpf_lru_node** %9, align 8
  %72 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %73 = icmp ne %struct.bpf_lru_node* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %60
  %75 = load %struct.bpf_lru*, %struct.bpf_lru** %4, align 8
  %76 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %7, align 8
  %77 = call %struct.bpf_lru_node* @__local_list_pop_pending(%struct.bpf_lru* %75, %struct.bpf_lru_locallist* %76)
  store %struct.bpf_lru_node* %77, %struct.bpf_lru_node** %9, align 8
  br label %78

78:                                               ; preds = %74, %60
  %79 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %7, align 8
  %80 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %79, i32 0, i32 1
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @raw_spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @get_next_cpu(i32 %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %87 = icmp ne %struct.bpf_lru_node* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %89, %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ false, %85 ], [ %91, %88 ]
  br i1 %93, label %60, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %97 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %99 = icmp ne %struct.bpf_lru_node* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %102 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %101, i32 0, i32 1
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @raw_spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load %struct.bpf_lru*, %struct.bpf_lru** %4, align 8
  %106 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @__local_list_add_pending(%struct.bpf_lru* %105, %struct.bpf_lru_locallist* %106, i32 %107, %struct.bpf_lru_node* %108, i32 %109)
  %111 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %112 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %111, i32 0, i32 1
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @raw_spin_unlock_irqrestore(i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %100, %94
  %116 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  store %struct.bpf_lru_node* %116, %struct.bpf_lru_node** %3, align 8
  br label %117

117:                                              ; preds = %115, %53
  %118 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %3, align 8
  ret %struct.bpf_lru_node* %118
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.bpf_lru_locallist* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bpf_lru_node* @__local_list_pop_free(%struct.bpf_lru_locallist*) #1

declare dso_local i32 @bpf_lru_list_pop_free_to_local(%struct.bpf_lru*, %struct.bpf_lru_locallist*) #1

declare dso_local i32 @__local_list_add_pending(%struct.bpf_lru*, %struct.bpf_lru_locallist*, i32, %struct.bpf_lru_node*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bpf_lru_node* @__local_list_pop_pending(%struct.bpf_lru*, %struct.bpf_lru_locallist*) #1

declare dso_local i32 @get_next_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
