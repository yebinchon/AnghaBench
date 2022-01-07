; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HOT = common dso_local global i32 0, align 4
@WARM = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_io_info*)* @__get_segment_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_segment_type(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca %struct.f2fs_io_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %6 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @F2FS_OPTION(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 2, label %12
    i32 4, label %15
    i32 6, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %14 = call i32 @__get_segment_type_2(%struct.f2fs_io_info* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %17 = call i32 @__get_segment_type_4(%struct.f2fs_io_info* %16)
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %20 = call i32 @__get_segment_type_6(%struct.f2fs_io_info* %19)
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @f2fs_bug_on(i32 %24, i32 1)
  br label %26

26:                                               ; preds = %21, %18, %15, %12
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @IS_HOT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @HOT, align 4
  %32 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %47

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @IS_WARM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @WARM, align 4
  %40 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %41 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @COLD, align 4
  %44 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %45 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @F2FS_OPTION(i32) #1

declare dso_local i32 @__get_segment_type_2(%struct.f2fs_io_info*) #1

declare dso_local i32 @__get_segment_type_4(%struct.f2fs_io_info*) #1

declare dso_local i32 @__get_segment_type_6(%struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i64 @IS_HOT(i32) #1

declare dso_local i64 @IS_WARM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
