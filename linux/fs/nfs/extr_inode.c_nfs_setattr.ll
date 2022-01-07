; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64 }
%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* }

@NFSIOS_VFSSETATTR = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS_VALID_ATTRS = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load i32, i32* @NFSIOS_VFSSETATTR, align 4
  %13 = call i32 @nfs_inc_stats(%struct.inode* %11, i32 %12)
  %14 = load %struct.iattr*, %struct.iattr** %5, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATTR_KILL_SUID, align 4
  %18 = load i32, i32* @ATTR_KILL_SGID, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @ATTR_MODE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.iattr*, %struct.iattr** %5, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.iattr*, %struct.iattr** %5, align 8
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATTR_SIZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = load %struct.iattr*, %struct.iattr** %5, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @inode_newsize_ok(%struct.inode* %45, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %126

54:                                               ; preds = %36
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i64 @i_size_read(%struct.inode* %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i32, i32* @ATTR_SIZE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* @NFS_VALID_ATTRS, align 4
  %71 = load %struct.iattr*, %struct.iattr** %5, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.iattr*, %struct.iattr** %5, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ATTR_FILE, align 4
  %79 = load i32, i32* @ATTR_OPEN, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %77, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %126

85:                                               ; preds = %69
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call i32 @trace_nfs_setattr_enter(%struct.inode* %86)
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISREG(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @nfs_sync_inode(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %85
  %97 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %97, %struct.nfs_fattr** %7, align 8
  %98 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %99 = icmp eq %struct.nfs_fattr* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %121

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)*, i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)** %106, align 8
  %108 = load %struct.dentry*, %struct.dentry** %4, align 8
  %109 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %110 = load %struct.iattr*, %struct.iattr** %5, align 8
  %111 = call i32 %107(%struct.dentry* %108, %struct.nfs_fattr* %109, %struct.iattr* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %117 = call i32 @nfs_refresh_inode(%struct.inode* %115, %struct.nfs_fattr* %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %120 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %119)
  br label %121

121:                                              ; preds = %118, %100
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @trace_nfs_setattr_exit(%struct.inode* %122, i32 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %84, %52
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @trace_nfs_setattr_enter(%struct.inode*) #1

declare dso_local i32 @nfs_sync_inode(%struct.inode*) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @trace_nfs_setattr_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
