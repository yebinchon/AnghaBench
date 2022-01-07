; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.hfs_btree = type { i64, i32, i32, i32 }
%struct.hfs_bnode = type { i32 }
%struct.TYPE_4__ = type { %struct.hfs_btree*, %struct.hfs_btree* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @hfs_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_releasepage(%struct.page* %0, i32 %1) #0 {
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
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %2
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %27, align 8
  store %struct.hfs_btree* %28, %struct.hfs_btree** %8, align 8
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.hfs_btree*, %struct.hfs_btree** %32, align 8
  store %struct.hfs_btree* %33, %struct.hfs_btree** %8, align 8
  br label %36

34:                                               ; preds = %2
  %35 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %150

36:                                               ; preds = %29, %24
  %37 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %38 = icmp ne %struct.hfs_btree* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %150

40:                                               ; preds = %36
  %41 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %42 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %40
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %51 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = sub nsw i32 %52, %53
  %55 = ashr i32 %49, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %57 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %56, i32 0, i32 3
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %59, i32 %60)
  store %struct.hfs_bnode* %61, %struct.hfs_bnode** %9, align 8
  %62 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %63 = icmp ne %struct.hfs_bnode* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %72

65:                                               ; preds = %46
  %66 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %67 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %66, i32 0, i32 0
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %77 = icmp ne %struct.hfs_bnode* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %80 = call i32 @hfs_bnode_unhash(%struct.hfs_bnode* %79)
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %82 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %81)
  br label %83

83:                                               ; preds = %78, %75, %72
  %84 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %85 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  br label %141

87:                                               ; preds = %40
  %88 = load %struct.page*, %struct.page** %4, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %93 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  %96 = shl i32 %90, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @PAGE_SHIFT, align 4
  %98 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %99 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  %102 = shl i32 1, %101
  store i32 %102, i32* %11, align 4
  %103 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %104 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %103, i32 0, i32 3
  %105 = call i32 @spin_lock(i32* %104)
  br label %106

106:                                              ; preds = %135, %87
  %107 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %107, i32 %108)
  store %struct.hfs_bnode* %110, %struct.hfs_bnode** %9, align 8
  %111 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %112 = icmp ne %struct.hfs_bnode* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %125

114:                                              ; preds = %106
  %115 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %116 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %115, i32 0, i32 0
  %117 = call i64 @atomic_read(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %137

120:                                              ; preds = %114
  %121 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %122 = call i32 @hfs_bnode_unhash(%struct.hfs_bnode* %121)
  %123 = load %struct.hfs_bnode*, %struct.hfs_bnode** %9, align 8
  %124 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %123)
  br label %125

125:                                              ; preds = %120, %113
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %132 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br label %135

135:                                              ; preds = %129, %125
  %136 = phi i1 [ false, %125 ], [ %134, %129 ]
  br i1 %136, label %106, label %137

137:                                              ; preds = %135, %119
  %138 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %139 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %138, i32 0, i32 3
  %140 = call i32 @spin_unlock(i32* %139)
  br label %141

141:                                              ; preds = %137, %83
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.page*, %struct.page** %4, align 8
  %146 = call i32 @try_to_free_buffers(%struct.page* %145)
  br label %148

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %144
  %149 = phi i32 [ %146, %144 ], [ 0, %147 ]
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %39, %34
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.super_block*) #1

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
