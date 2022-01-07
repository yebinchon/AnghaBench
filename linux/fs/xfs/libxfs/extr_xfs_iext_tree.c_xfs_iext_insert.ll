; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_iext_cursor = type { i32, %struct.xfs_iext_leaf* }
%struct.xfs_iext_leaf = type { i32* }
%struct.xfs_bmbt_irec = type { i32 }
%struct.xfs_ifork = type { i32, i32 }

@RECS_PER_LEAF = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_insert(%struct.xfs_inode* %0, %struct.xfs_iext_cursor* %1, %struct.xfs_bmbt_irec* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_iext_cursor*, align 8
  %7 = alloca %struct.xfs_bmbt_irec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_iext_leaf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %6, align 8
  store %struct.xfs_bmbt_irec* %2, %struct.xfs_bmbt_irec** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode* %14, i32 %15)
  store %struct.xfs_ifork* %16, %struct.xfs_ifork** %9, align 8
  %17 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store %struct.xfs_iext_leaf* null, %struct.xfs_iext_leaf** %11, align 8
  %20 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %21 = call i32 @xfs_iext_inc_seq(%struct.xfs_ifork* %20)
  %22 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %23 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %28 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %29 = call i32 @xfs_iext_alloc_root(%struct.xfs_ifork* %27, %struct.xfs_iext_cursor* %28)
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %32 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %37 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %38 = call i32 @xfs_iext_realloc_root(%struct.xfs_ifork* %36, %struct.xfs_iext_cursor* %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %42 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %43 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %42, i32 0, i32 1
  %44 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %43, align 8
  %45 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork* %41, %struct.xfs_iext_leaf* %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @RECS_PER_LEAF, align 4
  %51 = icmp sle i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %55 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %40
  %60 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %61 = call i32 @cur_rec(%struct.xfs_iext_cursor* %60)
  %62 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %63 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @xfs_iext_rec_cmp(i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %59, %40
  %68 = phi i1 [ true, %40 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @RECS_PER_LEAF, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %76 = call %struct.xfs_iext_leaf* @xfs_iext_split_leaf(%struct.xfs_iext_cursor* %75, i32* %12)
  store %struct.xfs_iext_leaf* %76, %struct.xfs_iext_leaf** %11, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %79 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %78, i32 0, i32 1
  %80 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %79, align 8
  %81 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %11, align 8
  %82 = icmp ne %struct.xfs_iext_leaf* %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %85 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %93 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %94 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %93, i32 0, i32 1
  %95 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %94, align 8
  %96 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %95, i32 0)
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %99 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %98, i32 0, i32 1
  %100 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %99, align 8
  %101 = call i32 @xfs_iext_update_node(%struct.xfs_ifork* %92, i32 %96, i32 %97, i32 1, %struct.xfs_iext_leaf* %100)
  br label %102

102:                                              ; preds = %91, %88, %83, %77
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %129, %102
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %107 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %104
  %111 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %112 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %111, i32 0, i32 1
  %113 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %112, align 8
  %114 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %122 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %121, i32 0, i32 1
  %123 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %122, align 8
  %124 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %120, i32* %128, align 4
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %13, align 4
  br label %104

132:                                              ; preds = %104
  %133 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %134 = call i32 @cur_rec(%struct.xfs_iext_cursor* %133)
  %135 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %136 = call i32 @xfs_iext_set(i32 %134, %struct.xfs_bmbt_irec* %135)
  %137 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %138 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %144 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @_RET_IP_, align 4
  %147 = call i32 @trace_xfs_iext_insert(%struct.xfs_inode* %143, %struct.xfs_iext_cursor* %144, i32 %145, i32 %146)
  %148 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %11, align 8
  %149 = icmp ne %struct.xfs_iext_leaf* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %132
  %151 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %152 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %11, align 8
  %153 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %152, i32 0)
  %154 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %11, align 8
  %155 = call i32 @xfs_iext_insert_node(%struct.xfs_ifork* %151, i32 %153, %struct.xfs_iext_leaf* %154, i32 2)
  br label %156

156:                                              ; preds = %150, %132
  ret void
}

declare dso_local %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iext_inc_seq(%struct.xfs_ifork*) #1

declare dso_local i32 @xfs_iext_alloc_root(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i32 @xfs_iext_realloc_root(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork*, %struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_iext_rec_cmp(i32, i32) #1

declare dso_local i32 @cur_rec(%struct.xfs_iext_cursor*) #1

declare dso_local %struct.xfs_iext_leaf* @xfs_iext_split_leaf(%struct.xfs_iext_cursor*, i32*) #1

declare dso_local i32 @xfs_iext_update_node(%struct.xfs_ifork*, i32, i32, i32, %struct.xfs_iext_leaf*) #1

declare dso_local i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @xfs_iext_set(i32, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @trace_xfs_iext_insert(%struct.xfs_inode*, %struct.xfs_iext_cursor*, i32, i32) #1

declare dso_local i32 @xfs_iext_insert_node(%struct.xfs_ifork*, i32, %struct.xfs_iext_leaf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
