; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.cred = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FILE__WRITE = common dso_local global i32 0, align 4
@ATTR_FORCE = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@FILE__SETATTR = common dso_local global i32 0, align 4
@SOCKFS_MAGIC = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@FILE__OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @selinux_inode_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.inode* @d_backing_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.iattr*, %struct.iattr** %5, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @FILE__WRITE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ATTR_FORCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @ATTR_KILL_SUID, align 4
  %23 = load i32, i32* @ATTR_KILL_SGID, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ATTR_MODE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ATTR_FORCE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %86

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ATTR_MODE, align 4
  %39 = load i32, i32* @ATTR_UID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ATTR_GID, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATTR_ATIME_SET, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ATTR_MTIME_SET, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ATTR_TIMES_SET, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %37, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.cred*, %struct.cred** %6, align 8
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = load i32, i32* @FILE__SETATTR, align 4
  %55 = call i32 @dentry_has_perm(%struct.cred* %52, %struct.dentry* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %36
  %57 = call i64 (...) @selinux_policycap_openperm()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SOCKFS_MAGIC, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ATTR_SIZE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ATTR_FILE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @FILE__OPEN, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %72, %67, %59, %56
  %82 = load %struct.cred*, %struct.cred** %6, align 8
  %83 = load %struct.dentry*, %struct.dentry** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dentry_has_perm(%struct.cred* %82, %struct.dentry* %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %51, %34
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @dentry_has_perm(%struct.cred*, %struct.dentry*, i32) #1

declare dso_local i64 @selinux_policycap_openperm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
