; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_label = type { i32 }

@__const.nfs4_proc_symlink.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @nfs4_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca %struct.nfs4_label, align 4
  %13 = alloca %struct.nfs4_label*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.iattr* %4, %struct.iattr** %10, align 8
  %15 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_symlink.exception to i8*), i64 16, i1 false)
  store %struct.nfs4_label* null, %struct.nfs4_label** %13, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = load %struct.iattr*, %struct.iattr** %10, align 8
  %19 = call %struct.nfs4_label* @nfs4_label_init_security(%struct.inode* %16, %struct.dentry* %17, %struct.iattr* %18, %struct.nfs4_label* %12)
  store %struct.nfs4_label* %19, %struct.nfs4_label** %13, align 8
  br label %20

20:                                               ; preds = %37, %5
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.iattr*, %struct.iattr** %10, align 8
  %26 = load %struct.nfs4_label*, %struct.nfs4_label** %13, align 8
  %27 = call i32 @_nfs4_proc_symlink(%struct.inode* %21, %struct.dentry* %22, %struct.page* %23, i32 %24, %struct.iattr* %25, %struct.nfs4_label* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @trace_nfs4_symlink(%struct.inode* %28, i32* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @NFS_SERVER(%struct.inode* %33)
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @nfs4_handle_exception(i32 %34, i32 %35, %struct.nfs4_exception* %11)
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %20, label %41

41:                                               ; preds = %37
  %42 = load %struct.nfs4_label*, %struct.nfs4_label** %13, align 8
  %43 = call i32 @nfs4_label_release_security(%struct.nfs4_label* %42)
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.nfs4_label* @nfs4_label_init_security(%struct.inode*, %struct.dentry*, %struct.iattr*, %struct.nfs4_label*) #2

declare dso_local i32 @_nfs4_proc_symlink(%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*, %struct.nfs4_label*) #2

declare dso_local i32 @trace_nfs4_symlink(%struct.inode*, i32*, i32) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @nfs4_label_release_security(%struct.nfs4_label*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
