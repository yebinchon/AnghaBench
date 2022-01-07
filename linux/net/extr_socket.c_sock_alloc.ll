; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i32 }
%struct.inode = type { i32, i32*, i32, i32, i32 }

@sock_mnt = common dso_local global %struct.TYPE_2__* null, align 8
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@sockfs_inode_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @sock_alloc() #0 {
  %1 = alloca %struct.socket*, align 8
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sock_mnt, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.inode* @new_inode_pseudo(i32 %6)
  store %struct.inode* %7, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.socket* null, %struct.socket** %1, align 8
  br label %31

11:                                               ; preds = %0
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.socket* @SOCKET_I(%struct.inode* %12)
  store %struct.socket* %13, %struct.socket** %3, align 8
  %14 = call i32 (...) @get_next_ino()
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @S_IFSOCK, align 4
  %18 = load i32, i32* @S_IRWXUGO, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = call i32 (...) @current_fsuid()
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @current_fsgid()
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  store i32* @sockfs_inode_ops, i32** %29, align 8
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  store %struct.socket* %30, %struct.socket** %1, align 8
  br label %31

31:                                               ; preds = %11, %10
  %32 = load %struct.socket*, %struct.socket** %1, align 8
  ret %struct.socket* %32
}

declare dso_local %struct.inode* @new_inode_pseudo(i32) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
