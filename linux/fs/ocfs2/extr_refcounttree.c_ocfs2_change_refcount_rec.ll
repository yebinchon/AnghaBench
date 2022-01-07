; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_change_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_change_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { %struct.ocfs2_refcount_list }
%struct.ocfs2_refcount_list = type { i32, %struct.ocfs2_refcount_rec* }
%struct.ocfs2_refcount_rec = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32)* @ocfs2_change_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_change_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_list*, align 8
  %16 = alloca %struct.ocfs2_refcount_rec*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %20, %struct.ocfs2_refcount_block** %14, align 8
  %21 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %22 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %21, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %22, %struct.ocfs2_refcount_list** %15, align 8
  %23 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %24 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %23, i32 0, i32 1
  %25 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i64 %27
  store %struct.ocfs2_refcount_rec* %28, %struct.ocfs2_refcount_rec** %16, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %33 = call i32 @ocfs2_journal_access_rb(i32* %29, %struct.ocfs2_caching_info* %30, %struct.buffer_head* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %107

39:                                               ; preds = %6
  %40 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %41 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %40)
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %44 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @trace_ocfs2_change_refcount_rec(i64 %41, i32 %42, i32 %46, i32 %47)
  %49 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %50 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %49, i32 0, i32 0
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @le32_add_cpu(i32* %50, i32 %51)
  %53 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %54 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %60 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = sub nsw i32 %62, 1
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %57
  %66 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %67 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %67, i64 1
  %69 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %70 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memmove(%struct.ocfs2_refcount_rec* %66, %struct.ocfs2_refcount_rec* %68, i32 %78)
  %80 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %80, i32 0, i32 1
  %82 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %81, align 8
  %83 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %84 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %82, i64 %88
  %90 = call i32 @memset(%struct.ocfs2_refcount_rec* %89, i32 0, i32 4)
  br label %91

91:                                               ; preds = %65, %57
  %92 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %93 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %92, i32 0, i32 0
  %94 = call i32 @le16_add_cpu(i32* %93, i32 -1)
  br label %103

95:                                               ; preds = %39
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %106 = call i32 @ocfs2_journal_dirty(i32* %104, %struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %103, %36
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_change_refcount_rec(i64, i32, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_rec*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
