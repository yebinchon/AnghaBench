; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_divide_leaf_refcount_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_divide_leaf_refcount_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_block = type { i32, %struct.ocfs2_refcount_list }
%struct.ocfs2_refcount_list = type { i32, i32*, i32 }

@cmp_refcount_rec_by_low_cpos = common dso_local global i32 0, align 4
@swap_refcount_rec = common dso_local global i32 0, align 4
@cmp_refcount_rec_by_cpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.buffer_head*, i32*)* @ocfs2_divide_leaf_refcount_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_divide_leaf_refcount_block(%struct.buffer_head* %0, %struct.buffer_head* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  %13 = alloca %struct.ocfs2_refcount_list*, align 8
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_list*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %19, %struct.ocfs2_refcount_block** %12, align 8
  %20 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %21 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %20, i32 0, i32 1
  store %struct.ocfs2_refcount_list* %21, %struct.ocfs2_refcount_list** %13, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %25, %struct.ocfs2_refcount_block** %14, align 8
  %26 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %27 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %26, i32 0, i32 1
  store %struct.ocfs2_refcount_list* %27, %struct.ocfs2_refcount_list** %15, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %32 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = call i32 @trace_ocfs2_divide_leaf_refcount_block(i64 %30, i32 %34, i32 %38)
  %40 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %41 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %40, i32 0, i32 1
  %42 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %43 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i32, i32* @cmp_refcount_rec_by_low_cpos, align 4
  %47 = load i32, i32* @swap_refcount_rec, align 4
  %48 = call i32 @sort(i32** %41, i32 %45, i32 4, i32 %46, i32 %47)
  %49 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %50 = call i32 @ocfs2_find_refcount_split_pos(%struct.ocfs2_refcount_list* %49, i32* %11, i32* %8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %122

57:                                               ; preds = %3
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %61 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %63 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %69 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %72 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32* %70, i32* %76, i32 %80)
  %82 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %83 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memset(i32* %87, i32 0, i32 %91)
  %93 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %94 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @le16_add_cpu(i32* %94, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %101 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %103 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %102, i32 0, i32 1
  %104 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %13, align 8
  %105 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = load i32, i32* @cmp_refcount_rec_by_cpos, align 4
  %109 = load i32, i32* @swap_refcount_rec, align 4
  %110 = call i32 @sort(i32** %103, i32 %107, i32 4, i32 %108, i32 %109)
  %111 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %112 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %111, i32 0, i32 1
  %113 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %114 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @le16_to_cpu(i32 %115)
  %117 = load i32, i32* @cmp_refcount_rec_by_cpos, align 4
  %118 = load i32, i32* @swap_refcount_rec, align 4
  %119 = call i32 @sort(i32** %112, i32 %116, i32 4, i32 %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %57, %53
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @trace_ocfs2_divide_leaf_refcount_block(i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sort(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_find_refcount_split_pos(%struct.ocfs2_refcount_list*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
