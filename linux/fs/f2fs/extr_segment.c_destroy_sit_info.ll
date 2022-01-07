; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_sit_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_sit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { %struct.sit_info*, %struct.sit_info*, %struct.sit_info*, %struct.sit_info*, %struct.sit_info*, %struct.sit_info*, %struct.sit_info*, %struct.sit_info* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @destroy_sit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_sit_info(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.sit_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %4)
  store %struct.sit_info* %5, %struct.sit_info** %3, align 8
  %6 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %7 = icmp ne %struct.sit_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %11 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %10, i32 0, i32 5
  %12 = load %struct.sit_info*, %struct.sit_info** %11, align 8
  %13 = icmp ne %struct.sit_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %16 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %15, i32 0, i32 7
  %17 = load %struct.sit_info*, %struct.sit_info** %16, align 8
  %18 = call i32 @kvfree(%struct.sit_info* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %21 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %20, i32 0, i32 6
  %22 = load %struct.sit_info*, %struct.sit_info** %21, align 8
  %23 = call i32 @kvfree(%struct.sit_info* %22)
  %24 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %25 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %24, i32 0, i32 5
  %26 = load %struct.sit_info*, %struct.sit_info** %25, align 8
  %27 = call i32 @kvfree(%struct.sit_info* %26)
  %28 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %29 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %28, i32 0, i32 4
  %30 = load %struct.sit_info*, %struct.sit_info** %29, align 8
  %31 = call i32 @kvfree(%struct.sit_info* %30)
  %32 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %33 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %32, i32 0, i32 3
  %34 = load %struct.sit_info*, %struct.sit_info** %33, align 8
  %35 = call i32 @kvfree(%struct.sit_info* %34)
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %37 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %40 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %39, i32 0, i32 2
  %41 = load %struct.sit_info*, %struct.sit_info** %40, align 8
  %42 = call i32 @kvfree(%struct.sit_info* %41)
  %43 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %44 = call i32 @kvfree(%struct.sit_info* %43)
  br label %45

45:                                               ; preds = %19, %8
  ret void
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.sit_info*) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
