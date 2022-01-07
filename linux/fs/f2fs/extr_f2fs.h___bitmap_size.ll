; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___bitmap_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___bitmap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_checkpoint = type { i32, i32 }

@NAT_BITMAP = common dso_local global i32 0, align 4
@SIT_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.f2fs_sb_info*, i32)* @__bitmap_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bitmap_size(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_checkpoint*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %8 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %7)
  store %struct.f2fs_checkpoint* %8, %struct.f2fs_checkpoint** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NAT_BITMAP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %14 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  store i64 %16, i64* %3, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SIT_BITMAP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %23 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %3, align 8
  br label %28

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %27, %21, %12
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
