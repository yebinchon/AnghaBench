; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_update_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_update_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.nilfs_btree_node = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*)* @nilfs_btree_prepare_update_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_prepare_update_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nilfs_btree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.inode* %3, %struct.inode** %9, align 8
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %14 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %13, %struct.nilfs_btree_path* %14, i32 %16, i32* %11)
  store %struct.nilfs_btree_node* %17, %struct.nilfs_btree_node** %10, align 8
  %18 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %19 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %19, i64 %22
  %24 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %18, i32 %25, i32 %26)
  %28 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %28, i64 %30
  %32 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %27, i32* %33, align 4
  %34 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %34, i64 %36
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i64 %42, i64* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %50, i64 %52
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @nilfs_dat_prepare_update(%struct.inode* %49, i32* %55, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %4
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %144

67:                                               ; preds = %4
  %68 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @buffer_nilfs_node(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %67
  %77 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %77, i64 %79
  %81 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32 %83, i32* %89, align 8
  %90 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %90, i64 %92
  %94 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %97, i64 %99
  %101 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i64 %96, i64* %102, align 8
  %103 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %103, i64 %105
  %107 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %109, i64 %111
  %113 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %108, i32* %114, align 8
  %115 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %116 = call %struct.TYPE_8__* @NILFS_BMAP_I(%struct.nilfs_bmap* %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %118, i64 %120
  %122 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %121, i32 0, i32 2
  %123 = call i32 @nilfs_btnode_prepare_change_key(i32* %117, %struct.TYPE_7__* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %76
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %128, i64 %130
  %132 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %134, i64 %136
  %138 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @nilfs_dat_abort_update(%struct.inode* %127, i32* %133, i32* %139)
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %5, align 4
  br label %144

142:                                              ; preds = %76
  br label %143

143:                                              ; preds = %142, %67
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %126, %65
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_dat_prepare_update(%struct.inode*, i32*, i32*) #1

declare dso_local i64 @buffer_nilfs_node(i32) #1

declare dso_local i32 @nilfs_btnode_prepare_change_key(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_dat_abort_update(%struct.inode*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
