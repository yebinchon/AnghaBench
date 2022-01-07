; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_retry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { i32, i32, i32, %struct.nfs_pgio_res, %struct.nfs_pgio_args }
%struct.nfs_pgio_res = type { i64 }
%struct.nfs_pgio_args = type { i32, i32, i32 }

@NFSIOS_SHORTREAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs_readpage_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_retry(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca %struct.nfs_pgio_args*, align 8
  %6 = alloca %struct.nfs_pgio_res*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %4, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 4
  store %struct.nfs_pgio_args* %8, %struct.nfs_pgio_args** %5, align 8
  %9 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %9, i32 0, i32 3
  store %struct.nfs_pgio_res* %10, %struct.nfs_pgio_res** %6, align 8
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NFSIOS_SHORTREAD, align 4
  %15 = call i32 @nfs_inc_stats(i32 %13, i32 %14)
  %16 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nfs_set_pgio_error(%struct.nfs_pgio_header* %21, i32 %23, i32 %26)
  br label %77

28:                                               ; preds = %2
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %77

38:                                               ; preds = %28
  %39 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %61 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %76 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %75)
  br label %77

77:                                               ; preds = %38, %33, %20
  ret void
}

declare dso_local i32 @nfs_inc_stats(i32, i32) #1

declare dso_local i32 @nfs_set_pgio_error(%struct.nfs_pgio_header*, i32, i32) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
