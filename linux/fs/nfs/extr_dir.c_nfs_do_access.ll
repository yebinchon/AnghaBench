; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_do_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_do_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_access_entry = type { i32, %struct.cred* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, %struct.nfs_access_entry*)* }
%struct.TYPE_4__ = type { i32 }

@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@NFS_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS_ACCESS_EXTEND = common dso_local global i32 0, align 4
@NFS_ACCESS_DELETE = common dso_local global i32 0, align 4
@NFS_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@NFS_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NFS_INO_STALE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.cred*, i32)* @nfs_do_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_access(%struct.inode* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_access_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @trace_nfs_access_enter(%struct.inode* %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.cred*, %struct.cred** %5, align 8
  %20 = call i32 @nfs_access_get_cached_rcu(%struct.inode* %18, %struct.cred* %19, %struct.nfs_access_entry* %7)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load %struct.cred*, %struct.cred** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @nfs_access_get_cached(%struct.inode* %24, %struct.cred* %25, %struct.nfs_access_entry* %7, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %97

32:                                               ; preds = %28
  %33 = load i32, i32* @ECHILD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %119

38:                                               ; preds = %32
  %39 = load i32, i32* @NFS_ACCESS_READ, align 4
  %40 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISDIR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %52 = load i32, i32* @NFS_ACCESS_LOOKUP, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  br label %62

57:                                               ; preds = %38
  %58 = load i32, i32* @NFS_ACCESS_EXECUTE, align 4
  %59 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.cred*, %struct.cred** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %7, i32 0, i32 1
  store %struct.cred* %63, %struct.cred** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = call %struct.TYPE_3__* @NFS_PROTO(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.inode*, %struct.nfs_access_entry*)*, i32 (%struct.inode*, %struct.nfs_access_entry*)** %67, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 %68(%struct.inode* %69, %struct.nfs_access_entry* %7)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %62
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ESTALE, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call i32 @nfs_zap_caches(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @S_ISDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @NFS_INO_STALE, align 4
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @set_bit(i32 %87, i32* %90)
  br label %92

92:                                               ; preds = %86, %78
  br label %93

93:                                               ; preds = %92, %73
  br label %119

94:                                               ; preds = %62
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @nfs_access_add_cache(%struct.inode* %95, %struct.nfs_access_entry* %7)
  br label %97

97:                                               ; preds = %94, %31
  %98 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @nfs_access_calc_mask(i32 %99, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = load i32, i32* @MAY_READ, align 4
  %109 = load i32, i32* @MAY_WRITE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MAY_EXEC, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = load i32, i32* @EACCES, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %97
  br label %119

119:                                              ; preds = %118, %93, %37
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @trace_nfs_access_exit(%struct.inode* %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @trace_nfs_access_enter(%struct.inode*) #1

declare dso_local i32 @nfs_access_get_cached_rcu(%struct.inode*, %struct.cred*, %struct.nfs_access_entry*) #1

declare dso_local i32 @nfs_access_get_cached(%struct.inode*, %struct.cred*, %struct.nfs_access_entry*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_3__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_access_add_cache(%struct.inode*, %struct.nfs_access_entry*) #1

declare dso_local i32 @nfs_access_calc_mask(i32, i32) #1

declare dso_local i32 @trace_nfs_access_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
