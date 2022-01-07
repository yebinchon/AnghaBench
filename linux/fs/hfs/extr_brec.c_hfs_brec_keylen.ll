; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_brec.c_hfs_brec_keylen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_brec.c_hfs_brec_keylen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HFS_NODE_INDEX = common dso_local global i64 0, align 8
@HFS_NODE_LEAF = common dso_local global i64 0, align 8
@HFS_TREE_VARIDXKEYS = common dso_local global i32 0, align 4
@HFS_TREE_BIGKEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"keylen %d too large\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_brec_keylen(%struct.hfs_bnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %9 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HFS_NODE_INDEX, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %15 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HFS_NODE_LEAF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %121

20:                                               ; preds = %13, %2
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %22 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HFS_NODE_INDEX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %28 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %26
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HFS_TREE_BIGKEYS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %46 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %35
  %52 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %53 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %44
  br label %119

59:                                               ; preds = %26, %20
  %60 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %61 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %62 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = mul nsw i32 %67, 2
  %69 = sub nsw i32 %65, %68
  %70 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %60, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %121

74:                                               ; preds = %59
  %75 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %76 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HFS_TREE_BIGKEYS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %74
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %84, i32 %85)
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %90 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 2
  %95 = icmp sgt i32 %88, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %83
  br label %118

100:                                              ; preds = %74
  %101 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @hfs_bnode_read_u8(%struct.hfs_bnode* %101, i32 %102)
  %104 = or i32 %103, 1
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %108 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  %113 = icmp sgt i32 %106, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %115)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %100
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %58
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %73, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hfs_bnode_read_u8(%struct.hfs_bnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
