; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_remove_rmap_item_from_tree.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_remove_rmap_item_from_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rmap_item = type { i32, i32, i32, i32, i32, %struct.stable_node* }
%struct.stable_node = type { i64, i32 }
%struct.page = type { i32 }

@STABLE_FLAG = common dso_local global i32 0, align 4
@GET_KSM_PAGE_LOCK = common dso_local global i32 0, align 4
@ksm_pages_sharing = common dso_local global i32 0, align 4
@ksm_pages_shared = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UNSTABLE_FLAG = common dso_local global i32 0, align 4
@ksm_scan = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@root_unstable_tree = common dso_local global i64 0, align 8
@ksm_pages_unshared = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rmap_item*)* @remove_rmap_item_from_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_rmap_item_from_tree(%struct.rmap_item* %0) #0 {
  %2 = alloca %struct.rmap_item*, align 8
  %3 = alloca %struct.stable_node*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8, align 1
  store %struct.rmap_item* %0, %struct.rmap_item** %2, align 8
  %6 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %7 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @STABLE_FLAG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %14 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %13, i32 0, i32 5
  %15 = load %struct.stable_node*, %struct.stable_node** %14, align 8
  store %struct.stable_node* %15, %struct.stable_node** %3, align 8
  %16 = load %struct.stable_node*, %struct.stable_node** %3, align 8
  %17 = load i32, i32* @GET_KSM_PAGE_LOCK, align 4
  %18 = call %struct.page* @get_ksm_page(%struct.stable_node* %16, i32 %17)
  store %struct.page* %18, %struct.page** %4, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %101

22:                                               ; preds = %12
  %23 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %24 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %23, i32 0, i32 4
  %25 = call i32 @hlist_del(i32* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @unlock_page(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @put_page(%struct.page* %28)
  %30 = load %struct.stable_node*, %struct.stable_node** %3, align 8
  %31 = getelementptr inbounds %struct.stable_node, %struct.stable_node* %30, i32 0, i32 1
  %32 = call i32 @hlist_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ksm_pages_sharing, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @ksm_pages_sharing, align 4
  br label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @ksm_pages_shared, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @ksm_pages_shared, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.stable_node*, %struct.stable_node** %3, align 8
  %42 = getelementptr inbounds %struct.stable_node, %struct.stable_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @VM_BUG_ON(i32 %45)
  %47 = load %struct.stable_node*, %struct.stable_node** %3, align 8
  %48 = getelementptr inbounds %struct.stable_node, %struct.stable_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %52 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @put_anon_vma(i32 %53)
  %55 = load i32, i32* @PAGE_MASK, align 4
  %56 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %57 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %100

60:                                               ; preds = %1
  %61 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %62 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UNSTABLE_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %60
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksm_scan, i32 0, i32 0), align 4
  %69 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %70 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sgt i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i8, i8* %5, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %67
  %82 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %83 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %82, i32 0, i32 2
  %84 = load i64, i64* @root_unstable_tree, align 8
  %85 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %86 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @NUMA(i32 %87)
  %89 = add nsw i64 %84, %88
  %90 = call i32 @rb_erase(i32* %83, i64 %89)
  br label %91

91:                                               ; preds = %81, %67
  %92 = load i32, i32* @ksm_pages_unshared, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* @ksm_pages_unshared, align 4
  %94 = load i32, i32* @PAGE_MASK, align 4
  %95 = load %struct.rmap_item*, %struct.rmap_item** %2, align 8
  %96 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %91, %60
  br label %100

100:                                              ; preds = %99, %40
  br label %101

101:                                              ; preds = %100, %21
  %102 = call i32 (...) @cond_resched()
  ret void
}

declare dso_local %struct.page* @get_ksm_page(%struct.stable_node*, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @put_anon_vma(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rb_erase(i32*, i64) #1

declare dso_local i64 @NUMA(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
