; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sock_example.h_open_raw_sock.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sock_example.h_open_raw_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot create raw socket\0A\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bind to %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_raw_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_raw_sock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_ll, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @PF_PACKET, align 4
  %7 = load i32, i32* @SOCK_RAW, align 4
  %8 = load i32, i32* @SOCK_NONBLOCK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SOCK_CLOEXEC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ETH_P_ALL, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = call i32 @socket(i32 %6, i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = call i32 @memset(%struct.sockaddr_ll* %4, i32 0, i32 12)
  %21 = load i32, i32* @AF_PACKET, align 4
  %22 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @if_nametoindex(i8* %23)
  %25 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ETH_P_ALL, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = bitcast %struct.sockaddr_ll* %4 to %struct.sockaddr*
  %31 = call i64 @bind(i32 %29, %struct.sockaddr* %30, i32 12)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %2, align 4
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %33, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
