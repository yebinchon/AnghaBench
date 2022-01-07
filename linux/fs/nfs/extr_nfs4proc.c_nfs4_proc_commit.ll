; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_commitres = type { i32 }
%struct.nfs_commitargs = type { i32, i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_commit(%struct.file* %0, i32 %1, i32 %2, %struct.nfs_commitres* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_commitres*, align 8
  %9 = alloca %struct.nfs_commitargs, align 4
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nfs_commitres* %3, %struct.nfs_commitres** %8, align 8
  %13 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %9, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %9, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call i32 @file_inode(%struct.file* %17)
  %19 = call %struct.nfs_server* @NFS_SERVER(i32 %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %10, align 8
  %20 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  br label %21

21:                                               ; preds = %28, %4
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load %struct.nfs_commitres*, %struct.nfs_commitres** %8, align 8
  %24 = call i32 @_nfs4_proc_commit(%struct.file* %22, %struct.nfs_commitargs* %9, %struct.nfs_commitres* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @nfs4_handle_exception(%struct.nfs_server* %25, i32 %26, %struct.nfs4_exception* %11)
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %21, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  ret i32 %33
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_nfs4_proc_commit(%struct.file*, %struct.nfs_commitargs*, %struct.nfs_commitres*) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
