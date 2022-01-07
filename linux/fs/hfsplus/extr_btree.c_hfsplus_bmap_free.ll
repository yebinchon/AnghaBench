; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_free.c"
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
  %18 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %25 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %24, i32 0, i32 5
  %26 = load %struct.hfs_btree*, %struct.hfs_btree** %25, align 8
  store %struct.hfs_btree* %26, %struct.hfs_btree** %3, align 8
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %28 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %31 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %30, i32 0)
  store %struct.hfs_bnode* %31, %struct.hfs_bnode** %2, align 8
  %32 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %33 = call i64 @IS_ERR(%struct.hfs_bnode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %165

36:                                               ; preds = %1
  %37 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %38 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %37, i32 2, i32* %5)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %87, %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 8
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %50 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %56 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %60 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %59)
  br label %165

61:                                               ; preds = %44
  %62 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %63 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %62)
  %64 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %64, i32 %65)
  store %struct.hfs_bnode* %66, %struct.hfs_bnode** %2, align 8
  %67 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %68 = call i64 @IS_ERR(%struct.hfs_bnode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %165

71:                                               ; preds = %61
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %73 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HFS_NODE_MAP, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %79 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %82 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80, i64 %83)
  %85 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %86 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %85)
  br label %165

87:                                               ; preds = %71
  %88 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %89 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %88, i32 0, i32* %5)
  store i32 %89, i32* %6, align 4
  br label %39

90:                                               ; preds = %39
  %91 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %92 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sdiv i32 %94, 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %103 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %102, i32 0, i32 3
  %104 = load %struct.page**, %struct.page*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.page*, %struct.page** %104, i64 %108
  %110 = load %struct.page*, %struct.page** %109, align 8
  store %struct.page* %110, %struct.page** %4, align 8
  %111 = load %struct.page*, %struct.page** %4, align 8
  %112 = call i32* @kmap(%struct.page* %111)
  store i32* %112, i32** %8, align 8
  %113 = load i32, i32* @PAGE_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %118, 7
  %120 = shl i32 1, %119
  store i32 %120, i32* %10, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %90
  %131 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %132 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %135 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i8*, i32, ...) @pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %133, i64 %136)
  %138 = load %struct.page*, %struct.page** %4, align 8
  %139 = call i32 @kunmap(%struct.page* %138)
  %140 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %141 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %140)
  br label %165

142:                                              ; preds = %90
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load %struct.page*, %struct.page** %4, align 8
  %152 = call i32 @set_page_dirty(%struct.page* %151)
  %153 = load %struct.page*, %struct.page** %4, align 8
  %154 = call i32 @kunmap(%struct.page* %153)
  %155 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %156 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %155)
  %157 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %158 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %162 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @mark_inode_dirty(i32 %163)
  br label %165

165:                                              ; preds = %142, %130, %77, %70, %54, %35
  ret void
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

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
