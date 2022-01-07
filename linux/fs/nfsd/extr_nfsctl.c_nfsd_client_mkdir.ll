; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_client_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_client_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfsd_net = type { i32 }
%struct.nfsdfs_client = type { i32 }
%struct.tree_descr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfsd_client_mkdir(%struct.nfsd_net* %0, %struct.nfsdfs_client* %1, i32 %2, %struct.tree_descr* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca %struct.nfsdfs_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree_descr*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca [11 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %6, align 8
  store %struct.nfsdfs_client* %1, %struct.nfsdfs_client** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tree_descr* %3, %struct.tree_descr** %9, align 8
  %13 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfsdfs_client*, %struct.nfsdfs_client** %7, align 8
  %20 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %21 = call %struct.dentry* @nfsd_mkdir(i32 %18, %struct.nfsdfs_client* %19, i8* %20)
  store %struct.dentry* %21, %struct.dentry** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = call i64 @IS_ERR(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %37

26:                                               ; preds = %4
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = load %struct.tree_descr*, %struct.tree_descr** %9, align 8
  %29 = call i32 @nfsdfs_create_files(%struct.dentry* %27, %struct.tree_descr* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = call i32 @nfsd_client_rmdir(%struct.dentry* %33)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %37

37:                                               ; preds = %35, %32, %25
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %38
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @nfsd_mkdir(i32, %struct.nfsdfs_client*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @nfsdfs_create_files(%struct.dentry*, %struct.tree_descr*) #1

declare dso_local i32 @nfsd_client_rmdir(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
