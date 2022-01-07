; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bfind.c_hfs_brec_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bfind.c_hfs_brec_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i64, %struct.hfs_bnode*, i32, %struct.hfs_btree* }
%struct.hfs_bnode = type { i32, i64, i64 }
%struct.hfs_btree = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@HFS_NODE_INDEX = common dso_local global i64 0, align 8
@HFS_NODE_LEAF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"inconsistency in B*Tree (%d,%d,%d,%u,%u)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_brec_find(%struct.hfs_find_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfs_find_data*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %3, align 8
  %11 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %12 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 3
  %13 = load %struct.hfs_btree*, %struct.hfs_btree** %12, align 8
  store %struct.hfs_btree* %13, %struct.hfs_btree** %4, align 8
  %14 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %15 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 1
  %16 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %17 = icmp ne %struct.hfs_bnode* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %20 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %19, i32 0, i32 1
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %20, align 8
  %22 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %25 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %24, i32 0, i32 1
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %25, align 8
  %26 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %27 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %23
  %35 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %36 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %86, %34
  %39 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %39, i64 %40)
  store %struct.hfs_bnode* %41, %struct.hfs_bnode** %5, align 8
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %43 = call i64 @IS_ERR(%struct.hfs_bnode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.hfs_bnode* %46)
  store i32 %47, i32* %10, align 4
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %5, align 8
  br label %97

48:                                               ; preds = %38
  %49 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %50 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %102

55:                                               ; preds = %48
  %56 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %57 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @HFS_NODE_INDEX, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @HFS_NODE_LEAF, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = icmp ne i64 %58, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %102

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %73 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %75 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %76 = call i32 @__hfs_brec_find(%struct.hfs_bnode* %74, %struct.hfs_find_data* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %97

80:                                               ; preds = %70
  %81 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %82 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %115

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %7, align 8
  %88 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %89 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %90 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %88, i32* %8, i32 %91, i32 4)
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @be32_to_cpu(i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %96 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %95)
  br label %38

97:                                               ; preds = %79, %45
  %98 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %99 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %100 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %99, i32 0, i32 1
  store %struct.hfs_bnode* %98, %struct.hfs_bnode** %100, align 8
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %119

102:                                              ; preds = %69, %54
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %105 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %108 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106, i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %102, %85
  %116 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %117 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %97, %31
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i64) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @PTR_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @__hfs_brec_find(%struct.hfs_bnode*, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i32*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
