; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_iflags_to_xflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_iflags_to_xflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT4_SYNC_FL = common dso_local global i64 0, align 8
@FS_XFLAG_SYNC = common dso_local global i32 0, align 4
@EXT4_IMMUTABLE_FL = common dso_local global i64 0, align 8
@FS_XFLAG_IMMUTABLE = common dso_local global i32 0, align 4
@EXT4_APPEND_FL = common dso_local global i64 0, align 8
@FS_XFLAG_APPEND = common dso_local global i32 0, align 4
@EXT4_NODUMP_FL = common dso_local global i64 0, align 8
@FS_XFLAG_NODUMP = common dso_local global i32 0, align 4
@EXT4_NOATIME_FL = common dso_local global i64 0, align 8
@FS_XFLAG_NOATIME = common dso_local global i32 0, align 4
@EXT4_PROJINHERIT_FL = common dso_local global i64 0, align 8
@FS_XFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ext4_iflags_to_xflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_iflags_to_xflags(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @EXT4_SYNC_FL, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @FS_XFLAG_SYNC, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @EXT4_IMMUTABLE_FL, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @FS_XFLAG_IMMUTABLE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @EXT4_APPEND_FL, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @FS_XFLAG_APPEND, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @EXT4_NODUMP_FL, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @FS_XFLAG_NODUMP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @EXT4_NOATIME_FL, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @FS_XFLAG_NOATIME, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @EXT4_PROJINHERIT_FL, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @FS_XFLAG_PROJINHERIT, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
