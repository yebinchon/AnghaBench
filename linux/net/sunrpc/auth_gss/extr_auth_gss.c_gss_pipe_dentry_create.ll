; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_dentry_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_dentry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rpc_pipe_dir_object = type { %struct.gss_pipe* }
%struct.gss_pipe = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.rpc_pipe_dir_object*)* @gss_pipe_dentry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_pipe_dentry_create(%struct.dentry* %0, %struct.rpc_pipe_dir_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.rpc_pipe_dir_object*, align 8
  %6 = alloca %struct.gss_pipe*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.rpc_pipe_dir_object* %1, %struct.rpc_pipe_dir_object** %5, align 8
  %8 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %8, i32 0, i32 0
  %10 = load %struct.gss_pipe*, %struct.gss_pipe** %9, align 8
  store %struct.gss_pipe* %10, %struct.gss_pipe** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = load %struct.gss_pipe*, %struct.gss_pipe** %6, align 8
  %13 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gss_pipe*, %struct.gss_pipe** %6, align 8
  %16 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.gss_pipe*, %struct.gss_pipe** %6, align 8
  %19 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry* %11, i32 %14, i32 %17, %struct.TYPE_2__* %20)
  store %struct.dentry* %21, %struct.dentry** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call i64 @IS_ERR(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.dentry* %26)
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load %struct.gss_pipe*, %struct.gss_pipe** %6, align 8
  %31 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.dentry* %29, %struct.dentry** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
