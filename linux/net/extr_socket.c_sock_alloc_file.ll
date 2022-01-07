; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_alloc_file.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.file*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sock_mnt = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@socket_file_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @sock_alloc_file(%struct.socket* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i8* [ %23, %16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %24 ]
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = call i32 @SOCK_INODE(%struct.socket* %28)
  %30 = load i32, i32* @sock_mnt, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @O_RDWR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = call %struct.file* @alloc_file_pseudo(i32 %29, i32 %30, i8* %31, i32 %36, i32* @socket_file_ops)
  store %struct.file* %37, %struct.file** %8, align 8
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = call i64 @IS_ERR(%struct.file* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = call i32 @sock_release(%struct.socket* %42)
  %44 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %44, %struct.file** %4, align 8
  br label %53

45:                                               ; preds = %27
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  store %struct.file* %46, %struct.file** %48, align 8
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = load %struct.file*, %struct.file** %8, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  store %struct.socket* %49, %struct.socket** %51, align 8
  %52 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %52, %struct.file** %4, align 8
  br label %53

53:                                               ; preds = %45, %41
  %54 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %54
}

declare dso_local %struct.file* @alloc_file_pseudo(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
