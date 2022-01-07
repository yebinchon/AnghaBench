; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___refresh_next_blkoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___refresh_next_blkoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i64, i64 }

@SSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.curseg_info*)* @__refresh_next_blkoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__refresh_next_blkoff(%struct.f2fs_sb_info* %0, %struct.curseg_info* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.curseg_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.curseg_info* %1, %struct.curseg_info** %4, align 8
  %5 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %6 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %13 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %14 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @__next_free_blkoff(%struct.f2fs_sb_info* %11, %struct.curseg_info* %12, i64 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %20 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @__next_free_blkoff(%struct.f2fs_sb_info*, %struct.curseg_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
