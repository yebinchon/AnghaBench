; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setsecurity.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setsecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32 }
%struct.inode_security_struct = type { i32, i32, i32, i32 }

@XATTR_SELINUX_SUFFIX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SBLABEL_MNT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LABEL_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @selinux_inode_setsecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setsecurity(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode_security_struct*, align 8
  %13 = alloca %struct.superblock_security_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.inode_security_struct* @inode_security_novalidate(%struct.inode* %16)
  store %struct.inode_security_struct* %17, %struct.inode_security_struct** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %21, align 8
  store %struct.superblock_security_struct* %22, %struct.superblock_security_struct** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @XATTR_SELINUX_SUFFIX, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %77

30:                                               ; preds = %5
  %31 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %13, align 8
  %32 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SBLABEL_MNT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %77

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @security_context_to_sid(i32* @selinux_state, i8* %50, i64 %51, i32* %14, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %77

58:                                               ; preds = %49
  %59 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %60 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @inode_mode_to_security_class(i32 %64)
  %66 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %67 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %70 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @LABEL_INITIALIZED, align 4
  %72 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %73 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %75 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %58, %56, %46, %37, %27
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.inode_security_struct* @inode_security_novalidate(%struct.inode*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @security_context_to_sid(i32*, i8*, i64, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inode_mode_to_security_class(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
