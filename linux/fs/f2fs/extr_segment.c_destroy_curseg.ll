; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_curseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_curseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { %struct.curseg_info*, %struct.curseg_info* }
%struct.TYPE_2__ = type { %struct.curseg_info* }

@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @destroy_curseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_curseg(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.curseg_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %6 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  store %struct.curseg_info* %8, %struct.curseg_info** %3, align 8
  %9 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %10 = icmp ne %struct.curseg_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %14 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.curseg_info* null, %struct.curseg_info** %15, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %35, %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %24, i32 0, i32 1
  %26 = load %struct.curseg_info*, %struct.curseg_info** %25, align 8
  %27 = call i32 @kvfree(%struct.curseg_info* %26)
  %28 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %28, i64 %30
  %32 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %31, i32 0, i32 0
  %33 = load %struct.curseg_info*, %struct.curseg_info** %32, align 8
  %34 = call i32 @kvfree(%struct.curseg_info* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %40 = call i32 @kvfree(%struct.curseg_info* %39)
  br label %41

41:                                               ; preds = %38, %11
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.curseg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
