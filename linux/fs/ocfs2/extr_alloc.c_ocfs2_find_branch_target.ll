; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_branch_target.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_branch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_list*, i32 }
%struct.ocfs2_extent_list = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [55 x i8] c"Owner %llu has empty extent list (next_free_rec == 0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Owner %llu has extent list where extent # %d has no physical block start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.buffer_head**)* @ocfs2_find_branch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_extent_block*, align 8
  %9 = alloca %struct.ocfs2_extent_list*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %12 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %13 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  store %struct.ocfs2_extent_list* %15, %struct.ocfs2_extent_list** %9, align 8
  br label %16

16:                                               ; preds = %101, %2
  %17 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @le16_to_cpu(i64 %19)
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %102

22:                                               ; preds = %16
  %23 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @le16_to_cpu(i64 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ocfs2_metadata_cache_get_super(i32 %31)
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ocfs2_metadata_cache_owner(i32 %35)
  %37 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i32 %37, i32* %5, align 4
  br label %120

38:                                               ; preds = %22
  %39 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @le16_to_cpu(i64 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le64_to_cpu(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %38
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ocfs2_metadata_cache_get_super(i32 %58)
  %60 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ocfs2_metadata_cache_owner(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %59, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %120

66:                                               ; preds = %38
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %69 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ocfs2_read_extent_block(i32 %71, i32 %72, %struct.buffer_head** %10)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %120

79:                                               ; preds = %66
  %80 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %83, %struct.ocfs2_extent_block** %8, align 8
  %84 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %8, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %84, i32 0, i32 0
  store %struct.ocfs2_extent_list* %85, %struct.ocfs2_extent_list** %9, align 8
  %86 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @le16_to_cpu(i64 %88)
  %90 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %91 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le16_to_cpu(i64 %92)
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %79
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %98, %struct.buffer_head** %11, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %100 = call i32 @get_bh(%struct.buffer_head* %99)
  br label %101

101:                                              ; preds = %95, %79
  br label %16

102:                                              ; preds = %16
  %103 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %103, i32 0, i32 0
  %105 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %104, align 8
  store %struct.ocfs2_extent_list* %105, %struct.ocfs2_extent_list** %9, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %107 = icmp ne %struct.buffer_head* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %108, %102
  %118 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %119 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  store %struct.buffer_head* %118, %struct.buffer_head** %119, align 8
  br label %120

120:                                              ; preds = %117, %76, %55, %28
  %121 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %122 = call i32 @brelse(%struct.buffer_head* %121)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, ...) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
