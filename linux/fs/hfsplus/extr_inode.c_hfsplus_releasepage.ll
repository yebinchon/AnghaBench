; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.hfs_btree = type { i64, i32, i32, i32 }
%struct.hfs_bnode = type { i32 }
%struct.TYPE_4__ = type { %struct.hfs_btree*, %struct.hfs_btree*, %struct.hfs_btree* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @hfsplus_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.hfs_btree*, align 8
  %9 = alloca %struct.hfs_bnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %7, align 8
  store i32 1, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %39 [
    i32 128, label %24
    i32 129, label %29
    i32 130, label %34
  ]

24:                                               ; preds = %2
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %27, align 8
  store %struct.hfs_btree* %28, %struct.hfs_btree** %8, align 8
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.hfs_btree*, %struct.hfs_btree** %32, align 8
  store %struct.hfs_btree* %33, %struct.hfs_btree** %8, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.hfs_btree*, %struct.hfs_btree** %37, align 8
  store %struct.hfs_btree* %38, %struct.hfs_btree** %8, align 8
  br label %41

39:                                               ; preds = %2
  %40 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %155

41:                                               ; preds = %34, %29, %24
  %42 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %43 = icmp ne %struct.hfs_btree* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %155

45:                                               ; preds = %41
  %46 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %47 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %45
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %56 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = sub nsw i32 %57, %58
  %60 = ashr i32 %54, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %62 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %61, i32 0, i32 3
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %64, i32 %65)
  store %struct.hfs_bnode* %66, %struct.hfs_bnode** %9, align 8
  %67 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %68 = icmp ne %struct.hfs_bnode* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %51
  br label %77

70:                                               ; preds = %51
  %71 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %72 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %71, i32 0, i32 0
  %73 = call i64 @atomic_read(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %69
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %82 = icmp ne %struct.hfs_bnode* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %85 = call i32 @hfs_bnode_unhash(%struct.hfs_bnode* %84)
  %86 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %87 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %86)
  br label %88

88:                                               ; preds = %83, %80, %77
  %89 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %90 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %89, i32 0, i32 3
  %91 = call i32 @spin_unlock(i32* %90)
  br label %146

92:                                               ; preds = %45
  %93 = load %struct.page*, %struct.page** %4, align 8
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %98 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %96, %99
  %101 = shl i32 %95, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %104 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  %107 = shl i32 1, %106
  store i32 %107, i32* %11, align 4
  %108 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %109 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %108, i32 0, i32 3
  %110 = call i32 @spin_lock(i32* %109)
  br label %111

111:                                              ; preds = %140, %92
  %112 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %112, i32 %113)
  store %struct.hfs_bnode* %115, %struct.hfs_bnode** %9, align 8
  %116 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %117 = icmp ne %struct.hfs_bnode* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  br label %130

119:                                              ; preds = %111
  %120 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %121 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %120, i32 0, i32 0
  %122 = call i64 @atomic_read(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  br label %142

125:                                              ; preds = %119
  %126 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %127 = call i32 @hfs_bnode_unhash(%struct.hfs_bnode* %126)
  %128 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %129 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %128)
  br label %130

130:                                              ; preds = %125, %118
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %137 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi i1 [ false, %130 ], [ %139, %134 ]
  br i1 %141, label %111, label %142

142:                                              ; preds = %140, %124
  %143 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %144 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %143, i32 0, i32 3
  %145 = call i32 @spin_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %88
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.page*, %struct.page** %4, align 8
  %151 = call i32 @try_to_free_buffers(%struct.page* %150)
  br label %153

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %149
  %154 = phi i32 [ %151, %149 ], [ 0, %152 ]
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %44, %39
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hfs_bnode_unhash(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_free(%struct.hfs_bnode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
