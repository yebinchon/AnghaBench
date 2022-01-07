; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_real_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_real_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fd = type { i32 }
%struct.cred = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @ovl_real_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_real_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fd, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call i64 @ovl_real_fdget(%struct.file* %11, %struct.fd* %8)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %4, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.TYPE_2__* @file_inode(%struct.file* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cred* @ovl_override_creds(i32 %21)
  store %struct.cred* %22, %struct.cred** %9, align 8
  %23 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @vfs_ioctl(i32 %24, i32 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.cred*, %struct.cred** %9, align 8
  %29 = call i32 @revert_creds(%struct.cred* %28)
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fdput(i32 %31)
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @ovl_real_fdget(%struct.file*, %struct.fd*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i64 @vfs_ioctl(i32, i32, i64) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
