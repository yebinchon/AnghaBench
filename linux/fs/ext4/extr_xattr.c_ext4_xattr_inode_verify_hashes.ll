; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_verify_hashes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_verify_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_entry = type { i64, i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64)* @ext4_xattr_inode_verify_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_verify_hashes(%struct.inode* %0, %struct.ext4_xattr_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @EXT4_SB(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @ext4_xattr_inode_hash(i32 %16, i8* %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @ext4_xattr_inode_get_hash(%struct.inode* %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EFSCORRUPTED, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %4
  %28 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %29 = icmp ne %struct.ext4_xattr_entry* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @cpu_to_le32(i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ext4_xattr_hash_entry(i32 %35, i32 %38, i64* %12, i32 1)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %42 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* @EFSCORRUPTED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %27
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45, %24
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @ext4_xattr_inode_hash(i32, i8*, i64) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i64 @ext4_xattr_inode_get_hash(%struct.inode*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i64 @ext4_xattr_hash_entry(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
