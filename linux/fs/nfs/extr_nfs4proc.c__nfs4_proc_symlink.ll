; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.nfs4_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.nfs4_label*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.page** }
%struct.TYPE_5__ = type { i32* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@NFS4_MAXPATHLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NF4LNK = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SYMLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*, %struct.nfs4_label*)* @_nfs4_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4, %struct.nfs4_label* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr*, align 8
  %12 = alloca %struct.nfs4_label*, align 8
  %13 = alloca %struct.nfs4_createdata*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iattr* %4, %struct.iattr** %11, align 8
  store %struct.nfs4_label* %5, %struct.nfs4_label** %12, align 8
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NFS4_MAXPATHLEN, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %61

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.iattr*, %struct.iattr** %11, align 8
  %28 = load i32, i32* @NF4LNK, align 4
  %29 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %24, i32* %26, %struct.iattr* %27, i32 %28)
  store %struct.nfs4_createdata* %29, %struct.nfs4_createdata** %13, align 8
  %30 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %31 = icmp eq %struct.nfs4_createdata* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %61

33:                                               ; preds = %21
  %34 = load i32*, i32** @nfs4_procedures, align 8
  %35 = load i64, i64* @NFSPROC4_CLNT_SYMLINK, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %38 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %41 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store %struct.page** %9, %struct.page*** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %47 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  %51 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %52 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %53 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store %struct.nfs4_label* %51, %struct.nfs4_label** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.dentry*, %struct.dentry** %8, align 8
  %57 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %58 = call i32 @nfs4_do_create(%struct.inode* %55, %struct.dentry* %56, %struct.nfs4_createdata* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %13, align 8
  %60 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %59)
  br label %61

61:                                               ; preds = %33, %32, %20
  %62 = load i32, i32* %14, align 4
  ret i32 %62
}

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
