; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rename2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rename2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @f2fs_rename2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_rename2(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @RENAME_NOREPLACE, align 4
  %15 = load i32, i32* @RENAME_EXCHANGE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RENAME_WHITEOUT, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %54

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = load %struct.dentry*, %struct.dentry** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @fscrypt_prepare_rename(%struct.inode* %26, %struct.dentry* %27, %struct.inode* %28, %struct.dentry* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %54

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @RENAME_EXCHANGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = call i32 @f2fs_cross_rename(%struct.inode* %42, %struct.dentry* %43, %struct.inode* %44, %struct.dentry* %45)
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load %struct.dentry*, %struct.dentry** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @f2fs_rename(%struct.inode* %48, %struct.dentry* %49, %struct.inode* %50, %struct.dentry* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %41, %34, %22
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @fscrypt_prepare_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @f2fs_cross_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @f2fs_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
