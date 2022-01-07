; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_submit_flush_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_submit_flush_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FLUSH_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @submit_flush_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_flush_wait(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = call i32 @f2fs_is_multi_device(%struct.f2fs_sb_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__submit_flush_wait(%struct.f2fs_sb_info* %13, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FLUSH_INO, align 4
  %32 = call i32 @f2fs_is_dirty_device(%struct.f2fs_sb_info* %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @FDEV(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__submit_flush_wait(%struct.f2fs_sb_info* %36, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %21

50:                                               ; preds = %45, %21
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__submit_flush_wait(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_is_dirty_device(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @FDEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
