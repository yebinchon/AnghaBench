; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_lru_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c_bpf_lru_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru_list = type { i32, i32*, i32*, i64* }

@NR_BPF_LRU_LIST_T = common dso_local global i32 0, align 4
@NR_BPF_LRU_LIST_COUNT = common dso_local global i32 0, align 4
@BPF_LRU_LIST_T_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru_list*)* @bpf_lru_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_lru_list_init(%struct.bpf_lru_list* %0) #0 {
  %2 = alloca %struct.bpf_lru_list*, align 8
  %3 = alloca i32, align 4
  store %struct.bpf_lru_list* %0, %struct.bpf_lru_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NR_BPF_LRU_LIST_T, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %2, align 8
  %10 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NR_BPF_LRU_LIST_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @BPF_LRU_LIST_T_INACTIVE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %2, align 8
  %41 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %42, i32 0, i32 0
  %44 = call i32 @raw_spin_lock_init(i32* %43)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
