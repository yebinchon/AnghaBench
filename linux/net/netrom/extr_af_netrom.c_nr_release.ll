; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.nr_sock = type { i32, i32 }

@NR_DISCREQ = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @nr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.nr_sock*, align 8
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
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_hold(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_orphan(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.nr_sock* @nr_sk(%struct.sock* %19)
  store %struct.nr_sock* %20, %struct.nr_sock** %5, align 8
  %21 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %22 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %63 [
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 128, label %29
  ]

24:                                               ; preds = %12, %12, %12
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @nr_disconnect(%struct.sock* %25, i32 0)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @nr_destroy_socket(%struct.sock* %27)
  br label %64

29:                                               ; preds = %12
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @nr_clear_queues(%struct.sock* %30)
  %32 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %33 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* @NR_DISCREQ, align 4
  %36 = call i32 @nr_write_internal(%struct.sock* %34, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @nr_start_t1timer(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @nr_stop_t2timer(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @nr_stop_t4timer(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 @nr_stop_idletimer(%struct.sock* %43)
  %45 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %46 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %45, i32 0, i32 0
  store i32 129, i32* %46, align 4
  %47 = load i32, i32* @TCP_CLOSE, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SEND_SHUTDOWN, align 4
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %56, align 8
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call i32 %57(%struct.sock* %58)
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = load i32, i32* @SOCK_DESTROY, align 4
  %62 = call i32 @sock_set_flag(%struct.sock* %60, i32 %61)
  br label %64

63:                                               ; preds = %12
  br label %64

64:                                               ; preds = %63, %29, %24
  %65 = load %struct.socket*, %struct.socket** %3, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %66, align 8
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call i32 @release_sock(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @sock_put(%struct.sock* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %64, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_disconnect(%struct.sock*, i32) #1

declare dso_local i32 @nr_destroy_socket(%struct.sock*) #1

declare dso_local i32 @nr_clear_queues(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t2timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t4timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
