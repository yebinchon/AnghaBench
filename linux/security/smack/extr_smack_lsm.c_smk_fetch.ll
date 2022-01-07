; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smk_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smk_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@IOP_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMK_LONGLABEL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smack_known* (i8*, %struct.inode*, %struct.dentry*)* @smk_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smack_known* @smk_fetch(i8* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.smack_known*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.smack_known*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.smack_known* null, %struct.smack_known** %10, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IOP_XATTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.smack_known* @ERR_PTR(i32 %19)
  store %struct.smack_known* %20, %struct.smack_known** %4, align 8
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* @SMK_LONGLABEL, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.smack_known* @ERR_PTR(i32 %29)
  store %struct.smack_known* %30, %struct.smack_known** %4, align 8
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @SMK_LONGLABEL, align 4
  %37 = call i32 @__vfs_getxattr(%struct.dentry* %32, %struct.inode* %33, i8* %34, i8* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.smack_known* @ERR_PTR(i32 %41)
  store %struct.smack_known* %42, %struct.smack_known** %10, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store %struct.smack_known* null, %struct.smack_known** %10, align 8
  br label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.smack_known* @smk_import_entry(i8* %48, i32 %49)
  store %struct.smack_known* %50, %struct.smack_known** %10, align 8
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load %struct.smack_known*, %struct.smack_known** %10, align 8
  store %struct.smack_known* %55, %struct.smack_known** %4, align 8
  br label %56

56:                                               ; preds = %52, %27, %17
  %57 = load %struct.smack_known*, %struct.smack_known** %4, align 8
  ret %struct.smack_known* %57
}

declare dso_local %struct.smack_known* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @__vfs_getxattr(%struct.dentry*, %struct.inode*, i8*, i8*, i32) #1

declare dso_local %struct.smack_known* @smk_import_entry(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
