; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_ioctl_set_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_ioctl_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@S_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i32)* @ovl_ioctl_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_ioctl_set_flags(%struct.file* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %11, align 8
  %16 = call i32 @inode_owner_or_capable(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EACCES, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i64 @mnt_want_write_file(%struct.file* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %5, align 8
  br label %73

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = call i32 @inode_lock(%struct.inode* %29)
  %31 = load i64, i64* @EPERM, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %10, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @READ_ONCE(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %37, %38
  %40 = load i32, i32* @S_APPEND, align 4
  %41 = load i32, i32* @S_IMMUTABLE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %47 = call i32 @capable(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %67

50:                                               ; preds = %45, %28
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = call i32 @file_dentry(%struct.file* %51)
  %53 = load i32, i32* @O_WRONLY, align 4
  %54 = call i64 @ovl_maybe_copy_up(i32 %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @ovl_real_ioctl(%struct.file* %59, i32 %60, i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call i32 @ovl_inode_real(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call i32 @ovl_copyflags(i32 %64, %struct.inode* %65)
  br label %67

67:                                               ; preds = %58, %57, %49
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @inode_unlock(%struct.inode* %68)
  %70 = load %struct.file*, %struct.file** %6, align 8
  %71 = call i32 @mnt_drop_write_file(%struct.file* %70)
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %67, %26, %18
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i64 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @ovl_maybe_copy_up(i32, i32) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i64 @ovl_real_ioctl(%struct.file*, i32, i64) #1

declare dso_local i32 @ovl_copyflags(i32, %struct.inode*) #1

declare dso_local i32 @ovl_inode_real(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
