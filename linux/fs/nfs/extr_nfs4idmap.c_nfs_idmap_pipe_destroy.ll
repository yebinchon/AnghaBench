; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_pipe_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_pipe_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rpc_pipe_dir_object = type { %struct.idmap* }
%struct.idmap = type { %struct.rpc_pipe* }
%struct.rpc_pipe = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.rpc_pipe_dir_object*)* @nfs_idmap_pipe_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_idmap_pipe_destroy(%struct.dentry* %0, %struct.rpc_pipe_dir_object* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.rpc_pipe_dir_object*, align 8
  %5 = alloca %struct.idmap*, align 8
  %6 = alloca %struct.rpc_pipe*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.rpc_pipe_dir_object* %1, %struct.rpc_pipe_dir_object** %4, align 8
  %7 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %7, i32 0, i32 0
  %9 = load %struct.idmap*, %struct.idmap** %8, align 8
  store %struct.idmap* %9, %struct.idmap** %5, align 8
  %10 = load %struct.idmap*, %struct.idmap** %5, align 8
  %11 = getelementptr inbounds %struct.idmap, %struct.idmap* %10, i32 0, i32 0
  %12 = load %struct.rpc_pipe*, %struct.rpc_pipe** %11, align 8
  store %struct.rpc_pipe* %12, %struct.rpc_pipe** %6, align 8
  %13 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %14 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %19 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @rpc_unlink(i32* %20)
  %22 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %23 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @rpc_unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
