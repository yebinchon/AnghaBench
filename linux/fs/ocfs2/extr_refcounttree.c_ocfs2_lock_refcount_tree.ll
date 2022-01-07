; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_tree = type { i64, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %0, i32 %1, i32 %2, %struct.ocfs2_refcount_tree** %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_refcount_tree**, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_tree*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ocfs2_refcount_tree** %3, %struct.ocfs2_refcount_tree*** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 0, i32* %13, align 4
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %17

17:                                               ; preds = %91, %5
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ocfs2_get_refcount_tree(%struct.ocfs2_super* %18, i32 %19, %struct.ocfs2_refcount_tree** %14)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %107

27:                                               ; preds = %17
  %28 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %29 = call i32 @ocfs2_refcount_tree_get(%struct.ocfs2_refcount_tree* %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %31 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @__ocfs2_lock_refcount_tree(%struct.ocfs2_super* %30, %struct.ocfs2_refcount_tree* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %40 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %39)
  br label %103

41:                                               ; preds = %27
  %42 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %43 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %42, i32 0, i32 3
  %44 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %45 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ocfs2_read_refcount_block(i32* %43, i32 %46, %struct.buffer_head** %15)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %54 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %53, %struct.ocfs2_refcount_tree* %54, i32 %55)
  br label %103

57:                                               ; preds = %41
  %58 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %61, %struct.ocfs2_refcount_block** %16, align 8
  %62 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %63 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %16, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %57
  %71 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %72 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %77 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %78 = call i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super* %76, %struct.ocfs2_refcount_tree* %77)
  %79 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %80 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %83 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %82, %struct.ocfs2_refcount_tree* %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %90 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %89)
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %17

94:                                               ; preds = %57
  %95 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %96 = load %struct.ocfs2_refcount_tree**, %struct.ocfs2_refcount_tree*** %10, align 8
  store %struct.ocfs2_refcount_tree* %95, %struct.ocfs2_refcount_tree** %96, align 8
  %97 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %98 = icmp ne %struct.buffer_head** %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %100, %struct.buffer_head** %101, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %50, %36
  %104 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %23
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @ocfs2_get_refcount_tree(%struct.ocfs2_super*, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_tree_get(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @__ocfs2_lock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
