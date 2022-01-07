; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32 }
%struct.kvec = type { i32, i32* }
%struct.msghdr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"code 0x%2.2x\00", align 1
@WRITE = common dso_local global i32 0, align 4
@SMP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, i32, i8*)* @smp_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_send_cmd(%struct.l2cap_conn* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.l2cap_chan*, align 8
  %10 = alloca %struct.smp_chan*, align 8
  %11 = alloca [2 x %struct.kvec], align 16
  %12 = alloca %struct.msghdr, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %14 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %13, i32 0, i32 0
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  store %struct.l2cap_chan* %15, %struct.l2cap_chan** %9, align 8
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %17 = icmp ne %struct.l2cap_chan* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %60

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i32 0, i32 1
  store i32* %6, i32** %23, align 8
  %24 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  store i32 1, i32* %25, align 16
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 1
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 1
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 16
  %33 = call i32 @memset(%struct.msghdr* %12, i32 0, i32 4)
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  %35 = load i32, i32* @WRITE, align 4
  %36 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 1, %37
  %39 = call i32 @iov_iter_kvec(i32* %34, i32 %35, %struct.kvec* %36, i32 2, i32 %38)
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 1, %41
  %43 = call i32 @l2cap_chan_send(%struct.l2cap_chan* %40, %struct.msghdr* %12, i32 %42)
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 0
  %46 = load %struct.smp_chan*, %struct.smp_chan** %45, align 8
  %47 = icmp ne %struct.smp_chan* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %19
  br label %60

49:                                               ; preds = %19
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 0
  %52 = load %struct.smp_chan*, %struct.smp_chan** %51, align 8
  store %struct.smp_chan* %52, %struct.smp_chan** %10, align 8
  %53 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %54 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %53, i32 0, i32 0
  %55 = call i32 @cancel_delayed_work_sync(i32* %54)
  %56 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %57 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %56, i32 0, i32 0
  %58 = load i32, i32* @SMP_TIMEOUT, align 4
  %59 = call i32 @schedule_delayed_work(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %48, %18
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @l2cap_chan_send(%struct.l2cap_chan*, %struct.msghdr*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
