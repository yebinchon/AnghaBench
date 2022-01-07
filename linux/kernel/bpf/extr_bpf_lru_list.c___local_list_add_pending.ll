; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___local_list_add_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___local_list_add_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru = type { i32 }
%struct.bpf_lru_locallist = type { i32 }
%struct.bpf_lru_node = type { i32, i32, i64, i32 }

@BPF_LRU_LOCAL_LIST_T_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru*, %struct.bpf_lru_locallist*, i32, %struct.bpf_lru_node*, i32)* @__local_list_add_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__local_list_add_pending(%struct.bpf_lru* %0, %struct.bpf_lru_locallist* %1, i32 %2, %struct.bpf_lru_node* %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_lru*, align 8
  %7 = alloca %struct.bpf_lru_locallist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_lru_node*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_lru* %0, %struct.bpf_lru** %6, align 8
  store %struct.bpf_lru_locallist* %1, %struct.bpf_lru_locallist** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bpf_lru_node* %3, %struct.bpf_lru_node** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %13 = bitcast %struct.bpf_lru_node* %12 to i8*
  %14 = load %struct.bpf_lru*, %struct.bpf_lru** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_lru, %struct.bpf_lru* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to i32*
  store i32 %11, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %22 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @BPF_LRU_LOCAL_LIST_T_PENDING, align 4
  %24 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %25 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %27 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %9, align 8
  %29 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %28, i32 0, i32 1
  %30 = load %struct.bpf_lru_locallist*, %struct.bpf_lru_locallist** %7, align 8
  %31 = call i32 @local_pending_list(%struct.bpf_lru_locallist* %30)
  %32 = call i32 @list_add(i32* %29, i32 %31)
  ret void
}

declare dso_local i32 @list_add(i32*, i32) #1

declare dso_local i32 @local_pending_list(%struct.bpf_lru_locallist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
