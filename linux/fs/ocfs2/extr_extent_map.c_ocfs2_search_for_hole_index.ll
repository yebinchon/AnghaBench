; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_search_for_hole_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_search_for_hole_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_list*, i64)* @ocfs2_search_for_hole_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_for_hole_index(%struct.ocfs2_extent_list* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %17, i64 %19
  store %struct.ocfs2_extent_rec* %20, %struct.ocfs2_extent_rec** %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %32

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7

32:                                               ; preds = %27, %7
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
