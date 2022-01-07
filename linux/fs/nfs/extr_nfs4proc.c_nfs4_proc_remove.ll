; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@__const.nfs4_proc_remove.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@NF4REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @nfs4_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_remove(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs4_exception, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = bitcast %struct.nfs4_exception* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_remove.exception to i8*), i64 16, i1 false)
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @nfs4_inode_return_delegation(%struct.inode* %19)
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @nfs4_inode_make_writeable(%struct.inode* %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %2
  br label %26

26:                                               ; preds = %41, %25
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load i32, i32* @NF4REG, align 4
  %31 = call i32 @_nfs4_proc_remove(%struct.inode* %27, i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @trace_nfs4_remove(%struct.inode* %32, i32* %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call i32 @NFS_SERVER(%struct.inode* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @nfs4_handle_exception(i32 %38, i32 %39, %struct.nfs4_exception* %5)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %26, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #2

declare dso_local i32 @nfs4_inode_return_delegation(%struct.inode*) #2

declare dso_local i32 @nfs4_inode_make_writeable(%struct.inode*) #2

declare dso_local i32 @_nfs4_proc_remove(%struct.inode*, i32*, i32) #2

declare dso_local i32 @trace_nfs4_remove(%struct.inode*, i32*, i32) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
