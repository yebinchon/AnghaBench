; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_ctx_key_to_expire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_ctx_key_to_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { %struct.rpc_cred*, i32 }
%struct.rpc_cred = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.rpc_cred*)*, i32 (%struct.auth_cred*, %struct.rpc_cred*, i32)* }
%struct.auth_cred = type { i32 }
%struct.inode = type { i32 }
%struct.rpc_auth = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rpc_auth* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_ctx_key_to_expire(%struct.nfs_open_context* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rpc_auth*, align 8
  %7 = alloca %struct.rpc_cred*, align 8
  %8 = alloca %struct.auth_cred, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_8__* @NFS_SERVER(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.rpc_auth*, %struct.rpc_auth** %13, align 8
  store %struct.rpc_auth* %14, %struct.rpc_auth** %6, align 8
  %15 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %15, i32 0, i32 0
  %17 = load %struct.rpc_cred*, %struct.rpc_cred** %16, align 8
  store %struct.rpc_cred* %17, %struct.rpc_cred** %7, align 8
  %18 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %8, i32 0, i32 0
  %19 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %23 = icmp ne %struct.rpc_cred* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %26 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32 (%struct.auth_cred*, %struct.rpc_cred*, i32)*, i32 (%struct.auth_cred*, %struct.rpc_cred*, i32)** %28, align 8
  %30 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %31 = call i32 %29(%struct.auth_cred* %8, %struct.rpc_cred* %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %35 = call i32 @put_rpccred(%struct.rpc_cred* %34)
  %36 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %36, i32 0, i32 0
  store %struct.rpc_cred* null, %struct.rpc_cred** %37, align 8
  store %struct.rpc_cred* null, %struct.rpc_cred** %7, align 8
  br label %38

38:                                               ; preds = %33, %24, %2
  %39 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %40 = icmp ne %struct.rpc_cred* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %43 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)** %45, align 8
  %47 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %48 = call %struct.rpc_cred* %46(%struct.rpc_auth* %47, %struct.auth_cred* %8, i32 0)
  store %struct.rpc_cred* %48, %struct.rpc_cred** %7, align 8
  br label %49

49:                                               ; preds = %41, %38
  %50 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %51 = icmp ne %struct.rpc_cred* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %54 = call i64 @IS_ERR(%struct.rpc_cred* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  store i32 1, i32* %3, align 4
  br label %81

57:                                               ; preds = %52
  %58 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %59 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %59, i32 0, i32 0
  store %struct.rpc_cred* %58, %struct.rpc_cred** %60, align 8
  %61 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %62 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64 (%struct.rpc_cred*)*, i64 (%struct.rpc_cred*)** %64, align 8
  %66 = icmp ne i64 (%struct.rpc_cred*)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %69 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64 (%struct.rpc_cred*)*, i64 (%struct.rpc_cred*)** %71, align 8
  %73 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %74 = call i64 %72(%struct.rpc_cred* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %67, %57
  %77 = phi i1 [ false, %57 ], [ %75, %67 ]
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %56
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_8__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
