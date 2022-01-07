; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.idmap*, %struct.TYPE_2__*, i32 }
%struct.idmap = type { i32, %struct.rpc_pipe*, i32, i32 }
%struct.rpc_pipe = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfs_idmap_pipe_dir_object_ops = common dso_local global i32 0, align 4
@idmap_upcall_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_idmap_new(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.idmap*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.idmap* @kzalloc(i32 24, i32 %7)
  store %struct.idmap* %8, %struct.idmap** %4, align 8
  %9 = load %struct.idmap*, %struct.idmap** %4, align 8
  %10 = icmp eq %struct.idmap* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.idmap*, %struct.idmap** %4, align 8
  %16 = getelementptr inbounds %struct.idmap, %struct.idmap* %15, i32 0, i32 3
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_cred(i32 %22)
  %24 = load %struct.idmap*, %struct.idmap** %4, align 8
  %25 = getelementptr inbounds %struct.idmap, %struct.idmap* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.idmap*, %struct.idmap** %4, align 8
  %27 = getelementptr inbounds %struct.idmap, %struct.idmap* %26, i32 0, i32 2
  %28 = load %struct.idmap*, %struct.idmap** %4, align 8
  %29 = call i32 @rpc_init_pipe_dir_object(i32* %27, i32* @nfs_idmap_pipe_dir_object_ops, %struct.idmap* %28)
  %30 = call %struct.rpc_pipe* @rpc_mkpipe_data(i32* @idmap_upcall_ops, i32 0)
  store %struct.rpc_pipe* %30, %struct.rpc_pipe** %5, align 8
  %31 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %32 = call i64 @IS_ERR(%struct.rpc_pipe* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.rpc_pipe* %35)
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %14
  %38 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %39 = load %struct.idmap*, %struct.idmap** %4, align 8
  %40 = getelementptr inbounds %struct.idmap, %struct.idmap* %39, i32 0, i32 1
  store %struct.rpc_pipe* %38, %struct.rpc_pipe** %40, align 8
  %41 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.idmap*, %struct.idmap** %4, align 8
  %49 = getelementptr inbounds %struct.idmap, %struct.idmap* %48, i32 0, i32 2
  %50 = call i32 @rpc_add_pipe_dir_object(i32 %43, i32* %47, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %58

54:                                               ; preds = %37
  %55 = load %struct.idmap*, %struct.idmap** %4, align 8
  %56 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %57 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %56, i32 0, i32 0
  store %struct.idmap* %55, %struct.idmap** %57, align 8
  store i32 0, i32* %2, align 4
  br label %71

58:                                               ; preds = %53
  %59 = load %struct.idmap*, %struct.idmap** %4, align 8
  %60 = getelementptr inbounds %struct.idmap, %struct.idmap* %59, i32 0, i32 1
  %61 = load %struct.rpc_pipe*, %struct.rpc_pipe** %60, align 8
  %62 = call i32 @rpc_destroy_pipe_data(%struct.rpc_pipe* %61)
  br label %63

63:                                               ; preds = %58, %34
  %64 = load %struct.idmap*, %struct.idmap** %4, align 8
  %65 = getelementptr inbounds %struct.idmap, %struct.idmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @put_cred(i32 %66)
  %68 = load %struct.idmap*, %struct.idmap** %4, align 8
  %69 = call i32 @kfree(%struct.idmap* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %54, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.idmap* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @rpc_init_pipe_dir_object(i32*, i32*, %struct.idmap*) #1

declare dso_local %struct.rpc_pipe* @rpc_mkpipe_data(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_pipe*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_pipe*) #1

declare dso_local i32 @rpc_add_pipe_dir_object(i32, i32*, i32*) #1

declare dso_local i32 @rpc_destroy_pipe_data(%struct.rpc_pipe*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @kfree(%struct.idmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
