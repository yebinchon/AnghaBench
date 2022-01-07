; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___same_bdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___same_bdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.bio = type { i64, i64 }
%struct.block_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, %struct.bio*)* @__same_bdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__same_bdev(%struct.f2fs_sb_info* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.block_device*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bio* %2, %struct.bio** %6, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info* %8, i32 %9, i32* null)
  store %struct.block_device* %10, %struct.block_device** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.block_device*, %struct.block_device** %7, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.block_device*, %struct.block_device** %7, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br label %26

26:                                               ; preds = %18, %3
  %27 = phi i1 [ false, %3 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
