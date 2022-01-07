; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_legacy_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_legacy_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.idmap_legacy_upcalldata = type { i32, %struct.idmap*, %struct.idmap_msg, %struct.rpc_pipe_msg }
%struct.idmap = type { i32 }
%struct.idmap_msg = type { i32 }
%struct.rpc_pipe_msg = type { i32 }
%struct.request_key_auth = type { %struct.key* }

@ENOKEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*)* @nfs_idmap_legacy_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_legacy_upcall(%struct.key* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.idmap_legacy_upcalldata*, align 8
  %7 = alloca %struct.request_key_auth*, align 8
  %8 = alloca %struct.rpc_pipe_msg*, align 8
  %9 = alloca %struct.idmap_msg*, align 8
  %10 = alloca %struct.idmap*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.key*, %struct.key** %4, align 8
  %14 = call %struct.request_key_auth* @get_request_key_auth(%struct.key* %13)
  store %struct.request_key_auth* %14, %struct.request_key_auth** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.idmap*
  store %struct.idmap* %16, %struct.idmap** %10, align 8
  %17 = load %struct.request_key_auth*, %struct.request_key_auth** %7, align 8
  %18 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %17, i32 0, i32 0
  %19 = load %struct.key*, %struct.key** %18, align 8
  store %struct.key* %19, %struct.key** %11, align 8
  %20 = load i32, i32* @ENOKEY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %80

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.idmap_legacy_upcalldata* @kzalloc(i32 24, i32 %28)
  store %struct.idmap_legacy_upcalldata* %29, %struct.idmap_legacy_upcalldata** %6, align 8
  %30 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %31 = icmp ne %struct.idmap_legacy_upcalldata* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %80

33:                                               ; preds = %25
  %34 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %35 = getelementptr inbounds %struct.idmap_legacy_upcalldata, %struct.idmap_legacy_upcalldata* %34, i32 0, i32 3
  store %struct.rpc_pipe_msg* %35, %struct.rpc_pipe_msg** %8, align 8
  %36 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %37 = getelementptr inbounds %struct.idmap_legacy_upcalldata, %struct.idmap_legacy_upcalldata* %36, i32 0, i32 2
  store %struct.idmap_msg* %37, %struct.idmap_msg** %9, align 8
  %38 = load %struct.idmap*, %struct.idmap** %10, align 8
  %39 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %40 = getelementptr inbounds %struct.idmap_legacy_upcalldata, %struct.idmap_legacy_upcalldata* %39, i32 0, i32 1
  store %struct.idmap* %38, %struct.idmap** %40, align 8
  %41 = load %struct.key*, %struct.key** %4, align 8
  %42 = call i32 @key_get(%struct.key* %41)
  %43 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %44 = getelementptr inbounds %struct.idmap_legacy_upcalldata, %struct.idmap_legacy_upcalldata* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.key*, %struct.key** %11, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.idmap*, %struct.idmap** %10, align 8
  %49 = load %struct.idmap_msg*, %struct.idmap_msg** %9, align 8
  %50 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %8, align 8
  %51 = call i32 @nfs_idmap_prepare_message(i32 %47, %struct.idmap* %48, %struct.idmap_msg* %49, %struct.rpc_pipe_msg* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %77

55:                                               ; preds = %33
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.idmap*, %struct.idmap** %10, align 8
  %59 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %60 = call i32 @nfs_idmap_prepare_pipe_upcall(%struct.idmap* %58, %struct.idmap_legacy_upcalldata* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %77

63:                                               ; preds = %55
  %64 = load %struct.idmap*, %struct.idmap** %10, align 8
  %65 = getelementptr inbounds %struct.idmap, %struct.idmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %8, align 8
  %68 = call i32 @rpc_queue_upcall(i32 %66, %struct.rpc_pipe_msg* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.idmap*, %struct.idmap** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @nfs_idmap_abort_pipe_upcall(%struct.idmap* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %63
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %85

77:                                               ; preds = %62, %54
  %78 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %6, align 8
  %79 = call i32 @kfree(%struct.idmap_legacy_upcalldata* %78)
  br label %80

80:                                               ; preds = %77, %32, %24
  %81 = load %struct.key*, %struct.key** %4, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @complete_request_key(%struct.key* %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.request_key_auth* @get_request_key_auth(%struct.key*) #1

declare dso_local %struct.idmap_legacy_upcalldata* @kzalloc(i32, i32) #1

declare dso_local i32 @key_get(%struct.key*) #1

declare dso_local i32 @nfs_idmap_prepare_message(i32, %struct.idmap*, %struct.idmap_msg*, %struct.rpc_pipe_msg*) #1

declare dso_local i32 @nfs_idmap_prepare_pipe_upcall(%struct.idmap*, %struct.idmap_legacy_upcalldata*) #1

declare dso_local i32 @rpc_queue_upcall(i32, %struct.rpc_pipe_msg*) #1

declare dso_local i32 @nfs_idmap_abort_pipe_upcall(%struct.idmap*, i32) #1

declare dso_local i32 @kfree(%struct.idmap_legacy_upcalldata*) #1

declare dso_local i32 @complete_request_key(%struct.key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
