; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_rebalance_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_rebalance_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i32, %struct.xfs_iext_leaf* }
%struct.xfs_iext_leaf = type { %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf*, i32* }

@RECS_PER_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_iext_leaf*, i32, i32)* @xfs_iext_rebalance_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_rebalance_leaf(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1, %struct.xfs_iext_leaf* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_ifork*, align 8
  %7 = alloca %struct.xfs_iext_cursor*, align 8
  %8 = alloca %struct.xfs_iext_leaf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %6, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %7, align 8
  store %struct.xfs_iext_leaf* %2, %struct.xfs_iext_leaf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %148

18:                                               ; preds = %5
  %19 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %20 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %19, i32 0, i32 0
  %21 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %20, align 8
  %22 = icmp ne %struct.xfs_iext_leaf* %21, null
  br i1 %22, label %23, label %79

23:                                               ; preds = %18
  %24 = load %struct.xfs_ifork*, %struct.xfs_ifork** %6, align 8
  %25 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %26 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %25, i32 0, i32 0
  %27 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %26, align 8
  %28 = call i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork* %24, %struct.xfs_iext_leaf* %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @RECS_PER_LEAF, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %41 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %48 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %47, i32 0, i32 0
  %49 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %48, align 8
  %50 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %46, i32* %56, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %62 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %61, i32 0, i32 1
  %63 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %62, align 8
  %64 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %65 = icmp eq %struct.xfs_iext_leaf* %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %68 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %67, i32 0, i32 0
  %69 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %68, align 8
  %70 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %71 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %70, i32 0, i32 1
  store %struct.xfs_iext_leaf* %69, %struct.xfs_iext_leaf** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %74 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %66, %60
  br label %148

78:                                               ; preds = %23
  br label %79

79:                                               ; preds = %78, %18
  %80 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %81 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %80, i32 0, i32 1
  %82 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %81, align 8
  %83 = icmp ne %struct.xfs_iext_leaf* %82, null
  br i1 %83, label %84, label %147

84:                                               ; preds = %79
  %85 = load %struct.xfs_ifork*, %struct.xfs_ifork** %6, align 8
  %86 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %87 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %86, i32 0, i32 1
  %88 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %87, align 8
  %89 = call i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork* %85, %struct.xfs_iext_leaf* %88, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @RECS_PER_LEAF, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %102 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %101, i32 0, i32 1
  %103 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %102, align 8
  %104 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %111 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 %109, i32* %117, align 4
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %123 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %122, i32 0, i32 1
  %124 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %123, align 8
  %125 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %126 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %125, i32 0, i32 1
  %127 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %126, align 8
  %128 = icmp eq %struct.xfs_iext_leaf* %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %131 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %132 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %131, i32 0, i32 1
  store %struct.xfs_iext_leaf* %130, %struct.xfs_iext_leaf** %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %135 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %129, %121
  %139 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %140 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %139, i32 0, i32 1
  %141 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %140, align 8
  %142 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf* %141, i32 0)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %144 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %143, i32 0, i32 1
  %145 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %144, align 8
  store %struct.xfs_iext_leaf* %145, %struct.xfs_iext_leaf** %8, align 8
  br label %148

146:                                              ; preds = %84
  br label %147

147:                                              ; preds = %146, %79
  br label %179

148:                                              ; preds = %138, %77, %17
  %149 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %150 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %149, i32 0, i32 0
  %151 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %150, align 8
  %152 = icmp ne %struct.xfs_iext_leaf* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %155 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %154, i32 0, i32 1
  %156 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %155, align 8
  %157 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %158 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %157, i32 0, i32 0
  %159 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %158, align 8
  %160 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %159, i32 0, i32 1
  store %struct.xfs_iext_leaf* %156, %struct.xfs_iext_leaf** %160, align 8
  br label %161

161:                                              ; preds = %153, %148
  %162 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %163 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %162, i32 0, i32 1
  %164 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %163, align 8
  %165 = icmp ne %struct.xfs_iext_leaf* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %168 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %167, i32 0, i32 0
  %169 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %168, align 8
  %170 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %171 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %170, i32 0, i32 1
  %172 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %171, align 8
  %173 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %172, i32 0, i32 0
  store %struct.xfs_iext_leaf* %169, %struct.xfs_iext_leaf** %173, align 8
  br label %174

174:                                              ; preds = %166, %161
  %175 = load %struct.xfs_ifork*, %struct.xfs_ifork** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %8, align 8
  %178 = call i32 @xfs_iext_remove_node(%struct.xfs_ifork* %175, i32 %176, %struct.xfs_iext_leaf* %177)
  br label %179

179:                                              ; preds = %174, %147
  ret void
}

declare dso_local i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork*, %struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @xfs_iext_leaf_key(%struct.xfs_iext_leaf*, i32) #1

declare dso_local i32 @xfs_iext_remove_node(%struct.xfs_ifork*, i32, %struct.xfs_iext_leaf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
