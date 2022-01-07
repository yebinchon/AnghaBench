; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.socket_wq, %struct.sock* }
%struct.socket_wq = type { i32 }
%struct.sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_FASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @sock_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.socket_wq*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.socket*, %struct.socket** %8, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  store %struct.socket_wq* %18, %struct.socket_wq** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = icmp eq %struct.sock* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.socket_wq*, %struct.socket_wq** %10, align 8
  %31 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %30, i32 0, i32 0
  %32 = call i32 @fasync_helper(i32 %27, %struct.file* %28, i32 %29, i32* %31)
  %33 = load %struct.socket_wq*, %struct.socket_wq** %10, align 8
  %34 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = load i32, i32* @SOCK_FASYNC, align 4
  %40 = call i32 @sock_reset_flag(%struct.sock* %38, i32 %39)
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load i32, i32* @SOCK_FASYNC, align 4
  %44 = call i32 @sock_set_flag(%struct.sock* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = call i32 @release_sock(%struct.sock* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
