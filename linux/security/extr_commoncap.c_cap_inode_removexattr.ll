; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_inode_removexattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_inode_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.inode = type { i32 }

@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_NAME_CAPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SETFCAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_inode_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.user_namespace*, %struct.user_namespace** %11, align 8
  store %struct.user_namespace* %12, %struct.user_namespace** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %15 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %16 = call i64 @strncmp(i8* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @XATTR_NAME_CAPS, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call %struct.inode* @d_backing_inode(%struct.dentry* %25)
  store %struct.inode* %26, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i32, i32* @CAP_SETFCAP, align 4
  %35 = call i32 @capable_wrt_inode_uidgid(%struct.inode* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %50

41:                                               ; preds = %19
  %42 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %43 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %44 = call i32 @ns_capable(%struct.user_namespace* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %40, %37, %29, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @capable_wrt_inode_uidgid(%struct.inode*, i32) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
