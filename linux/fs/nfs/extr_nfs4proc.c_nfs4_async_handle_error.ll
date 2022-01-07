; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_async_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_async_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs4_exception = type { i64, i64, i64, %struct.nfs4_state* }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_async_handle_error(%struct.rpc_task* %0, %struct.nfs_server* %1, %struct.nfs4_state* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs4_state*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nfs4_exception, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %6, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %7, align 8
  store %struct.nfs4_state* %2, %struct.nfs4_state** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = bitcast %struct.nfs4_exception* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %10, i32 0, i32 3
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  store %struct.nfs4_state* %13, %struct.nfs4_state** %12, align 8
  %14 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %10, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %28 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nfs4_async_handle_exception(%struct.rpc_task* %27, %struct.nfs_server* %28, i32 %31, %struct.nfs4_exception* %10)
  %33 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %10, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load i64*, i64** %9, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %38, %26
  %46 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_async_handle_exception(%struct.rpc_task*, %struct.nfs_server*, i32, %struct.nfs4_exception*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
