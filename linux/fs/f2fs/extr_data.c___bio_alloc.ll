; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___bio_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___bio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.f2fs_sb_info*, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_io_info = type { i64, i32, i32, i32, i32, %struct.f2fs_sb_info* }

@f2fs_read_end_io = common dso_local global i32 0, align 4
@f2fs_write_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.f2fs_io_info*, i32)* @__bio_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @__bio_alloc(%struct.f2fs_io_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 5
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  store %struct.f2fs_sb_info* %9, %struct.f2fs_sb_info** %5, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.bio* @f2fs_bio_alloc(%struct.f2fs_sb_info* %10, i32 %11, i32 1)
  store %struct.bio* %12, %struct.bio** %6, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %14 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %15 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = call i32 @f2fs_target_device(%struct.f2fs_sb_info* %13, i32 %16, %struct.bio* %17)
  %19 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %20 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @is_read_io(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @f2fs_read_end_io, align 4
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store %struct.f2fs_sb_info* null, %struct.f2fs_sb_info** %29, align 8
  br label %47

30:                                               ; preds = %2
  %31 = load i32, i32* @f2fs_write_end_io, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  store %struct.f2fs_sb_info* %34, %struct.f2fs_sb_info** %36, align 8
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %38 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %39 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %42 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @f2fs_io_type_to_rw_hint(%struct.f2fs_sb_info* %37, i32 %40, i32 %43)
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %30, %24
  %48 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %49 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %54 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bio*, %struct.bio** %6, align 8
  %57 = call i32 @wbc_init_bio(i64 %55, %struct.bio* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.bio*, %struct.bio** %6, align 8
  ret %struct.bio* %59
}

declare dso_local %struct.bio* @f2fs_bio_alloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_target_device(%struct.f2fs_sb_info*, i32, %struct.bio*) #1

declare dso_local i64 @is_read_io(i32) #1

declare dso_local i32 @f2fs_io_type_to_rw_hint(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @wbc_init_bio(i64, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
