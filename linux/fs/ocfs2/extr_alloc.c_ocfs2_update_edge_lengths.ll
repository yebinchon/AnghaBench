; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_update_edge_lengths.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_update_edge_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }
%struct.ocfs2_extent_block = type { i64, %struct.ocfs2_extent_list }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*)* @ocfs2_update_edge_lengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_update_edge_lengths(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ocfs2_extent_tree*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_extent_rec*, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca %struct.ocfs2_extent_block*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %5, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %6, align 8
  %14 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %19 = call i32 @ocfs2_journal_access_path(i32 %16, i32* %17, %struct.ocfs2_path* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %118

25:                                               ; preds = %3
  %26 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %27 = call %struct.TYPE_4__* @path_leaf_bh(%struct.ocfs2_path* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %30, %struct.ocfs2_extent_block** %12, align 8
  %31 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %12, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %12, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %37, i32 0, i32 1
  store %struct.ocfs2_extent_list* %38, %struct.ocfs2_extent_list** %11, align 8
  %39 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %51, i32 0, i32 0
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i64 %55
  store %struct.ocfs2_extent_rec* %56, %struct.ocfs2_extent_rec** %10, align 8
  %57 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %63 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %64 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %62, %struct.ocfs2_extent_rec* %63)
  %65 = add nsw i64 %61, %64
  store i64 %65, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %114, %25
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %66
  %73 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %74 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %79, align 8
  store %struct.ocfs2_extent_list* %80, %struct.ocfs2_extent_list** %11, align 8
  %81 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %86, i32 0, i32 0
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %88, i64 %90
  store %struct.ocfs2_extent_rec* %91, %struct.ocfs2_extent_rec** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @cpu_to_le32(i64 %92)
  %94 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i32 0, i32 1
  %98 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %99 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = sub nsw i32 0, %101
  %103 = call i32 @le32_add_cpu(i32* %97, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %106 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ocfs2_journal_dirty(i32* %104, i32 %112)
  br label %114

114:                                              ; preds = %72
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %66

117:                                              ; preds = %66
  br label %118

118:                                              ; preds = %117, %22
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_4__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
