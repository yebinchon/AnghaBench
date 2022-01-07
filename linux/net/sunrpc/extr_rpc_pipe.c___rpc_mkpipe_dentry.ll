; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_mkpipe_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_mkpipe_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.rpc_pipe = type { i32 }
%struct.rpc_inode = type { %struct.rpc_pipe*, i8* }

@S_IFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*, %struct.rpc_pipe*)* @__rpc_mkpipe_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpc_mkpipe_dentry(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4, %struct.rpc_pipe* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rpc_pipe*, align 8
  %14 = alloca %struct.rpc_inode*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.file_operations* %3, %struct.file_operations** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.rpc_pipe* %5, %struct.rpc_pipe** %13, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = load i32, i32* @S_IFIFO, align 4
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @__rpc_create_common(%struct.inode* %16, %struct.dentry* %17, i32 %20, %struct.file_operations* %21, i8* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %41

28:                                               ; preds = %6
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = call %struct.rpc_inode* @RPC_I(i32 %30)
  store %struct.rpc_inode* %31, %struct.rpc_inode** %14, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.rpc_inode*, %struct.rpc_inode** %14, align 8
  %34 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.rpc_pipe*, %struct.rpc_pipe** %13, align 8
  %36 = load %struct.rpc_inode*, %struct.rpc_inode** %14, align 8
  %37 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %36, i32 0, i32 0
  store %struct.rpc_pipe* %35, %struct.rpc_pipe** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load %struct.dentry*, %struct.dentry** %9, align 8
  %40 = call i32 @fsnotify_create(%struct.inode* %38, %struct.dentry* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @__rpc_create_common(%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*) #1

declare dso_local %struct.rpc_inode* @RPC_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
