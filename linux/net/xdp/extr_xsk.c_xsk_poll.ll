; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.xdp_sock = type { i64, i64, i32, %struct.xdp_umem*, %struct.net_device* }
%struct.xdp_umem = type { i64 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i64)* }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)* @xsk_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_poll(%struct.file* %0, %struct.socket* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.poll_table_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.xdp_sock*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.xdp_umem*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = load %struct.poll_table_struct*, %struct.poll_table_struct** %7, align 8
  %16 = call i32 @datagram_poll(%struct.file* %13, %struct.socket* %14, %struct.poll_table_struct* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %20)
  store %struct.xdp_sock* %21, %struct.xdp_sock** %10, align 8
  %22 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %23 = call i32 @xsk_is_bound(%struct.xdp_sock* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %3
  %32 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %33 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %32, i32 0, i32 4
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %11, align 8
  %35 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %36 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %35, i32 0, i32 3
  %37 = load %struct.xdp_umem*, %struct.xdp_umem** %36, align 8
  store %struct.xdp_umem* %37, %struct.xdp_umem** %12, align 8
  %38 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %39 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.net_device*, i32, i64)*, i32 (%struct.net_device*, i32, i64)** %46, align 8
  %48 = icmp ne i32 (%struct.net_device*, i32, i64)* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.net_device*, %struct.net_device** %11, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.net_device*, i32, i64)*, i32 (%struct.net_device*, i32, i64)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %57 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %60 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 %54(%struct.net_device* %55, i32 %58, i64 %61)
  br label %66

63:                                               ; preds = %42
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = call i32 @__xsk_sendmsg(%struct.sock* %64)
  br label %66

66:                                               ; preds = %63, %49
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %69 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %74 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @xskq_empty_desc(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @POLLIN, align 4
  %80 = load i32, i32* @POLLRDNORM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %72, %67
  %85 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %86 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %91 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @xskq_full_desc(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @POLLOUT, align 4
  %97 = load i32, i32* @POLLWRNORM, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %95, %89, %84
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %29
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @datagram_poll(%struct.file*, %struct.socket*, %struct.poll_table_struct*) #1

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_is_bound(%struct.xdp_sock*) #1

declare dso_local i32 @__xsk_sendmsg(%struct.sock*) #1

declare dso_local i32 @xskq_empty_desc(i64) #1

declare dso_local i32 @xskq_full_desc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
