; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_push_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_push_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_lru_node = type { i64, i32, i64, i32 }
%struct.bpf_lru_locallist = type { i32 }

@BPF_LRU_LIST_T_FREE = common dso_local global i64 0, align 8
@BPF_LRU_LOCAL_LIST_T_FREE = common dso_local global i64 0, align 8
@BPF_LRU_LOCAL_LIST_T_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru*, %struct.bpf_lru_node*)* @bpf_common_lru_push_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_common_lru_push_free(%struct.bpf_lru* %0, %struct.bpf_lru_node* %1) #0 {
  %3 = alloca %struct.bpf_lru*, align 8
  %4 = alloca %struct.bpf_lru_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bpf_lru_locallist*, align 8
  store %struct.bpf_lru* %0, %struct.bpf_lru** %3, align 8
  store %struct.bpf_lru_node* %1, %struct.bpf_lru_node** %4, align 8
  %7 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BPF_LRU_LIST_T_FREE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BPF_LRU_LOCAL_LIST_T_FREE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %2
  br label %79

25:                                               ; preds = %15
  %26 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BPF_LRU_LOCAL_LIST_T_PENDING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = load %struct.bpf_lru*, %struct.bpf_lru** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_lru, %struct.bpf_lru* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %37 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.bpf_lru_locallist* @per_cpu_ptr(i32 %35, i32 %38)
  store %struct.bpf_lru_locallist* %39, %struct.bpf_lru_locallist** %6, align 8
  %40 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BPF_LRU_LOCAL_LIST_T_PENDING, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %54 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %73

57:                                               ; preds = %31
  %58 = load i64, i64* @BPF_LRU_LOCAL_LIST_T_FREE, align 8
  %59 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %60 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %62 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %64 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %63, i32 0, i32 1
  %65 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %66 = call i32 @local_free_list(%struct.bpf_lru_locallist* %65)
  %67 = call i32 @list_move(i32* %64, i32 %66)
  %68 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %6, align 8
  %69 = getelementptr inbounds %struct.bpf_lru_locallist, %struct.bpf_lru_locallist* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %79

72:                                               ; preds = %25
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.bpf_lru*, %struct.bpf_lru** %3, align 8
  %75 = getelementptr inbounds %struct.bpf_lru, %struct.bpf_lru* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %4, align 8
  %78 = call i32 @bpf_lru_list_push_free(i32* %76, %struct.bpf_lru_node* %77)
  br label %79

79:                                               ; preds = %73, %57, %24
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.bpf_lru_locallist* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_move(i32*, i32) #1

declare dso_local i32 @local_free_list(%struct.bpf_lru_locallist*) #1

declare dso_local i32 @bpf_lru_list_push_free(i32*, %struct.bpf_lru_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
