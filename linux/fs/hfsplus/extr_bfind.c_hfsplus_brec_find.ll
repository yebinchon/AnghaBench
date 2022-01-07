; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfsplus_brec_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfsplus_brec_find.c"
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
define dso_local i32 @hfs_brec_find(%struct.hfs_find_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfs_find_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfs_btree*, align 8
  %7 = alloca %struct.hfs_bnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %14 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %15 = load %struct.hfs_btree*, %struct.hfs_btree** %14, align 8
  store %struct.hfs_btree* %15, %struct.hfs_btree** %6, align 8
  %16 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %17 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %16, i32 0, i32 1
  %18 = load %struct.hfs_bnode*, %struct.hfs_bnode** %17, align 8
  %19 = icmp ne %struct.hfs_bnode* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %22 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %21, i32 0, i32 1
  %23 = load %struct.hfs_bnode*, %struct.hfs_bnode** %22, align 8
  %24 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %27 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %26, i32 0, i32 1
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %27, align 8
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %29 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %122

36:                                               ; preds = %25
  %37 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %38 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %9, align 8
  br label %40

40:                                               ; preds = %89, %36
  %41 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %41, i64 %42)
  store %struct.hfs_bnode* %43, %struct.hfs_bnode** %7, align 8
  %44 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %45 = call i64 @IS_ERR(%struct.hfs_bnode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.hfs_bnode* %48)
  store i32 %49, i32* %12, align 4
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %7, align 8
  br label %100

50:                                               ; preds = %40
  %51 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %52 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %105

57:                                               ; preds = %50
  %58 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %59 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @HFS_NODE_INDEX, align 8
  br label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @HFS_NODE_LEAF, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = icmp ne i64 %60, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %105

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %75 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %77 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @__hfs_brec_find(%struct.hfs_bnode* %76, %struct.hfs_find_data* %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %100

83:                                               ; preds = %72
  %84 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %85 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %118

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %9, align 8
  %91 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %92 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %93 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %91, i32* %10, i32 %94, i32 4)
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @be32_to_cpu(i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %99 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %98)
  br label %40

100:                                              ; preds = %82, %47
  %101 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %102 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %103 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %102, i32 0, i32 1
  store %struct.hfs_bnode* %101, %struct.hfs_bnode** %103, align 8
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %3, align 4
  br label %122

105:                                              ; preds = %71, %56
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %108 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %111 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %109, i64 %112, i64 %113, i64 %114)
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %105, %88
  %119 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %120 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %100, %33
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i64) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @PTR_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @__hfs_brec_find(%struct.hfs_bnode*, %struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i32*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
