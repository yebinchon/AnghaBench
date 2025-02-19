; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___has_curseg_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___has_curseg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }
%struct.curseg_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @__has_curseg_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__has_curseg_space(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curseg_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %7, i32 %8)
  store %struct.curseg_info* %9, %struct.curseg_info** %6, align 8
  %10 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %11 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
