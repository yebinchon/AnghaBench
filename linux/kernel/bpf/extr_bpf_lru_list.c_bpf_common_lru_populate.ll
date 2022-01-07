; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_populate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_common_lru_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bpf_lru_list }
%struct.bpf_lru_list = type { i32* }
%struct.bpf_lru_node = type { i64, i32, i64 }

@BPF_LRU_LIST_T_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru*, i8*, i64, i64, i64)* @bpf_common_lru_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_common_lru_populate(%struct.bpf_lru* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.bpf_lru*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bpf_lru_list*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_lru_node*, align 8
  store %struct.bpf_lru* %0, %struct.bpf_lru** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.bpf_lru*, %struct.bpf_lru** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_lru, %struct.bpf_lru* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.bpf_lru_list* %16, %struct.bpf_lru_list** %11, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %42, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = bitcast i8* %24 to %struct.bpf_lru_node*
  store %struct.bpf_lru_node* %25, %struct.bpf_lru_node** %13, align 8
  %26 = load i64, i64* @BPF_LRU_LIST_T_FREE, align 8
  %27 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %13, align 8
  %28 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %13, align 8
  %30 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %13, align 8
  %32 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %31, i32 0, i32 1
  %33 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %11, align 8
  %34 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @BPF_LRU_LIST_T_FREE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @list_add(i32* %32, i32* %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %21
  %43 = load i64, i64* %12, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %17

45:                                               ; preds = %17
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
