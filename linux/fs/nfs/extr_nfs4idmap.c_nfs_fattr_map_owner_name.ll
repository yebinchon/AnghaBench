; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_fattr_map_owner_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_fattr_map_owner_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fattr = type { i32, i32, %struct.nfs4_string* }
%struct.nfs4_string = type { i32, i32 }

@NFS_ATTR_FATTR_OWNER_NAME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fattr*)* @nfs_fattr_map_owner_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_fattr_map_owner_name(%struct.nfs_server* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.nfs4_string*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %8 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %8, i32 0, i32 2
  %10 = load %struct.nfs4_string*, %struct.nfs4_string** %9, align 8
  store %struct.nfs4_string* %10, %struct.nfs4_string** %6, align 8
  %11 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NFS_ATTR_FATTR_OWNER_NAME, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %20 = load %struct.nfs4_string*, %struct.nfs4_string** %6, align 8
  %21 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfs4_string*, %struct.nfs4_string** %6, align 8
  %24 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nfs_map_name_to_uid(%struct.nfs_server* %19, i32 %22, i32 %25, i32* %7)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @NFS_ATTR_FATTR_OWNER, align 4
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %28, %18
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @nfs_map_name_to_uid(%struct.nfs_server*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
