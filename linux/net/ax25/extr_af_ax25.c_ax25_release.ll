; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)*, i32, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32* }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@AX25_DISC = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@AX25_VALUES_PROTOCOL = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i8* null, align 8
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ax25_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
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
  br label %134

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_hold(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_orphan(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_14__* @sk_to_ax25(%struct.sock* %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_SEQPACKET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %111

26:                                               ; preds = %12
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %109 [
    i32 132, label %30
    i32 131, label %39
    i32 130, label %39
    i32 129, label %61
    i32 128, label %61
  ]

30:                                               ; preds = %26
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @release_sock(%struct.sock* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call i32 @ax25_disconnect(%struct.TYPE_14__* %33, i32 0)
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %37)
  br label %110

39:                                               ; preds = %26, %26
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32, i32* @AX25_DISC, align 4
  %42 = load i32, i32* @AX25_POLLON, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(%struct.TYPE_14__* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @ax25_disconnect(%struct.TYPE_14__* %47, i32 0)
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @lock_sock(%struct.sock* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SOCK_DESTROY, align 4
  %55 = call i32 @sock_flag(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %39
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %57, %39
  br label %110

61:                                               ; preds = %26, %26
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = call i32 @ax25_clear_queues(%struct.TYPE_14__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @AX25_VALUES_PROTOCOL, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %86 [
    i32 133, label %74
    i32 134, label %74
  ]

74:                                               ; preds = %61, %61
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load i32, i32* @AX25_DISC, align 4
  %77 = load i32, i32* @AX25_POLLON, align 4
  %78 = load i32, i32* @AX25_COMMAND, align 4
  %79 = call i32 @ax25_send_control(%struct.TYPE_14__* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = call i32 @ax25_stop_t2timer(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = call i32 @ax25_stop_t3timer(%struct.TYPE_14__* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i32 @ax25_stop_idletimer(%struct.TYPE_14__* %84)
  br label %86

86:                                               ; preds = %61, %74
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = call i32 @ax25_calculate_t1(%struct.TYPE_14__* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = call i32 @ax25_start_t1timer(%struct.TYPE_14__* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i32 130, i32* %92, align 8
  %93 = load i8*, i8** @TCP_CLOSE, align 8
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @SEND_SHUTDOWN, align 4
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 1
  %103 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %102, align 8
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = call i32 %103(%struct.sock* %104)
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = load i32, i32* @SOCK_DESTROY, align 4
  %108 = call i32 @sock_set_flag(%struct.sock* %106, i32 %107)
  br label %110

109:                                              ; preds = %26
  br label %110

110:                                              ; preds = %109, %86, %60, %30
  br label %127

111:                                              ; preds = %12
  %112 = load i8*, i8** @TCP_CLOSE, align 8
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @SEND_SHUTDOWN, align 4
  %116 = load %struct.sock*, %struct.sock** %4, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = getelementptr inbounds %struct.sock, %struct.sock* %120, i32 0, i32 1
  %122 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %121, align 8
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = call i32 %122(%struct.sock* %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %125)
  br label %127

127:                                              ; preds = %111, %110
  %128 = load %struct.socket*, %struct.socket** %3, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %129, align 8
  %130 = load %struct.sock*, %struct.sock** %4, align 8
  %131 = call i32 @release_sock(%struct.sock* %130)
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = call i32 @sock_put(%struct.sock* %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %11
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_14__* @sk_to_ax25(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ax25_destroy_socket(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @sock_flag(i32, i32) #1

declare dso_local i32 @ax25_clear_queues(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_t3timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_idletimer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_14__*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
