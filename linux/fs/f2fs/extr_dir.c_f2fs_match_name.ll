; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_match_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_match_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dentry_ptr = type { i64*, %struct.inode* }
%struct.inode = type { i32 }
%struct.f2fs_dir_entry = type { i64, i32 }
%struct.fscrypt_name = type { %struct.qstr* }
%struct.qstr = type { i32, i64 }
%struct.fscrypt_str = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_dentry_ptr*, %struct.f2fs_dir_entry*, %struct.fscrypt_name*, %struct.fscrypt_str*, i64, i64)* @f2fs_match_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_match_name(%struct.f2fs_dentry_ptr* %0, %struct.f2fs_dir_entry* %1, %struct.fscrypt_name* %2, %struct.fscrypt_str* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_dentry_ptr*, align 8
  %9 = alloca %struct.f2fs_dir_entry*, align 8
  %10 = alloca %struct.fscrypt_name*, align 8
  %11 = alloca %struct.fscrypt_str*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.f2fs_dentry_ptr* %0, %struct.f2fs_dentry_ptr** %8, align 8
  store %struct.f2fs_dir_entry* %1, %struct.f2fs_dir_entry** %9, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %10, align 8
  store %struct.fscrypt_str* %3, %struct.fscrypt_str** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %15 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %13, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %36

20:                                               ; preds = %6
  %21 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %22 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %8, align 8
  %23 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %29 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = call i64 @fscrypt_match_name(%struct.fscrypt_name* %21, i64 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34, %19
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i64 @fscrypt_match_name(%struct.fscrypt_name*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
