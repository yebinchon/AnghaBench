; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i64, i32, i32, i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"socket packet\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bind packet\00", align 1
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_FANOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"close packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sock_fanout_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_fanout_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_ll, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.sockaddr_ll* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @PF_PACKET, align 4
  %11 = load i32, i32* @SOCK_RAW, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #4
  unreachable

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pair_udp_setfilter(i32 %19)
  %21 = load i32, i32* @AF_PACKET, align 4
  %22 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ETH_P_IP, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = call i64 @if_nametoindex(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #4
  unreachable

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = bitcast %struct.sockaddr_ll* %6 to i8*
  %37 = call i64 @bind(i32 %35, i8* %36, i32 24)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SOL_PACKET, align 4
  %49 = load i32, i32* @PACKET_FANOUT, align 4
  %50 = call i64 @setsockopt(i32 %47, i32 %48, i32 %49, i32* %8, i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @close(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #4
  unreachable

59:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @pair_udp_setfilter(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @if_nametoindex(i8*) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
