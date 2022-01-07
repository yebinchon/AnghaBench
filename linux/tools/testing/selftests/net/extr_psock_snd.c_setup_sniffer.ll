; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_setup_sniffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_setup_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@__const.setup_sniffer.tv = private unnamed_addr constant %struct.timeval { i32 100000 }, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket p\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"setsockopt rcv timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sniffer() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.timeval* @__const.setup_sniffer.tv to i8*), i64 4, i1 false)
  %4 = load i32, i32* @PF_PACKET, align 4
  %5 = load i32, i32* @SOCK_RAW, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @error(i32 1, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SOL_SOCKET, align 4
  %15 = load i32, i32* @SO_RCVTIMEO, align 4
  %16 = call i64 @setsockopt(i32 %13, i32 %14, i32 %15, %struct.timeval* %1, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @error(i32 1, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pair_udp_setfilter(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @do_bind(i32 %24)
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #2

declare dso_local i32 @pair_udp_setfilter(i32) #2

declare dso_local i32 @do_bind(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
