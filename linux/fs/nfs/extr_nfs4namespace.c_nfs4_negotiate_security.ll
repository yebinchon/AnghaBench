; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_negotiate_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_negotiate_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.page = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @nfs4_negotiate_security(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %10 = alloca %struct.rpc_clnt*, align 8
  %11 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.rpc_clnt* @ERR_PTR(i32 %18)
  store %struct.rpc_clnt* %19, %struct.rpc_clnt** %4, align 8
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call %struct.nfs4_secinfo_flavors* @page_address(%struct.page* %21)
  store %struct.nfs4_secinfo_flavors* %22, %struct.nfs4_secinfo_flavors** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load %struct.qstr*, %struct.qstr** %7, align 8
  %25 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %9, align 8
  %26 = call i32 @nfs4_proc_secinfo(%struct.inode* %23, %struct.qstr* %24, %struct.nfs4_secinfo_flavors* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.rpc_clnt* @ERR_PTR(i32 %30)
  store %struct.rpc_clnt* %31, %struct.rpc_clnt** %10, align 8
  br label %38

32:                                               ; preds = %20
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @NFS_SERVER(%struct.inode* %34)
  %36 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %9, align 8
  %37 = call %struct.rpc_clnt* @nfs_find_best_sec(%struct.rpc_clnt* %33, i32 %35, %struct.nfs4_secinfo_flavors* %36)
  store %struct.rpc_clnt* %37, %struct.rpc_clnt** %10, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i32 @put_page(%struct.page* %39)
  %41 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  store %struct.rpc_clnt* %41, %struct.rpc_clnt** %4, align 8
  br label %42

42:                                               ; preds = %38, %16
  %43 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  ret %struct.rpc_clnt* %43
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.nfs4_secinfo_flavors* @page_address(%struct.page*) #1

declare dso_local i32 @nfs4_proc_secinfo(%struct.inode*, %struct.qstr*, %struct.nfs4_secinfo_flavors*) #1

declare dso_local %struct.rpc_clnt* @nfs_find_best_sec(%struct.rpc_clnt*, i32, %struct.nfs4_secinfo_flavors*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
