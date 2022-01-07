; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.dentry = type { i32 }
%struct.cred = type { i32 }
%struct.page = type { i32 }

@__const.nfs4_proc_readdir.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cred*, i32, %struct.page**, i32, i32)* @nfs4_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_readdir(%struct.dentry* %0, %struct.cred* %1, i32 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfs4_exception, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.cred* %1, %struct.cred** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = bitcast %struct.nfs4_exception* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_readdir.exception to i8*), i64 16, i1 false)
  br label %16

16:                                               ; preds = %33, %6
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = load %struct.cred*, %struct.cred** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.page**, %struct.page*** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @_nfs4_proc_readdir(%struct.dentry* %17, %struct.cred* %18, i32 %19, %struct.page** %20, i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = call i32 @d_inode(%struct.dentry* %24)
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @trace_nfs4_readdir(i32 %25, i32 %26)
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call i32 @d_inode(%struct.dentry* %28)
  %30 = call i32 @NFS_SERVER(i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @nfs4_handle_exception(i32 %30, i32 %31, %struct.nfs4_exception* %13)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %13, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %16, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_proc_readdir(%struct.dentry*, %struct.cred*, i32, %struct.page**, i32, i32) #2

declare dso_local i32 @trace_nfs4_readdir(i32, i32) #2

declare dso_local i32 @d_inode(%struct.dentry*) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
