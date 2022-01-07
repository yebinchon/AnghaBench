; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ocfs2_extent_list*, %struct.buffer_head* }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Owner %llu has a bad extent list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*)* @ocfs2_adjust_rightmost_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_rightmost_records(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_extent_rec* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %84, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %22 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %11, align 8
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %35, align 8
  store %struct.ocfs2_extent_list* %36, %struct.ocfs2_extent_list** %12, align 8
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %20
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ocfs2_metadata_cache_get_super(i32 %46)
  %48 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ocfs2_metadata_cache_owner(i32 %50)
  %52 = call i32 @ocfs2_error(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %87

53:                                               ; preds = %20
  %54 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %54, i32 0, i32 0
  %56 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %56, i64 %59
  store %struct.ocfs2_extent_rec* %60, %struct.ocfs2_extent_rec** %13, align 8
  %61 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %65 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %67 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %66, i32 0, i32 1
  %68 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = call i32 @le32_add_cpu(i32* %67, i32 %71)
  %73 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %73, i32 0, i32 1
  %75 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = sub nsw i32 0, %78
  %80 = call i32 @le32_add_cpu(i32* %74, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call i32 @ocfs2_journal_dirty(i32* %81, %struct.buffer_head* %82)
  br label %84

84:                                               ; preds = %53
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %14

87:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
