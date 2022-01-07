; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_o2ffg_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_o2ffg_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_info_freefrag_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_info_freefrag_stats*, i32)* @o2ffg_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2ffg_update_stats(%struct.ocfs2_info_freefrag_stats* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_info_freefrag_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_info_freefrag_stats* %0, %struct.ocfs2_info_freefrag_stats** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %27 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ocfs2_info_freefrag_stats*, %struct.ocfs2_info_freefrag_stats** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_info_freefrag_stats, %struct.ocfs2_info_freefrag_stats* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
