; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_fattr_free_names.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_fattr_free_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32 }

@NFS_ATTR_FATTR_OWNER_NAME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_GROUP_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fattr_free_names(%struct.nfs_fattr* %0) #0 {
  %2 = alloca %struct.nfs_fattr*, align 8
  store %struct.nfs_fattr* %0, %struct.nfs_fattr** %2, align 8
  %3 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NFS_ATTR_FATTR_OWNER_NAME, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %11 = call i32 @nfs_fattr_free_owner_name(%struct.nfs_fattr* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NFS_ATTR_FATTR_GROUP_NAME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %21 = call i32 @nfs_fattr_free_group_name(%struct.nfs_fattr* %20)
  br label %22

22:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @nfs_fattr_free_owner_name(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_fattr_free_group_name(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
