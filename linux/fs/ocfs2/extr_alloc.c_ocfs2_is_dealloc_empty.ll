; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_is_dealloc_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_is_dealloc_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ocfs2_per_slot_free_list* }
%struct.ocfs2_per_slot_free_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*)* @ocfs2_is_dealloc_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store %struct.ocfs2_per_slot_free_list* null, %struct.ocfs2_per_slot_free_list** %4, align 8
  %5 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %14, align 8
  store %struct.ocfs2_per_slot_free_list* %15, %struct.ocfs2_per_slot_free_list** %4, align 8
  %16 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %4, align 8
  %17 = icmp ne %struct.ocfs2_per_slot_free_list* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %26

19:                                               ; preds = %10
  %20 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %18, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
