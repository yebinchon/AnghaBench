; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_rebalance_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_rebalance_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_iext_node = type { %struct.xfs_iext_node**, i32* }

@KEYS_PER_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_iext_node* (%struct.xfs_iext_node*, i32*, %struct.xfs_iext_node*, i32)* @xfs_iext_rebalance_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_iext_node* @xfs_iext_rebalance_node(%struct.xfs_iext_node* %0, i32* %1, %struct.xfs_iext_node* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_iext_node*, align 8
  %6 = alloca %struct.xfs_iext_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_iext_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_iext_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_iext_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xfs_iext_node* %0, %struct.xfs_iext_node** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.xfs_iext_node* %2, %struct.xfs_iext_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  store %struct.xfs_iext_node* %19, %struct.xfs_iext_node** %5, align 8
  br label %155

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %6, align 8
  %26 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %25, i32 0, i32 0
  %27 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %27, i64 %31
  %33 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %32, align 8
  store %struct.xfs_iext_node* %33, %struct.xfs_iext_node** %10, align 8
  %34 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %35 = call i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @KEYS_PER_NODE, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %77, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %48 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %55 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %53, i32* %61, align 4
  %62 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %63 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %62, i32 0, i32 0
  %64 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %64, i64 %66
  %68 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %67, align 8
  %69 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %10, align 8
  %70 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %69, i32 0, i32 0
  %71 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %71, i64 %75
  store %struct.xfs_iext_node* %68, %struct.xfs_iext_node** %76, align 8
  br label %77

77:                                               ; preds = %46
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %42

80:                                               ; preds = %42
  %81 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  store %struct.xfs_iext_node* %81, %struct.xfs_iext_node** %5, align 8
  br label %155

82:                                               ; preds = %24
  br label %83

83:                                               ; preds = %82, %20
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node* %87, i32 %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %154

92:                                               ; preds = %83
  %93 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %6, align 8
  %94 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %93, i32 0, i32 0
  %95 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %95, i64 %99
  %101 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %100, align 8
  store %struct.xfs_iext_node* %101, %struct.xfs_iext_node** %13, align 8
  %102 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %13, align 8
  %103 = call i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node* %102, i32 0)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @KEYS_PER_NODE, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %153

109:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %145, %109
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %110
  %115 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %13, align 8
  %116 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %123 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  store i32 %121, i32* %129, align 4
  %130 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %13, align 8
  %131 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %130, i32 0, i32 0
  %132 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %132, i64 %134
  %136 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %135, align 8
  %137 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %138 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %137, i32 0, i32 0
  %139 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %139, i64 %143
  store %struct.xfs_iext_node* %136, %struct.xfs_iext_node** %144, align 8
  br label %145

145:                                              ; preds = %114
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %110

148:                                              ; preds = %110
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %13, align 8
  store %struct.xfs_iext_node* %152, %struct.xfs_iext_node** %5, align 8
  br label %155

153:                                              ; preds = %92
  br label %154

154:                                              ; preds = %153, %83
  store %struct.xfs_iext_node* null, %struct.xfs_iext_node** %5, align 8
  br label %155

155:                                              ; preds = %154, %148, %80, %18
  %156 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %5, align 8
  ret %struct.xfs_iext_node* %156
}

declare dso_local i32 @xfs_iext_node_nr_entries(%struct.xfs_iext_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
