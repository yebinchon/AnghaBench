; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs3_linkargs = type { i32, i32, i32, i32 }
%struct.nfs3_linkres = type { i32*, i32* }
%struct.rpc_message = type { %struct.nfs3_linkres*, %struct.nfs3_linkargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_LINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NFS call  link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NFS reply link: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*)* @nfs3_proc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_link(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.nfs3_linkargs, align 4
  %8 = alloca %struct.nfs3_linkres, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %11 = getelementptr inbounds %struct.nfs3_linkargs, %struct.nfs3_linkargs* %7, i32 0, i32 0
  %12 = load %struct.qstr*, %struct.qstr** %6, align 8
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.nfs3_linkargs, %struct.nfs3_linkargs* %7, i32 0, i32 1
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.nfs3_linkargs, %struct.nfs3_linkargs* %7, i32 0, i32 2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @NFS_FH(%struct.inode* %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.nfs3_linkargs, %struct.nfs3_linkargs* %7, i32 0, i32 3
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @NFS_FH(%struct.inode* %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store %struct.nfs3_linkres* %8, %struct.nfs3_linkres** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs3_linkargs* %7, %struct.nfs3_linkargs** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %28 = load i32*, i32** @nfs3_procedures, align 8
  %29 = load i64, i64* @NFS3PROC_LINK, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %27, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.qstr*, %struct.qstr** %6, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i8* (...) @nfs_alloc_fattr()
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 0
  store i32* %38, i32** %39, align 8
  %40 = call i8* (...) @nfs_alloc_fattr()
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 1
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %3
  br label %63

51:                                               ; preds = %46
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @NFS_CLIENT(%struct.inode* %52)
  %54 = call i32 @rpc_call_sync(i32 %53, %struct.rpc_message* %9, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @nfs_post_op_update_inode(%struct.inode* %55, i32* %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @nfs_post_op_update_inode(%struct.inode* %59, i32* %61)
  br label %63

63:                                               ; preds = %51, %50
  %64 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @nfs_free_fattr(i32* %65)
  %67 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %8, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @nfs_free_fattr(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i8* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
