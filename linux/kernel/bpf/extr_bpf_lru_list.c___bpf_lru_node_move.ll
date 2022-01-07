; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru_list = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.bpf_lru_node = type { i32, %struct.TYPE_2__, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru_list*, %struct.bpf_lru_node*, i32)* @__bpf_lru_node_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_lru_node_move(%struct.bpf_lru_list* %0, %struct.bpf_lru_node* %1, i32 %2) #0 {
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
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @IS_LOCAL_LIST_TYPE(i32 %14)
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  br label %64

19:                                               ; preds = %13
  %20 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %27 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bpf_lru_list_count_dec(%struct.bpf_lru_list* %26, i32 %29)
  %31 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @bpf_lru_list_count_inc(%struct.bpf_lru_list* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %25, %19
  %38 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %41 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %40, i32 0, i32 1
  %42 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp eq %struct.TYPE_2__* %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %48 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %53 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %52, i32 0, i32 1
  store %struct.TYPE_2__* %51, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %46, %37
  %55 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %55, i32 0, i32 1
  %57 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %58 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @list_move(%struct.TYPE_2__* %56, i32* %62)
  br label %64

64:                                               ; preds = %54, %18
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_LOCAL_LIST_TYPE(i32) #1

declare dso_local i32 @bpf_lru_list_count_dec(%struct.bpf_lru_list*, i32) #1

declare dso_local i32 @bpf_lru_list_count_inc(%struct.bpf_lru_list*, i32) #1

declare dso_local i32 @list_move(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
