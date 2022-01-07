; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___wait_one_discard_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___wait_one_discard_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd = type { i64, i32, i32, i32, i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@D_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.discard_cmd*)* @__wait_one_discard_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wait_one_discard_bio(%struct.f2fs_sb_info* %0, %struct.discard_cmd* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.discard_cmd*, align 8
  %5 = alloca %struct.discard_cmd_control*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.discard_cmd* %1, %struct.discard_cmd** %4, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %9, align 8
  store %struct.discard_cmd_control* %10, %struct.discard_cmd_control** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %11, i32 0, i32 4
  %13 = call i32 @wait_for_completion_io(i32* %12)
  %14 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %15 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @D_DONE, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %17, i32 %23)
  %25 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %2
  %34 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %44 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %45 = call i32 @__remove_discard_cmd(%struct.f2fs_sb_info* %43, %struct.discard_cmd* %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %48 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__remove_discard_cmd(%struct.f2fs_sb_info*, %struct.discard_cmd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
