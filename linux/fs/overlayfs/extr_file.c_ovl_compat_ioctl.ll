; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_compat_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_compat_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4
@FS_IOC_SETFLAGS = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @ovl_compat_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_compat_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @FS_IOC_GETFLAGS, align 4
  store i32 %10, i32* %6, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @FS_IOC_SETFLAGS, align 4
  store i32 %12, i32* %6, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @ENOIOCTLCMD, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %21

16:                                               ; preds = %11, %9
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ovl_ioctl(%struct.file* %17, i32 %18, i64 %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local i64 @ovl_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
