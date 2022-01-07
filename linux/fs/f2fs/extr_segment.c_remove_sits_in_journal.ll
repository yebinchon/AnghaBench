; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_remove_sits_in_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_remove_sits_in_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, %struct.f2fs_journal* }
%struct.f2fs_journal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @remove_sits_in_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_sits_in_journal(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.curseg_info*, align 8
  %4 = alloca %struct.f2fs_journal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %9 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %10 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %8, i32 %9)
  store %struct.curseg_info* %10, %struct.curseg_info** %3, align 8
  %11 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %12 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %11, i32 0, i32 1
  %13 = load %struct.f2fs_journal*, %struct.f2fs_journal** %12, align 8
  store %struct.f2fs_journal* %13, %struct.f2fs_journal** %4, align 8
  %14 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %15 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %39, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %20 = call i32 @sits_in_cursum(%struct.f2fs_journal* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @segno_in_journal(%struct.f2fs_journal* %23, i32 %24)
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @__mark_sit_entry_dirty(%struct.f2fs_sb_info* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %35 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @add_sit_entry(i32 %33, i32* %36)
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @update_sits_in_cursum(%struct.f2fs_journal* %43, i32 %45)
  %47 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %48 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %47, i32 0, i32 0
  %49 = call i32 @up_write(i32* %48)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @sits_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @segno_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @__mark_sit_entry_dirty(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @add_sit_entry(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @update_sits_in_cursum(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
