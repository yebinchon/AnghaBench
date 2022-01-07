; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru_list = type { i32* }
%struct.bpf_lru_node = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru_list*, %struct.bpf_lru_node*, i32)* @__bpf_lru_node_move_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_lru_node_move_in(%struct.bpf_lru_list* %0, %struct.bpf_lru_node* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_lru_list*, align 8
  %5 = alloca %struct.bpf_lru_node*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_lru_list* %0, %struct.bpf_lru_list** %4, align 8
  store %struct.bpf_lru_node* %1, %struct.bpf_lru_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %8 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @IS_LOCAL_LIST_TYPE(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IS_LOCAL_LIST_TYPE(i32 %17)
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  br label %40

22:                                               ; preds = %16
  %23 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @bpf_lru_list_count_inc(%struct.bpf_lru_list* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %32 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %31, i32 0, i32 1
  %33 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @list_move(i32* %32, i32* %38)
  br label %40

40:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_LOCAL_LIST_TYPE(i32) #1

declare dso_local i32 @bpf_lru_list_count_inc(%struct.bpf_lru_list*, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
