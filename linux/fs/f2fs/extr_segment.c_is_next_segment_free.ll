; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_is_next_segment_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_is_next_segment_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32 }
%struct.free_segmap_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @is_next_segment_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_next_segment_free(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curseg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.free_segmap_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %9, i32 %10)
  store %struct.curseg_info* %11, %struct.curseg_info** %6, align 8
  %12 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %13 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %17 = call %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info* %16)
  store %struct.free_segmap_info* %17, %struct.free_segmap_info** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %20 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = urem i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.free_segmap_info*, %struct.free_segmap_info** %8, align 8
  %32 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
