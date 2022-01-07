; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_fsinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32, i64, i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.nfs2_fsstat = type { i32, i32 }
%struct.rpc_message = type { %struct.nfs2_fsstat*, %struct.nfs_fh*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_STATFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"NFS call  fsinfo\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply fsinfo: %d\0A\00", align 1
@NFS_MAXDATA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs_proc_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca %struct.nfs2_fsstat, align 4
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %10 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.nfs2_fsstat* %7, %struct.nfs2_fsstat** %10, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  %12 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %12, %struct.nfs_fh** %11, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %14 = load i32*, i32** @nfs_procedures, align 8
  %15 = load i64, i64* @NFSPROC_STATFS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %13, align 8
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nfs_fattr_init(i32 %20)
  %22 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rpc_call_sync(i32 %24, %struct.rpc_message* %8, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %62

31:                                               ; preds = %3
  %32 = load i8*, i8** @NFS_MAXDATA, align 8
  %33 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @NFS_MAXDATA, align 8
  %44 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %59 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %58, i32 0, i32 0
  store i32 2147483647, i32* %59, align 8
  %60 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %31, %30
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
