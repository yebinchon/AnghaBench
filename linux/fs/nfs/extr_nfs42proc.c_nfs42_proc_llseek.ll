; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64, i32, i32 }
%struct.nfs_lock_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.nfs4_exception, align 8
  %10 = alloca %struct.nfs_lock_context*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 @file_inode(%struct.file* %12)
  %14 = call %struct.nfs_server* @NFS_SERVER(i32 %13)
  store %struct.nfs_server* %14, %struct.nfs_server** %8, align 8
  %15 = bitcast %struct.nfs4_exception* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call i32 @nfs_file_open_context(%struct.file* %16)
  %18 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %17)
  store %struct.nfs_lock_context* %18, %struct.nfs_lock_context** %10, align 8
  %19 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %20 = call i64 @IS_ERR(%struct.nfs_lock_context* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.nfs_lock_context* %23)
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = call i32 @file_inode(%struct.file* %26)
  %28 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %30 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %56, %25
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @_nfs42_proc_llseek(%struct.file* %36, %struct.nfs_lock_context* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %60

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %60

52:                                               ; preds = %44
  %53 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @nfs4_handle_exception(%struct.nfs_server* %53, i32 %54, %struct.nfs4_exception* %9)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %35, label %60

60:                                               ; preds = %56, %49, %43
  %61 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %62 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @_nfs42_proc_llseek(%struct.file*, %struct.nfs_lock_context*, i32, i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
