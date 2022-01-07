; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_node = type { i32*, i8** }

@KEYS_PER_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_ifork*, i32, i8*, i32)* @xfs_iext_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_insert_node(%struct.xfs_ifork* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_ifork*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_iext_node*, align 8
  %10 = alloca %struct.xfs_iext_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %14

14:                                               ; preds = %133, %4
  %15 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %22 = call i32 @xfs_iext_grow(%struct.xfs_ifork* %21)
  br label %23

23:                                               ; preds = %20, %14
  store %struct.xfs_iext_node* null, %struct.xfs_iext_node** %10, align 8
  %24 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.xfs_iext_node* @xfs_iext_find_level(%struct.xfs_ifork* %24, i32 %25, i32 %26)
  store %struct.xfs_iext_node* %27, %struct.xfs_iext_node** %9, align 8
  %28 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @xfs_iext_node_insert_pos(%struct.xfs_iext_node* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %23
  %38 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @xfs_iext_key_cmp(%struct.xfs_iext_node* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %23
  %44 = phi i1 [ true, %23 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @KEYS_PER_NODE, align 4
  %49 = icmp sle i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @KEYS_PER_NODE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = call %struct.xfs_iext_node* @xfs_iext_split_node(%struct.xfs_iext_node** %9, i32* %12, i32* %13)
  store %struct.xfs_iext_node* %56, %struct.xfs_iext_node** %10, align 8
  br label %57

57:                                               ; preds = %55, %43
  %58 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %59 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %60 = icmp ne %struct.xfs_iext_node* %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %69 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %70 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %77 = call i32 @xfs_iext_update_node(%struct.xfs_ifork* %68, i32 %73, i32 %74, i32 %75, %struct.xfs_iext_node* %76)
  br label %78

78:                                               ; preds = %67, %64, %61, %57
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %113, %78
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %86 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %94 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %100 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %108 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %107, i32 0, i32 1
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %106, i8** %112, align 8
  br label %113

113:                                              ; preds = %84
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %11, align 4
  br label %80

116:                                              ; preds = %80
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %119 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %9, align 8
  %126 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %124, i8** %130, align 8
  %131 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %132 = icmp ne %struct.xfs_iext_node* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %116
  %134 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %135 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %6, align 4
  %139 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %140 = bitcast %struct.xfs_iext_node* %139 to i8*
  store i8* %140, i8** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %14

143:                                              ; preds = %116
  ret void
}

declare dso_local i32 @xfs_iext_grow(%struct.xfs_ifork*) #1

declare dso_local %struct.xfs_iext_node* @xfs_iext_find_level(%struct.xfs_ifork*, i32, i32) #1

declare dso_local i32 @xfs_iext_node_insert_pos(%struct.xfs_iext_node*, i32) #1

declare dso_local i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_iext_key_cmp(%struct.xfs_iext_node*, i32, i32) #1

declare dso_local %struct.xfs_iext_node* @xfs_iext_split_node(%struct.xfs_iext_node**, i32*, i32*) #1

declare dso_local i32 @xfs_iext_update_node(%struct.xfs_ifork*, i32, i32, i32, %struct.xfs_iext_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
