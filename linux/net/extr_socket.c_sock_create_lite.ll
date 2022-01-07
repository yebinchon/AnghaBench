; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_create_lite.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_create_lite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_create_lite(i32 %0, i32 %1, i32 %2, %struct.socket** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.socket** %3, %struct.socket*** %8, align 8
  store %struct.socket* null, %struct.socket** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @security_socket_create(i32 %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %38

18:                                               ; preds = %4
  %19 = call %struct.socket* (...) @sock_alloc()
  store %struct.socket* %19, %struct.socket** %10, align 8
  %20 = load %struct.socket*, %struct.socket** %10, align 8
  %21 = icmp ne %struct.socket* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.socket*, %struct.socket** %10, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.socket*, %struct.socket** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @security_socket_post_create(%struct.socket* %29, i32 %30, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %42

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %42, %37, %22, %17
  %39 = load %struct.socket*, %struct.socket** %10, align 8
  %40 = load %struct.socket**, %struct.socket*** %8, align 8
  store %struct.socket* %39, %struct.socket** %40, align 8
  %41 = load i32, i32* %9, align 4
  ret i32 %41

42:                                               ; preds = %36
  %43 = load %struct.socket*, %struct.socket** %10, align 8
  %44 = call i32 @sock_release(%struct.socket* %43)
  store %struct.socket* null, %struct.socket** %10, align 8
  br label %38
}

declare dso_local i32 @security_socket_create(i32, i32, i32, i32) #1

declare dso_local %struct.socket* @sock_alloc(...) #1

declare dso_local i32 @security_socket_post_create(%struct.socket*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
