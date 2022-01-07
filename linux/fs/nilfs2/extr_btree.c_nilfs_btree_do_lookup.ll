; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32* }
%struct.nilfs_btree_node = type { i32 }
%struct.nilfs_btree_readahead_info = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32)* @nilfs_btree_do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca %struct.nilfs_btree_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nilfs_btree_node*, align 8
  %15 = alloca %struct.nilfs_btree_readahead_info, align 4
  %16 = alloca %struct.nilfs_btree_readahead_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %24 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %23)
  store %struct.nilfs_btree_node* %24, %struct.nilfs_btree_node** %14, align 8
  %25 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %26 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %32 = call i64 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %6
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %156

37:                                               ; preds = %30
  %38 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @nilfs_btree_node_lookup(%struct.nilfs_btree_node* %38, i32 %39, i32* %19)
  store i32 %40, i32* %20, align 4
  %41 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %44 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %41, i32 %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %51, i64 %53
  %55 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %57 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %56)
  store i32 %57, i32* %21, align 4
  br label %58

58:                                               ; preds = %136, %37
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %143

63:                                               ; preds = %58
  store %struct.nilfs_btree_readahead_info* null, %struct.nilfs_btree_readahead_info** %16, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %72 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  %75 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %15, i32 0, i32 2
  %76 = call i32 @nilfs_btree_get_node(%struct.nilfs_bmap* %71, %struct.nilfs_btree_path* %72, i32 %74, i32* %75)
  %77 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %15, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %19, align 4
  %79 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %15, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %15, i32 0, i32 1
  store i32 7, i32* %80, align 4
  store %struct.nilfs_btree_readahead_info* %15, %struct.nilfs_btree_readahead_info** %16, align 8
  br label %81

81:                                               ; preds = %70, %67, %63
  %82 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %87, i32 0, i32 1
  %89 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %16, align 8
  %90 = call i32 @__nilfs_btree_get_block(%struct.nilfs_bmap* %82, i32 %83, i32** %88, %struct.nilfs_btree_readahead_info* %89)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %7, align 4
  br label %156

95:                                               ; preds = %81
  %96 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %97 = load i32, i32* %18, align 4
  %98 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %96, i32 %97)
  store %struct.nilfs_btree_node* %98, %struct.nilfs_btree_node** %14, align 8
  %99 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %100 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i64 @nilfs_btree_bad_node(%struct.nilfs_bmap* %99, %struct.nilfs_btree_node* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %156

107:                                              ; preds = %95
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @nilfs_btree_node_lookup(%struct.nilfs_btree_node* %111, i32 %112, i32* %19)
  store i32 %113, i32* %20, align 4
  br label %115

114:                                              ; preds = %107
  store i32 0, i32* %19, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %21, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %120, i32 %121, i32 %122)
  store i32 %123, i32* %17, align 4
  br label %136

124:                                              ; preds = %115
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %130 = icmp ne i32 %128, %129
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ true, %124 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @WARN_ON(i32 %133)
  %135 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %131, %119
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %138, i64 %140
  %142 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 8
  br label %58

143:                                              ; preds = %58
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @ENOENT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %156

149:                                              ; preds = %143
  %150 = load i32*, i32** %11, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %17, align 4
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %155, %146, %104, %93, %34
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i64 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_lookup(%struct.nilfs_btree_node*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @__nilfs_btree_get_block(%struct.nilfs_bmap*, i32, i32**, %struct.nilfs_btree_readahead_info*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i64 @nilfs_btree_bad_node(%struct.nilfs_bmap*, %struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
