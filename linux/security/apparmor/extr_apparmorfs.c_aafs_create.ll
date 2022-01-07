; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode_operations = type { i32 }
%struct.inode = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@aafs_ops = common dso_local global i32 0, align 4
@aafs_mnt = common dso_local global i32 0, align 4
@aafs_count = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, i8*, %struct.file_operations*, %struct.inode_operations*)* @aafs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @aafs_create(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, i8* %4, %struct.file_operations* %5, %struct.inode_operations* %6) #0 {
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.file_operations*, align 8
  %15 = alloca %struct.inode_operations*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dentry* %2, %struct.dentry** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.file_operations* %5, %struct.file_operations** %14, align 8
  store %struct.inode_operations* %6, %struct.inode_operations** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %11, align 8
  %25 = icmp ne %struct.dentry* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @AA_BUG(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @S_IALLUGO, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33, %7
  %40 = call i32 @simple_pin_fs(i32* @aafs_ops, i32* @aafs_mnt, i32* @aafs_count)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %18, align 4
  %45 = call %struct.dentry* @ERR_PTR(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %8, align 8
  br label %94

46:                                               ; preds = %39
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = call %struct.inode* @d_inode(%struct.dentry* %47)
  store %struct.inode* %48, %struct.inode** %17, align 8
  %49 = load %struct.inode*, %struct.inode** %17, align 8
  %50 = call i32 @inode_lock(%struct.inode* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.dentry*, %struct.dentry** %11, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call %struct.dentry* @lookup_one_len(i8* %51, %struct.dentry* %52, i32 %54)
  store %struct.dentry* %55, %struct.dentry** %16, align 8
  %56 = load %struct.dentry*, %struct.dentry** %16, align 8
  %57 = call i64 @IS_ERR(%struct.dentry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.dentry*, %struct.dentry** %16, align 8
  %61 = call i32 @PTR_ERR(%struct.dentry* %60)
  store i32 %61, i32* %18, align 4
  br label %88

62:                                               ; preds = %46
  %63 = load %struct.dentry*, %struct.dentry** %16, align 8
  %64 = call i64 @d_really_is_positive(%struct.dentry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EEXIST, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %18, align 4
  br label %85

69:                                               ; preds = %62
  %70 = load %struct.inode*, %struct.inode** %17, align 8
  %71 = load %struct.dentry*, %struct.dentry** %16, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.file_operations*, %struct.file_operations** %14, align 8
  %76 = load %struct.inode_operations*, %struct.inode_operations** %15, align 8
  %77 = call i32 @__aafs_setup_d_inode(%struct.inode* %70, %struct.dentry* %71, i32 %72, i8* %73, i8* %74, %struct.file_operations* %75, %struct.inode_operations* %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %85

81:                                               ; preds = %69
  %82 = load %struct.inode*, %struct.inode** %17, align 8
  %83 = call i32 @inode_unlock(%struct.inode* %82)
  %84 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %84, %struct.dentry** %8, align 8
  br label %94

85:                                               ; preds = %80, %66
  %86 = load %struct.dentry*, %struct.dentry** %16, align 8
  %87 = call i32 @dput(%struct.dentry* %86)
  br label %88

88:                                               ; preds = %85, %59
  %89 = load %struct.inode*, %struct.inode** %17, align 8
  %90 = call i32 @inode_unlock(%struct.inode* %89)
  %91 = call i32 @simple_release_fs(i32* @aafs_mnt, i32* @aafs_count)
  %92 = load i32, i32* %18, align 4
  %93 = call %struct.dentry* @ERR_PTR(i32 %92)
  store %struct.dentry* %93, %struct.dentry** %8, align 8
  br label %94

94:                                               ; preds = %88, %81, %43
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %95
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @simple_pin_fs(i32*, i32*, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @__aafs_setup_d_inode(%struct.inode*, %struct.dentry*, i32, i8*, i8*, %struct.file_operations*, %struct.inode_operations*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
