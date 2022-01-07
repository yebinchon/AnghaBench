; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_search_extent_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_search_extent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %11
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 0
  %21 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %21, i64 %23
  store %struct.ocfs2_extent_rec* %24, %struct.ocfs2_extent_rec** %7, align 8
  %25 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %30 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %31 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_rec* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %38, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %11

48:                                               ; preds = %42, %11
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
