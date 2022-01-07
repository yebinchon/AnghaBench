; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_get_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.socket = type { %struct.TYPE_2__*, %struct.sock* }
%struct.TYPE_2__ = type { i64 }

@FMODE_PATH = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @unix_get_socket(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  store %struct.sock* null, %struct.sock** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.inode* @file_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISSOCK(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FMODE_PATH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.socket* @SOCKET_I(%struct.inode* %22)
  store %struct.socket* %23, %struct.socket** %5, align 8
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PF_UNIX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %43, %struct.sock** %3, align 8
  br label %44

44:                                               ; preds = %42, %34, %29, %21
  br label %48

45:                                               ; preds = %14, %1
  %46 = load %struct.file*, %struct.file** %2, align 8
  %47 = call %struct.sock* @io_uring_get_socket(%struct.file* %46)
  store %struct.sock* %47, %struct.sock** %3, align 8
  br label %48

48:                                               ; preds = %45, %44
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %49
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

declare dso_local %struct.sock* @io_uring_get_socket(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
