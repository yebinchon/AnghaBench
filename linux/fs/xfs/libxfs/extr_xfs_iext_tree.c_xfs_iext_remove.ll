; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_iext_cursor = type { i32, %struct.xfs_iext_leaf* }
%struct.xfs_iext_leaf = type { %struct.xfs_iext_leaf*, i32* }
%struct.xfs_ifork = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@_RET_IP_ = common dso_local global i32 0, align 4
@RECS_PER_LEAF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_remove(%struct.xfs_inode* %0, %struct.xfs_iext_cursor* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_iext_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_ifork*, align 8
  %8 = alloca %struct.xfs_iext_leaf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode* %12, i32 %13)
  store %struct.xfs_ifork* %14, %struct.xfs_ifork** %7, align 8
  %15 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %15, i32 0, i32 1
  %17 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %16, align 8
  store %struct.xfs_iext_leaf* %17, %struct.xfs_iext_leaf** %8, align 8
  %18 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %19 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %21 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @_RET_IP_, align 4
  %24 = call i32 @trace_xfs_iext_remove(%struct.xfs_inode* %20, %struct.xfs_iext_cursor* %21, i32 %22, i32 %23)
  %25 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %26 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %39 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %40 = call i32 @xfs_iext_valid(%struct.xfs_ifork* %38, %struct.xfs_iext_cursor* %39)
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %43 = call i32 @xfs_iext_inc_seq(%struct.xfs_ifork* %42)
  %44 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %45 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %46 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork* %44, %struct.xfs_iext_leaf* %45, i32 %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %73, %3
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %60 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %68 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %54

76:                                               ; preds = %54
  %77 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %78 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @xfs_iext_rec_clear(i32* %82)
  %84 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %85 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, 4
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %91 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %76
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %101 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %100, i32 0)
  %102 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %103 = call i32 @xfs_iext_update_node(%struct.xfs_ifork* %98, i32 %99, i32 %101, i32 1, %struct.xfs_iext_leaf* %102)
  %104 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %105 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %104, i32 0)
  store i32 %105, i32* %9, align 4
  br label %135

106:                                              ; preds = %94, %76
  %107 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %108 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %114 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %119 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %118, i32 0, i32 0
  %120 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %119, align 8
  %121 = icmp ne %struct.xfs_iext_leaf* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %124 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %123, i32 0, i32 0
  %125 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %124, align 8
  %126 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %127 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %126, i32 0, i32 1
  store %struct.xfs_iext_leaf* %125, %struct.xfs_iext_leaf** %127, align 8
  br label %131

128:                                              ; preds = %117, %112
  %129 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %129, i32 0, i32 1
  store %struct.xfs_iext_leaf* null, %struct.xfs_iext_leaf** %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %133 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %106
  br label %135

135:                                              ; preds = %134, %97
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @RECS_PER_LEAF, align 4
  %138 = sdiv i32 %137, 2
  %139 = icmp sge i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %160

141:                                              ; preds = %135
  %142 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %143 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %148 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %5, align 8
  %149 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @xfs_iext_rebalance_leaf(%struct.xfs_ifork* %147, %struct.xfs_iext_cursor* %148, %struct.xfs_iext_leaf* %149, i32 %150, i32 %151)
  br label %160

153:                                              ; preds = %141
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %158 = call i32 @xfs_iext_free_last_leaf(%struct.xfs_ifork* %157)
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %140, %159, %146
  ret void
}

declare dso_local %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @trace_xfs_iext_remove(%struct.xfs_inode*, %struct.xfs_iext_cursor*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_iext_valid(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i32 @xfs_iext_inc_seq(%struct.xfs_ifork*) #1

declare dso_local i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork*, %struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @xfs_iext_rec_clear(i32*) #1

declare dso_local i32 @xfs_iext_update_node(%struct.xfs_ifork*, i32, i32, i32, %struct.xfs_iext_leaf*) #1

declare dso_local i32 @xfs_iext_rebalance_leaf(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_iext_leaf*, i32, i32) #1

declare dso_local i32 @xfs_iext_free_last_leaf(%struct.xfs_ifork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
