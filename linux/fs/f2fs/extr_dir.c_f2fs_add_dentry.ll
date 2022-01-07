; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_add_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_add_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_name = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_add_dentry(%struct.inode* %0, %struct.fscrypt_name* %1, %struct.inode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fscrypt_name*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qstr, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fscrypt_name* %1, %struct.fscrypt_name** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %16 = call i32 @fname_name(%struct.fscrypt_name* %15)
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %19 = call i32 @fname_len(%struct.fscrypt_name* %18)
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @f2fs_has_inline_dentry(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %27 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @f2fs_add_inline_entry(%struct.inode* %25, %struct.qstr* %11, i32 %28, %struct.inode* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %24, %5
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %41 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @f2fs_add_regular_entry(%struct.inode* %39, %struct.qstr* %11, i32 %42, %struct.inode* %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @F2FS_I_SB(%struct.inode* %48)
  %50 = load i32, i32* @REQ_TIME, align 4
  %51 = call i32 @f2fs_update_time(i32 %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_add_inline_entry(%struct.inode*, %struct.qstr*, i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @f2fs_add_regular_entry(%struct.inode*, %struct.qstr*, i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
