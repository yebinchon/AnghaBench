; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_file_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_file_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.cuse_conn = type { i64 }

@FUSE_IOCTL_UNRESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @cuse_file_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cuse_file_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuse_file*, align 8
  %8 = alloca %struct.cuse_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  store %struct.fuse_file* %12, %struct.fuse_file** %7, align 8
  %13 = load %struct.fuse_file*, %struct.fuse_file** %7, align 8
  %14 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cuse_conn* @fc_to_cc(i32 %15)
  store %struct.cuse_conn* %16, %struct.cuse_conn** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.cuse_conn*, %struct.cuse_conn** %8, align 8
  %18 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @FUSE_IOCTL_UNRESTRICTED, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @fuse_do_ioctl(%struct.file* %26, i32 %27, i64 %28, i32 %29)
  ret i64 %30
}

declare dso_local %struct.cuse_conn* @fc_to_cc(i32) #1

declare dso_local i64 @fuse_do_ioctl(%struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
