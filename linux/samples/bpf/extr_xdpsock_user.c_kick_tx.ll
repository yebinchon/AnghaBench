; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_kick_tx.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_kick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*)* @kick_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_tx(%struct.xsk_socket_info* %0) #0 {
  %2 = alloca %struct.xsk_socket_info*, align 8
  %3 = alloca i32, align 4
  store %struct.xsk_socket_info* %0, %struct.xsk_socket_info** %2, align 8
  %4 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %5 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @xsk_socket__fd(i32 %6)
  %8 = load i32, i32* @MSG_DONTWAIT, align 4
  %9 = call i32 @sendto(i32 %7, i32* null, i32 0, i32 %8, i32* null, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENOBUFS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EAGAIN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EBUSY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %12, %1
  br label %28

25:                                               ; preds = %20
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @exit_with_error(i64 %26)
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @sendto(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @xsk_socket__fd(i32) #1

declare dso_local i32 @exit_with_error(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
