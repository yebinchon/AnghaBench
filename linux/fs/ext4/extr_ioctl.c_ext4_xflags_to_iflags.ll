; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_xflags_to_iflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_xflags_to_iflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_XFLAG_SYNC = common dso_local global i32 0, align 4
@EXT4_SYNC_FL = common dso_local global i64 0, align 8
@FS_XFLAG_IMMUTABLE = common dso_local global i32 0, align 4
@EXT4_IMMUTABLE_FL = common dso_local global i64 0, align 8
@FS_XFLAG_APPEND = common dso_local global i32 0, align 4
@EXT4_APPEND_FL = common dso_local global i64 0, align 8
@FS_XFLAG_NODUMP = common dso_local global i32 0, align 4
@EXT4_NODUMP_FL = common dso_local global i64 0, align 8
@FS_XFLAG_NOATIME = common dso_local global i32 0, align 4
@EXT4_NOATIME_FL = common dso_local global i64 0, align 8
@FS_XFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@EXT4_PROJINHERIT_FL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @ext4_xflags_to_iflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_xflags_to_iflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FS_XFLAG_SYNC, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @EXT4_SYNC_FL, align 8
  %10 = load i64, i64* %3, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @FS_XFLAG_IMMUTABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @EXT4_IMMUTABLE_FL, align 8
  %19 = load i64, i64* %3, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @FS_XFLAG_APPEND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @EXT4_APPEND_FL, align 8
  %28 = load i64, i64* %3, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @FS_XFLAG_NODUMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @EXT4_NODUMP_FL, align 8
  %37 = load i64, i64* %3, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @FS_XFLAG_NOATIME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @EXT4_NOATIME_FL, align 8
  %46 = load i64, i64* %3, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @FS_XFLAG_PROJINHERIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @EXT4_PROJINHERIT_FL, align 8
  %55 = load i64, i64* %3, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
