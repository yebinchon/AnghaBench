; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_complete_edge_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_complete_edge_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer_head*, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32)* @ocfs2_complete_edge_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_complete_edge_insert(i32* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_extent_rec*, align 8
  %15 = alloca %struct.ocfs2_extent_rec*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %16, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %26 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %25)
  store %struct.ocfs2_extent_list* %26, %struct.ocfs2_extent_list** %12, align 8
  %27 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %28 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %27)
  store %struct.ocfs2_extent_list* %28, %struct.ocfs2_extent_list** %13, align 8
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %30 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %111, %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %114

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @trace_ocfs2_complete_edge_insert(i32 %38)
  %40 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %46, align 8
  store %struct.ocfs2_extent_list* %47, %struct.ocfs2_extent_list** %11, align 8
  %48 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 0
  %55 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %55, i64 %57
  store %struct.ocfs2_extent_rec* %58, %struct.ocfs2_extent_rec** %14, align 8
  %59 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %65, align 8
  store %struct.ocfs2_extent_list* %66, %struct.ocfs2_extent_list** %11, align 8
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %67, i32 0, i32 0
  %69 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %68, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %69, i64 0
  store %struct.ocfs2_extent_rec* %70, %struct.ocfs2_extent_rec** %15, align 8
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %14, align 8
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %74 = call i32 @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec* %71, %struct.ocfs2_extent_rec* %72, %struct.ocfs2_extent_list* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %77 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  %84 = call i32 @ocfs2_journal_dirty(i32* %75, %struct.buffer_head* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %87 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 8
  %94 = call i32 @ocfs2_journal_dirty(i32* %85, %struct.buffer_head* %93)
  %95 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %96 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %101, align 8
  store %struct.ocfs2_extent_list* %102, %struct.ocfs2_extent_list** %12, align 8
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %104 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %109, align 8
  store %struct.ocfs2_extent_list* %110, %struct.ocfs2_extent_list** %13, align 8
  br label %111

111:                                              ; preds = %37
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %9, align 4
  br label %33

114:                                              ; preds = %33
  %115 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %116 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %121, align 8
  store %struct.ocfs2_extent_list* %122, %struct.ocfs2_extent_list** %11, align 8
  %123 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %124 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %130, align 8
  store %struct.ocfs2_extent_list* %131, %struct.ocfs2_extent_list** %12, align 8
  %132 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %133 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %139, align 8
  store %struct.ocfs2_extent_list* %140, %struct.ocfs2_extent_list** %13, align 8
  %141 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %142 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %143 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %144 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %145 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load %struct.buffer_head*, %struct.buffer_head** %151, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ocfs2_adjust_root_records(%struct.ocfs2_extent_list* %141, %struct.ocfs2_extent_list* %142, %struct.ocfs2_extent_list* %143, i32 %154)
  %156 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %157 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.buffer_head*, %struct.buffer_head** %162, align 8
  store %struct.buffer_head* %163, %struct.buffer_head** %16, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %166 = call i32 @ocfs2_journal_dirty(i32* %164, %struct.buffer_head* %165)
  ret void
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @trace_ocfs2_complete_edge_insert(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_adjust_root_records(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
