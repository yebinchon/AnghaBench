; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ubifs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_info*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @RENAME_NOREPLACE, align 4
  %21 = load i32, i32* @RENAME_WHITEOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RENAME_EXCHANGE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %19, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %68

31:                                               ; preds = %5
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @inode_is_locked(%struct.inode* %33)
  %35 = call i32 @ubifs_assert(%struct.ubifs_info* %32, i32 %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call i32 @inode_is_locked(%struct.inode* %37)
  %39 = call i32 @ubifs_assert(%struct.ubifs_info* %36, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @fscrypt_prepare_rename(%struct.inode* %40, %struct.dentry* %41, %struct.inode* %42, %struct.dentry* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %68

50:                                               ; preds = %31
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @RENAME_EXCHANGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = call i32 @ubifs_xrename(%struct.inode* %56, %struct.dentry* %57, %struct.inode* %58, %struct.dentry* %59)
  store i32 %60, i32* %6, align 4
  br label %68

61:                                               ; preds = %50
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @do_rename(%struct.inode* %62, %struct.dentry* %63, %struct.inode* %64, %struct.dentry* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %61, %55, %48, %28
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @fscrypt_prepare_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @ubifs_xrename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
