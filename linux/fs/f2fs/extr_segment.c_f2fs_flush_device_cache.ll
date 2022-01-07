; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_flush_device_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_flush_device_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_flush_device_cache(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call i32 @f2fs_is_multi_device(%struct.f2fs_sb_info* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %49, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %20, i32 0, i32 2
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @f2fs_test_bit(i32 %19, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @FDEV(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__submit_flush_wait(%struct.f2fs_sb_info* %27, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 2
  %44 = bitcast i32* %43 to i8*
  %45 = call i32 @f2fs_clear_bit(i32 %41, i8* %44)
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %37, %25
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %12

52:                                               ; preds = %36, %12
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_test_bit(i32, i8*) #1

declare dso_local i32 @__submit_flush_wait(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @FDEV(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @f2fs_clear_bit(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
