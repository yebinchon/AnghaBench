; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_o2ffg_update_histogram.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_o2ffg_update_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_info_free_chunk_list = type { i32*, i32* }

@OCFS2_INFO_MAX_HIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_info_free_chunk_list*, i32)* @o2ffg_update_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2ffg_update_histogram(%struct.ocfs2_info_free_chunk_list* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_info_free_chunk_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ocfs2_info_free_chunk_list* %0, %struct.ocfs2_info_free_chunk_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @__ilog2_u32(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @OCFS2_INFO_MAX_HIST, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* @OCFS2_INFO_MAX_HIST, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.ocfs2_info_free_chunk_list*, %struct.ocfs2_info_free_chunk_list** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_info_free_chunk_list, %struct.ocfs2_info_free_chunk_list* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ocfs2_info_free_chunk_list*, %struct.ocfs2_info_free_chunk_list** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_info_free_chunk_list, %struct.ocfs2_info_free_chunk_list* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %22
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i64 @__ilog2_u32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
