; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup_verify_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup_verify_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.nfs_server = type { i32, i32 }

@LOOKUP_OPEN = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@NFS_CAP_ATOMIC_OPEN = common dso_local global i32 0, align 4
@NFS_MOUNT_NOCTO = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @nfs_lookup_verify_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lookup_verify_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %8)
  store %struct.nfs_server* %9, %struct.nfs_server** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i64 @IS_AUTOMOUNT(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LOOKUP_OPEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %43 [
    i32 128, label %25
    i32 129, label %34
  ]

25:                                               ; preds = %19
  %26 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFS_CAP_ATOMIC_OPEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %51

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %19, %33
  %35 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFS_MOUNT_NOCTO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %34
  br label %62

43:                                               ; preds = %19, %41
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LOOKUP_REVAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %62

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %78, %50, %32
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ESTALE, align 4
  %58 = sub nsw i32 0, %57
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %49, %42
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @LOOKUP_RCU, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @ECHILD, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %62
  %71 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call i32 @__nfs_revalidate_inode(%struct.nfs_server* %71, %struct.inode* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %70
  br label %51

79:                                               ; preds = %76, %67, %60, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @IS_AUTOMOUNT(%struct.inode*) #1

declare dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
