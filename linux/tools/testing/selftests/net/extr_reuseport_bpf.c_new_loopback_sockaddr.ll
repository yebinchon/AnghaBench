; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_new_loopback_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_new_loopback_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockaddr* (i32, i32)* @new_loopback_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockaddr* @new_loopback_sockaddr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.sockaddr* @new_any_sockaddr(i32 %8, i32 %9)
  store %struct.sockaddr* %10, %struct.sockaddr** %5, align 8
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %26 [
    i32 129, label %12
    i32 128, label %20
  ]

12:                                               ; preds = %2
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %6, align 8
  %15 = load i32, i32* @INADDR_LOOPBACK, align 4
  %16 = call i32 @htonl(i32 %15)
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %7, align 8
  %23 = load i32, i32* @in6addr_loopback, align 4
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %20, %12
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  ret %struct.sockaddr* %30
}

declare dso_local %struct.sockaddr* @new_any_sockaddr(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
