; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_count_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_count_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @list_lru_count_node(%struct.list_lru* %0, i32 %1) #0 {
  %3 = alloca %struct.list_lru*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_lru_node*, align 8
  store %struct.list_lru* %0, %struct.list_lru** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.list_lru*, %struct.list_lru** %3, align 8
  %7 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %6, i32 0, i32 0
  %8 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %8, i64 %10
  store %struct.list_lru_node* %11, %struct.list_lru_node** %5, align 8
  %12 = load %struct.list_lru_node*, %struct.list_lru_node** %5, align 8
  %13 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  ret i64 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
