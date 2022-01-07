; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_move_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_move_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { %struct.qlist_node* }
%struct.qlist_node = type { %struct.qlist_node* }
%struct.kmem_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlist_head*, %struct.qlist_head*, %struct.kmem_cache*)* @qlist_move_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlist_move_cache(%struct.qlist_head* %0, %struct.qlist_head* %1, %struct.kmem_cache* %2) #0 {
  %4 = alloca %struct.qlist_head*, align 8
  %5 = alloca %struct.qlist_head*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca %struct.qlist_node*, align 8
  %8 = alloca %struct.qlist_node*, align 8
  %9 = alloca %struct.kmem_cache*, align 8
  store %struct.qlist_head* %0, %struct.qlist_head** %4, align 8
  store %struct.qlist_head* %1, %struct.qlist_head** %5, align 8
  store %struct.kmem_cache* %2, %struct.kmem_cache** %6, align 8
  %10 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %11 = call i32 @qlist_empty(%struct.qlist_head* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %17 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %16, i32 0, i32 0
  %18 = load %struct.qlist_node*, %struct.qlist_node** %17, align 8
  store %struct.qlist_node* %18, %struct.qlist_node** %7, align 8
  %19 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %20 = call i32 @qlist_init(%struct.qlist_head* %19)
  br label %21

21:                                               ; preds = %47, %15
  %22 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  %23 = icmp ne %struct.qlist_node* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  %26 = getelementptr inbounds %struct.qlist_node, %struct.qlist_node* %25, i32 0, i32 0
  %27 = load %struct.qlist_node*, %struct.qlist_node** %26, align 8
  store %struct.qlist_node* %27, %struct.qlist_node** %8, align 8
  %28 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  %29 = call %struct.kmem_cache* @qlink_to_cache(%struct.qlist_node* %28)
  store %struct.kmem_cache* %29, %struct.kmem_cache** %9, align 8
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %31 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %32 = icmp eq %struct.kmem_cache* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.qlist_head*, %struct.qlist_head** %5, align 8
  %35 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  %36 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %37 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qlist_put(%struct.qlist_head* %34, %struct.qlist_node* %35, i32 %38)
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %42 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %44 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @qlist_put(%struct.qlist_head* %41, %struct.qlist_node* %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.qlist_node*, %struct.qlist_node** %8, align 8
  store %struct.qlist_node* %48, %struct.qlist_node** %7, align 8
  br label %21

49:                                               ; preds = %14, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlist_empty(%struct.qlist_head*) #1

declare dso_local i32 @qlist_init(%struct.qlist_head*) #1

declare dso_local %struct.kmem_cache* @qlink_to_cache(%struct.qlist_node*) #1

declare dso_local i32 @qlist_put(%struct.qlist_head*, %struct.qlist_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
