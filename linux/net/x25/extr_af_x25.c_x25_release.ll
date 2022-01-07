; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.x25_sock = type { i32 }

@X25_CLEAR_REQUEST = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @x25_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.x25_sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = icmp ne %struct.sock* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.x25_sock* @x25_sk(%struct.sock* %13)
  store %struct.x25_sock* %14, %struct.x25_sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_hold(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %20 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %56 [
    i32 132, label %22
    i32 130, label %22
    i32 131, label %27
    i32 129, label %27
    i32 128, label %27
  ]

22:                                               ; preds = %12, %12
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @x25_disconnect(%struct.sock* %23, i32 0, i32 0, i32 0)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @__x25_destroy_socket(%struct.sock* %25)
  br label %59

27:                                               ; preds = %12, %12, %12
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @x25_clear_queues(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load i32, i32* @X25_CLEAR_REQUEST, align 4
  %32 = call i32 @x25_write_internal(%struct.sock* %30, i32 %31)
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @x25_start_t23timer(%struct.sock* %33)
  %35 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %36 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %35, i32 0, i32 0
  store i32 130, i32* %36, align 4
  %37 = load i32, i32* @TCP_CLOSE, align 4
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SEND_SHUTDOWN, align 4
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %46, align 8
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 %47(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load i32, i32* @SOCK_DEAD, align 4
  %52 = call i32 @sock_set_flag(%struct.sock* %50, i32 %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load i32, i32* @SOCK_DESTROY, align 4
  %55 = call i32 @sock_set_flag(%struct.sock* %53, i32 %54)
  br label %56

56:                                               ; preds = %12, %27
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @sock_orphan(%struct.sock* %57)
  br label %59

59:                                               ; preds = %56, %22
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @release_sock(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = call i32 @sock_put(%struct.sock* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @__x25_destroy_socket(%struct.sock*) #1

declare dso_local i32 @x25_clear_queues(%struct.sock*) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
