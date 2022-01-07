; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_verify_fio_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_verify_fio_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i32, i32, %struct.f2fs_sb_info* }
%struct.f2fs_sb_info = type { i32 }

@META_GENERIC = common dso_local global i32 0, align 4
@DATA_GENERIC = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_io_info*)* @verify_fio_blkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_fio_blkaddr(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca %struct.f2fs_io_info*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %2, align 8
  %4 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %5 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %4, i32 0, i32 2
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  store %struct.f2fs_sb_info* %6, %struct.f2fs_sb_info** %3, align 8
  %7 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %8 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @__is_valid_data_blkaddr(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %15 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %18 = call i64 @__is_meta_io(%struct.f2fs_io_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @META_GENERIC, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @DATA_GENERIC, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @verify_blkaddr(%struct.f2fs_sb_info* %13, i32 %16, i32 %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %30 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %33 = call i64 @__is_meta_io(%struct.f2fs_io_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @META_GENERIC, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @verify_blkaddr(%struct.f2fs_sb_info* %28, i32 %31, i32 %40)
  ret void
}

declare dso_local i64 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @verify_blkaddr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @__is_meta_io(%struct.f2fs_io_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
