; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_free_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_free_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_segmap_info = type { %struct.free_segmap_info*, %struct.free_segmap_info* }
%struct.TYPE_2__ = type { %struct.free_segmap_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @destroy_free_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_free_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.free_segmap_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.free_segmap_info*, %struct.free_segmap_info** %6, align 8
  store %struct.free_segmap_info* %7, %struct.free_segmap_info** %3, align 8
  %8 = load %struct.free_segmap_info*, %struct.free_segmap_info** %3, align 8
  %9 = icmp ne %struct.free_segmap_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %13 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.free_segmap_info* null, %struct.free_segmap_info** %14, align 8
  %15 = load %struct.free_segmap_info*, %struct.free_segmap_info** %3, align 8
  %16 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %15, i32 0, i32 1
  %17 = load %struct.free_segmap_info*, %struct.free_segmap_info** %16, align 8
  %18 = call i32 @kvfree(%struct.free_segmap_info* %17)
  %19 = load %struct.free_segmap_info*, %struct.free_segmap_info** %3, align 8
  %20 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %19, i32 0, i32 0
  %21 = load %struct.free_segmap_info*, %struct.free_segmap_info** %20, align 8
  %22 = call i32 @kvfree(%struct.free_segmap_info* %21)
  %23 = load %struct.free_segmap_info*, %struct.free_segmap_info** %3, align 8
  %24 = call i32 @kvfree(%struct.free_segmap_info* %23)
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.free_segmap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
