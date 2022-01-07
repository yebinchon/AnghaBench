; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_del.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.list_lru_one = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_lru_del(%struct.list_lru* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_lru*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_lru_node*, align 8
  %8 = alloca %struct.list_lru_one*, align 8
  store %struct.list_lru* %0, %struct.list_lru** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = call i32 @virt_to_page(%struct.list_head* %9)
  %11 = call i32 @page_to_nid(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.list_lru*, %struct.list_lru** %4, align 8
  %13 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %12, i32 0, i32 0
  %14 = load %struct.list_lru_node*, %struct.list_lru_node** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %14, i64 %16
  store %struct.list_lru_node* %17, %struct.list_lru_node** %7, align 8
  %18 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %19 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  %22 = call i32 @list_empty(%struct.list_head* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %2
  %25 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = call %struct.list_lru_one* @list_lru_from_kmem(%struct.list_lru_node* %25, %struct.list_head* %26, i32* null)
  store %struct.list_lru_one* %27, %struct.list_lru_one** %8, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call i32 @list_del_init(%struct.list_head* %28)
  %30 = load %struct.list_lru_one*, %struct.list_lru_one** %8, align 8
  %31 = getelementptr inbounds %struct.list_lru_one, %struct.list_lru_one* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %35 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %39 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  store i32 1, i32* %3, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %43 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @page_to_nid(i32) #1

declare dso_local i32 @virt_to_page(%struct.list_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.list_lru_one* @list_lru_from_kmem(%struct.list_lru_node*, %struct.list_head*, i32*) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
