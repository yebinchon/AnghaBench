; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_preferred_free_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_preferred_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_per_slot_free_list = type { i32, i32, %struct.ocfs2_per_slot_free_list* }
%struct.ocfs2_cached_dealloc_ctxt = type { %struct.ocfs2_per_slot_free_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_per_slot_free_list* (i32, i32, i32*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_find_preferred_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_per_slot_free_list* @ocfs2_find_preferred_free_list(i32 %0, i32 %1, i32* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %10 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %11 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %12 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %12, align 8
  store %struct.ocfs2_per_slot_free_list* %13, %struct.ocfs2_per_slot_free_list** %10, align 8
  br label %14

14:                                               ; preds = %35, %4
  %15 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %16 = icmp ne %struct.ocfs2_per_slot_free_list* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %19 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %31 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  store %struct.ocfs2_per_slot_free_list* %34, %struct.ocfs2_per_slot_free_list** %5, align 8
  br label %48

35:                                               ; preds = %23, %17
  %36 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %36, i32 0, i32 2
  %38 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %37, align 8
  store %struct.ocfs2_per_slot_free_list* %38, %struct.ocfs2_per_slot_free_list** %10, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %40, i32 0, i32 0
  %42 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %41, align 8
  store %struct.ocfs2_per_slot_free_list* %42, %struct.ocfs2_per_slot_free_list** %10, align 8
  %43 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  %44 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  store %struct.ocfs2_per_slot_free_list* %47, %struct.ocfs2_per_slot_free_list** %5, align 8
  br label %48

48:                                               ; preds = %39, %29
  %49 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %5, align 8
  ret %struct.ocfs2_per_slot_free_list* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
