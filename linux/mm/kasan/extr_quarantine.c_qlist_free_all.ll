; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_free_all.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { %struct.qlist_node* }
%struct.qlist_node = type { %struct.qlist_node* }
%struct.kmem_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlist_head*, %struct.kmem_cache*)* @qlist_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlist_free_all(%struct.qlist_head* %0, %struct.kmem_cache* %1) #0 {
  %3 = alloca %struct.qlist_head*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.qlist_node*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca %struct.qlist_node*, align 8
  store %struct.qlist_head* %0, %struct.qlist_head** %3, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %4, align 8
  %8 = load %struct.qlist_head*, %struct.qlist_head** %3, align 8
  %9 = call i32 @qlist_empty(%struct.qlist_head* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.qlist_head*, %struct.qlist_head** %3, align 8
  %15 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %14, i32 0, i32 0
  %16 = load %struct.qlist_node*, %struct.qlist_node** %15, align 8
  store %struct.qlist_node* %16, %struct.qlist_node** %5, align 8
  br label %17

17:                                               ; preds = %28, %13
  %18 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %19 = icmp ne %struct.qlist_node* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %22 = icmp ne %struct.kmem_cache* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  br label %28

25:                                               ; preds = %20
  %26 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %27 = call %struct.kmem_cache* @qlink_to_cache(%struct.qlist_node* %26)
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi %struct.kmem_cache* [ %24, %23 ], [ %27, %25 ]
  store %struct.kmem_cache* %29, %struct.kmem_cache** %6, align 8
  %30 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %31 = getelementptr inbounds %struct.qlist_node, %struct.qlist_node* %30, i32 0, i32 0
  %32 = load %struct.qlist_node*, %struct.qlist_node** %31, align 8
  store %struct.qlist_node* %32, %struct.qlist_node** %7, align 8
  %33 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %34 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %35 = call i32 @qlink_free(%struct.qlist_node* %33, %struct.kmem_cache* %34)
  %36 = load %struct.qlist_node*, %struct.qlist_node** %7, align 8
  store %struct.qlist_node* %36, %struct.qlist_node** %5, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.qlist_head*, %struct.qlist_head** %3, align 8
  %39 = call i32 @qlist_init(%struct.qlist_head* %38)
  br label %40

40:                                               ; preds = %37, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlist_empty(%struct.qlist_head*) #1

declare dso_local %struct.kmem_cache* @qlink_to_cache(%struct.qlist_node*) #1

declare dso_local i32 @qlink_free(%struct.qlist_node*, %struct.kmem_cache*) #1

declare dso_local i32 @qlist_init(%struct.qlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
