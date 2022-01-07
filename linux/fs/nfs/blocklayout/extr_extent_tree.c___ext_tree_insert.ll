; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.pnfs_block_extent = type { i64, i64, i32, i32, i64, i32 }

@PNFS_BLOCK_NONE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, %struct.pnfs_block_extent*, i32)* @__ext_tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ext_tree_insert(%struct.rb_root* %0, %struct.pnfs_block_extent* %1, i32 %2) #0 {
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.pnfs_block_extent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %4, align 8
  store %struct.pnfs_block_extent* %1, %struct.pnfs_block_extent** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %11 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %10, i32 0, i32 0
  store %struct.rb_node** %11, %struct.rb_node*** %7, align 8
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  br label %12

12:                                               ; preds = %101, %3
  %13 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %102

16:                                               ; preds = %12
  %17 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  store %struct.rb_node* %18, %struct.rb_node** %8, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %20 = call %struct.pnfs_block_extent* @ext_node(%struct.rb_node* %19)
  store %struct.pnfs_block_extent* %20, %struct.pnfs_block_extent** %9, align 8
  %21 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %22 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %25 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %33 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %34 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %32, %struct.pnfs_block_extent* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %38 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %41 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %43 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PNFS_BLOCK_NONE_DATA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %49 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %52 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %36
  %54 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %55 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %58 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %62 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %63 = call %struct.pnfs_block_extent* @ext_try_to_merge_left(%struct.rb_root* %61, %struct.pnfs_block_extent* %62)
  store %struct.pnfs_block_extent* %63, %struct.pnfs_block_extent** %9, align 8
  br label %112

64:                                               ; preds = %31, %28
  %65 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %66 = load %struct.rb_node*, %struct.rb_node** %65, align 8
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 1
  store %struct.rb_node** %67, %struct.rb_node*** %7, align 8
  br label %101

68:                                               ; preds = %16
  %69 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %70 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %73 = call i64 @ext_f_end(%struct.pnfs_block_extent* %72)
  %74 = icmp sge i64 %71, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %80 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %81 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %79, %struct.pnfs_block_extent* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %85 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %88 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %92 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %93 = call %struct.pnfs_block_extent* @ext_try_to_merge_right(%struct.rb_root* %91, %struct.pnfs_block_extent* %92)
  store %struct.pnfs_block_extent* %93, %struct.pnfs_block_extent** %9, align 8
  br label %112

94:                                               ; preds = %78, %75
  %95 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %96 = load %struct.rb_node*, %struct.rb_node** %95, align 8
  %97 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %96, i32 0, i32 0
  store %struct.rb_node** %97, %struct.rb_node*** %7, align 8
  br label %100

98:                                               ; preds = %68
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %64
  br label %12

102:                                              ; preds = %12
  %103 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %104 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %103, i32 0, i32 3
  %105 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %106 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %107 = call i32 @rb_link_node(i32* %104, %struct.rb_node* %105, %struct.rb_node** %106)
  %108 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %109 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %108, i32 0, i32 3
  %110 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %111 = call i32 @rb_insert_color(i32* %109, %struct.rb_root* %110)
  br label %119

112:                                              ; preds = %83, %53
  %113 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %114 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @nfs4_put_deviceid_node(i32 %115)
  %117 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %118 = call i32 @kfree(%struct.pnfs_block_extent* %117)
  br label %119

119:                                              ; preds = %112, %102
  ret void
}

declare dso_local %struct.pnfs_block_extent* @ext_node(%struct.rb_node*) #1

declare dso_local i64 @ext_can_merge(%struct.pnfs_block_extent*, %struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_try_to_merge_left(%struct.rb_root*, %struct.pnfs_block_extent*) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_try_to_merge_right(%struct.rb_root*, %struct.pnfs_block_extent*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.rb_root*) #1

declare dso_local i32 @nfs4_put_deviceid_node(i32) #1

declare dso_local i32 @kfree(%struct.pnfs_block_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
