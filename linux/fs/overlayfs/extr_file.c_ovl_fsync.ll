; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fd = type { %struct.file* }
%struct.cred = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @ovl_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ovl_real_fdget_meta(%struct.file* %13, %struct.fd* %10, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %24, align 8
  %26 = call %struct.TYPE_3__* @file_inode(%struct.file* %25)
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = call %struct.TYPE_3__* @file_inode(%struct.file* %27)
  %29 = call i64 @ovl_inode_upper(%struct.TYPE_3__* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  %31 = icmp eq %struct.TYPE_3__* %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = call %struct.TYPE_3__* @file_inode(%struct.file* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.cred* @ovl_override_creds(i32 %36)
  store %struct.cred* %37, %struct.cred** %11, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %39 = load %struct.file*, %struct.file** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @vfs_fsync_range(%struct.file* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.cred*, %struct.cred** %11, align 8
  %45 = call i32 @revert_creds(%struct.cred* %44)
  br label %46

46:                                               ; preds = %32, %23
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = call i32 @fdput(%struct.file* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ovl_real_fdget_meta(%struct.file*, %struct.fd*, i32) #1

declare dso_local %struct.TYPE_3__* @file_inode(%struct.file*) #1

declare dso_local i64 @ovl_inode_upper(%struct.TYPE_3__*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @vfs_fsync_range(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @fdput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
