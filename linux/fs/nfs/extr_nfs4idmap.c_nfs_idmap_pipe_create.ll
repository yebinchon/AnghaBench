; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_pipe_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_pipe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rpc_pipe_dir_object = type { %struct.idmap* }
%struct.idmap = type { %struct.rpc_pipe* }
%struct.rpc_pipe = type { %struct.dentry* }

@.str = private unnamed_addr constant [6 x i8] c"idmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.rpc_pipe_dir_object*)* @nfs_idmap_pipe_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_pipe_create(%struct.dentry* %0, %struct.rpc_pipe_dir_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.rpc_pipe_dir_object*, align 8
  %6 = alloca %struct.idmap*, align 8
  %7 = alloca %struct.rpc_pipe*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.rpc_pipe_dir_object* %1, %struct.rpc_pipe_dir_object** %5, align 8
  %9 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %9, i32 0, i32 0
  %11 = load %struct.idmap*, %struct.idmap** %10, align 8
  store %struct.idmap* %11, %struct.idmap** %6, align 8
  %12 = load %struct.idmap*, %struct.idmap** %6, align 8
  %13 = getelementptr inbounds %struct.idmap, %struct.idmap* %12, i32 0, i32 0
  %14 = load %struct.rpc_pipe*, %struct.rpc_pipe** %13, align 8
  store %struct.rpc_pipe* %14, %struct.rpc_pipe** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.idmap*, %struct.idmap** %6, align 8
  %17 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  %18 = call %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.idmap* %16, %struct.rpc_pipe* %17)
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = call i64 @IS_ERR(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.dentry* %23)
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  %28 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %27, i32 0, i32 0
  store %struct.dentry* %26, %struct.dentry** %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry*, i8*, %struct.idmap*, %struct.rpc_pipe*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
