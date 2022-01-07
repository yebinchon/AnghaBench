; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_checkpoint_chksum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_checkpoint_chksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_checkpoint = type { i32 }

@CP_CHKSUM_OFFSET = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.f2fs_checkpoint*)* @f2fs_checkpoint_chksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_checkpoint_chksum(%struct.f2fs_sb_info* %0, %struct.f2fs_checkpoint* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_checkpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.f2fs_checkpoint* %1, %struct.f2fs_checkpoint** %4, align 8
  %7 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %8 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @f2fs_crc32(%struct.f2fs_sb_info* %11, %struct.f2fs_checkpoint* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CP_CHKSUM_OFFSET, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %26 = bitcast %struct.f2fs_checkpoint* %25 to i32*
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i64, i64* @F2FS_BLKSIZE, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = sub nsw i64 %30, %32
  %34 = call i32 @f2fs_chksum(%struct.f2fs_sb_info* %23, i32 %24, i32* %29, i64 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_crc32(%struct.f2fs_sb_info*, %struct.f2fs_checkpoint*, i32) #1

declare dso_local i32 @f2fs_chksum(%struct.f2fs_sb_info*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
