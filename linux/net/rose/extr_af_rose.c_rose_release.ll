; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.rose_sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @rose_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rose_sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = icmp eq %struct.sock* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_hold(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_orphan(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.rose_sock* @rose_sk(%struct.sock* %19)
  store %struct.rose_sock* %20, %struct.rose_sock** %5, align 8
  %21 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %79 [
    i32 133, label %24
    i32 131, label %33
    i32 132, label %48
    i32 130, label %48
    i32 129, label %48
    i32 128, label %48
  ]

24:                                               ; preds = %12
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @release_sock(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @rose_disconnect(%struct.sock* %27, i32 0, i32 -1, i32 -1)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @rose_destroy_socket(%struct.sock* %31)
  br label %80

33:                                               ; preds = %12
  %34 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %35 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @release_sock(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @rose_disconnect(%struct.sock* %42, i32 0, i32 -1, i32 -1)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @lock_sock(%struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call i32 @rose_destroy_socket(%struct.sock* %46)
  br label %80

48:                                               ; preds = %12, %12, %12, %12
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @rose_clear_queues(%struct.sock* %49)
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @rose_stop_idletimer(%struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %55 = call i32 @rose_write_internal(%struct.sock* %53, i32 %54)
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call i32 @rose_start_t3timer(%struct.sock* %56)
  %58 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %59 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %58, i32 0, i32 0
  store i32 131, i32* %59, align 8
  %60 = load i32, i32* @TCP_CLOSE, align 4
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @SEND_SHUTDOWN, align 4
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %69, align 8
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = call i32 %70(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = load i32, i32* @SOCK_DEAD, align 4
  %75 = call i32 @sock_set_flag(%struct.sock* %73, i32 %74)
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = load i32, i32* @SOCK_DESTROY, align 4
  %78 = call i32 @sock_set_flag(%struct.sock* %76, i32 %77)
  br label %80

79:                                               ; preds = %12
  br label %80

80:                                               ; preds = %79, %48, %33, %24
  %81 = load %struct.socket*, %struct.socket** %3, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %82, align 8
  %83 = load %struct.sock*, %struct.sock** %4, align 8
  %84 = call i32 @release_sock(%struct.sock* %83)
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = call i32 @sock_put(%struct.sock* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @rose_destroy_socket(%struct.sock*) #1

declare dso_local i32 @rose_clear_queues(%struct.sock*) #1

declare dso_local i32 @rose_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_t3timer(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
