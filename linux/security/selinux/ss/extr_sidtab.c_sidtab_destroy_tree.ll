; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_destroy_tree.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_destroy_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab_node_leaf = type { %union.sidtab_entry_inner* }
%union.sidtab_entry_inner = type { %struct.sidtab_node_leaf* }
%struct.sidtab_node_inner = type { %union.sidtab_entry_inner* }

@SIDTAB_INNER_ENTRIES = common dso_local global i64 0, align 8
@SIDTAB_LEAF_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sidtab_node_leaf*, i64)* @sidtab_destroy_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sidtab_destroy_tree(%struct.sidtab_node_leaf* %0, i64 %1) #0 {
  %3 = alloca %union.sidtab_entry_inner, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sidtab_node_inner*, align 8
  %7 = alloca %struct.sidtab_node_leaf*, align 8
  %8 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %3, i32 0, i32 0
  store %struct.sidtab_node_leaf* %0, %struct.sidtab_node_leaf** %8, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = bitcast %union.sidtab_entry_inner* %3 to %struct.sidtab_node_leaf**
  %13 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %12, align 8
  %14 = bitcast %struct.sidtab_node_leaf* %13 to %struct.sidtab_node_inner*
  store %struct.sidtab_node_inner* %14, %struct.sidtab_node_inner** %6, align 8
  %15 = load %struct.sidtab_node_inner*, %struct.sidtab_node_inner** %6, align 8
  %16 = icmp ne %struct.sidtab_node_inner* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %65

18:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SIDTAB_INNER_ENTRIES, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.sidtab_node_inner*, %struct.sidtab_node_inner** %6, align 8
  %25 = getelementptr inbounds %struct.sidtab_node_inner, %struct.sidtab_node_inner* %24, i32 0, i32 0
  %26 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %26, i64 %27
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %29, 1
  %31 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %28, i32 0, i32 0
  %32 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %31, align 8
  call void @sidtab_destroy_tree(%struct.sidtab_node_leaf* %32, i64 %30)
  br label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.sidtab_node_inner*, %struct.sidtab_node_inner** %6, align 8
  %38 = bitcast %struct.sidtab_node_inner* %37 to %struct.sidtab_node_leaf*
  %39 = call i32 @kfree(%struct.sidtab_node_leaf* %38)
  br label %65

40:                                               ; preds = %2
  %41 = bitcast %union.sidtab_entry_inner* %3 to %struct.sidtab_node_leaf**
  %42 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %41, align 8
  store %struct.sidtab_node_leaf* %42, %struct.sidtab_node_leaf** %7, align 8
  %43 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %7, align 8
  %44 = icmp ne %struct.sidtab_node_leaf* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %65

46:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @SIDTAB_LEAF_ENTRIES, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %7, align 8
  %53 = getelementptr inbounds %struct.sidtab_node_leaf, %struct.sidtab_node_leaf* %52, i32 0, i32 0
  %54 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %54, i64 %55
  %57 = bitcast %union.sidtab_entry_inner* %56 to i32*
  %58 = call i32 @context_destroy(i32* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %7, align 8
  %64 = call i32 @kfree(%struct.sidtab_node_leaf* %63)
  br label %65

65:                                               ; preds = %17, %45, %62, %36
  ret void
}

declare dso_local i32 @kfree(%struct.sidtab_node_leaf*) #1

declare dso_local i32 @context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
