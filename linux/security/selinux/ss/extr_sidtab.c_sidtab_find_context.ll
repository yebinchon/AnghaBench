; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_find_context.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_find_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab_node_leaf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.context = type { i32 }
%union.sidtab_entry_inner = type { %struct.sidtab_node_leaf* }
%struct.sidtab_node_inner = type { %union.sidtab_entry_inner* }

@SIDTAB_INNER_ENTRIES = common dso_local global i64 0, align 8
@SIDTAB_LEAF_ENTRIES = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sidtab_node_leaf*, i64*, i64, i64, %struct.context*, i64*)* @sidtab_find_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sidtab_find_context(%struct.sidtab_node_leaf* %0, i64* %1, i64 %2, i64 %3, %struct.context* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sidtab_entry_inner, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.context*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sidtab_node_inner*, align 8
  %17 = alloca %struct.sidtab_node_leaf*, align 8
  %18 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %8, i32 0, i32 0
  store %struct.sidtab_node_leaf* %0, %struct.sidtab_node_leaf** %18, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.context* %4, %struct.context** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %6
  %22 = bitcast %union.sidtab_entry_inner* %8 to %struct.sidtab_node_inner**
  %23 = load %struct.sidtab_node_inner*, %struct.sidtab_node_inner** %22, align 8
  store %struct.sidtab_node_inner* %23, %struct.sidtab_node_inner** %16, align 8
  store i64 0, i64* %15, align 8
  br label %24

24:                                               ; preds = %53, %21
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @SIDTAB_INNER_ENTRIES, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp slt i64 %30, %31
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i1 [ false, %24 ], [ %32, %28 ]
  br i1 %34, label %35, label %56

35:                                               ; preds = %33
  %36 = load %struct.sidtab_node_inner*, %struct.sidtab_node_inner** %16, align 8
  %37 = getelementptr inbounds %struct.sidtab_node_inner, %struct.sidtab_node_inner* %36, i32 0, i32 0
  %38 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %38, i64 %39
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.context*, %struct.context** %12, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %40, i32 0, i32 0
  %48 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %47, align 8
  %49 = call i32 @sidtab_find_context(%struct.sidtab_node_leaf* %48, i64* %41, i64 %42, i64 %44, %struct.context* %45, i64* %46)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %95

53:                                               ; preds = %35
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %15, align 8
  br label %24

56:                                               ; preds = %33
  br label %92

57:                                               ; preds = %6
  %58 = bitcast %union.sidtab_entry_inner* %8 to %struct.sidtab_node_leaf**
  %59 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %58, align 8
  store %struct.sidtab_node_leaf* %59, %struct.sidtab_node_leaf** %17, align 8
  store i64 0, i64* %15, align 8
  br label %60

60:                                               ; preds = %85, %57
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @SIDTAB_LEAF_ENTRIES, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp slt i64 %66, %67
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  %72 = load %struct.sidtab_node_leaf*, %struct.sidtab_node_leaf** %17, align 8
  %73 = getelementptr inbounds %struct.sidtab_node_leaf, %struct.sidtab_node_leaf* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.context*, %struct.context** %12, align 8
  %79 = call i64 @context_cmp(i32* %77, %struct.context* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %13, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %7, align 4
  br label %95

85:                                               ; preds = %71
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %15, align 8
  br label %60

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %56
  %93 = load i32, i32* @ENOENT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %81, %52
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i64 @context_cmp(i32*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
