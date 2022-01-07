; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_target_device.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_target_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.f2fs_sb_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.block_device* }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.block_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info* %0, i64 %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.block_device*, %struct.block_device** %16, align 8
  store %struct.block_device* %17, %struct.block_device** %7, align 8
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %19 = call i64 @f2fs_is_multi_device(%struct.f2fs_sb_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  call void @FDEV(%struct.TYPE_6__* sret %9, i32 %29)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  call void @FDEV(%struct.TYPE_6__* sret %10, i32 %35)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  call void @FDEV(%struct.TYPE_6__* sret %11, i32 %41)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  %46 = load i32, i32* %8, align 4
  call void @FDEV(%struct.TYPE_6__* sret %12, i32 %46)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %48 = load %struct.block_device*, %struct.block_device** %47, align 8
  store %struct.block_device* %48, %struct.block_device** %7, align 8
  br label %53

49:                                               ; preds = %34, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %40, %22
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = icmp ne %struct.bio* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.bio*, %struct.bio** %6, align 8
  %59 = load %struct.block_device*, %struct.block_device** %7, align 8
  %60 = call i32 @bio_set_dev(%struct.bio* %58, %struct.block_device* %59)
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @SECTOR_FROM_BLOCK(i64 %61)
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.block_device*, %struct.block_device** %7, align 8
  ret %struct.block_device* %67
}

declare dso_local i64 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local void @FDEV(%struct.TYPE_6__* sret, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @SECTOR_FROM_BLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
