; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_bmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_bmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, i64, %struct.page**, i64, %struct.hfs_btree* }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32, i32 }

@BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"btree_free_node: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to free bnode %u. bmap not found!\0A\00", align 1
@HFS_NODE_MAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid bmap found! (%u,%d)\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"trying to free free bnode %u(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bmap_free(%struct.hfs_bnode* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  %3 = alloca %struct.hfs_btree*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %2, align 8
  %12 = load i32, i32* @BNODE_MOD, align 4
  %13 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %14 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @hfs_dbg(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %18 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %17, i32 0, i32 5
  %19 = load %struct.hfs_btree*, %struct.hfs_btree** %18, align 8
  store %struct.hfs_btree* %19, %struct.hfs_btree** %3, align 8
  %20 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %21 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %24 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %23, i32 0)
  store %struct.hfs_bnode* %24, %struct.hfs_bnode** %2, align 8
  %25 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %26 = call i64 @IS_ERR(%struct.hfs_bnode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %158

29:                                               ; preds = %1
  %30 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %31 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %30, i32 2, i32* %5)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %80, %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 8
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %43 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %37
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %49 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %53 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %52)
  br label %158

54:                                               ; preds = %37
  %55 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %56 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %55)
  %57 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %57, i32 %58)
  store %struct.hfs_bnode* %59, %struct.hfs_bnode** %2, align 8
  %60 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %61 = call i64 @IS_ERR(%struct.hfs_bnode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %158

64:                                               ; preds = %54
  %65 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %66 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HFS_NODE_MAP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %72 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %75 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %76)
  %78 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %79 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %78)
  br label %158

80:                                               ; preds = %64
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %82 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %81, i32 0, i32* %5)
  store i32 %82, i32* %6, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %85 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %87, 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  %95 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %96 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %95, i32 0, i32 3
  %97 = load %struct.page**, %struct.page*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.page*, %struct.page** %97, i64 %101
  %103 = load %struct.page*, %struct.page** %102, align 8
  store %struct.page* %103, %struct.page** %4, align 8
  %104 = load %struct.page*, %struct.page** %4, align 8
  %105 = call i32* @kmap(%struct.page* %104)
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* @PAGE_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %111, 7
  %113 = shl i32 1, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %83
  %124 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %125 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %128 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %126, i64 %129)
  %131 = load %struct.page*, %struct.page** %4, align 8
  %132 = call i32 @kunmap(%struct.page* %131)
  %133 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %134 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %133)
  br label %158

135:                                              ; preds = %83
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load %struct.page*, %struct.page** %4, align 8
  %145 = call i32 @set_page_dirty(%struct.page* %144)
  %146 = load %struct.page*, %struct.page** %4, align 8
  %147 = call i32 @kunmap(%struct.page* %146)
  %148 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %149 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %148)
  %150 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %151 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %155 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mark_inode_dirty(i32 %156)
  br label %158

158:                                              ; preds = %135, %123, %70, %63, %47, %28
  ret void
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_brec_lenoff(%struct.hfs_bnode*, i32, i32*) #1

declare dso_local i32 @pr_crit(i8*, i32, ...) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
