; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_sock_getport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_sock_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.socket*)* @xs_sock_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @xs_sock_getport(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sockaddr_storage, align 4
  %4 = alloca i16, align 2
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i16 0, i16* %4, align 2
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %7 = call i64 @kernel_getsockname(%struct.socket* %5, %struct.sockaddr* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 129, label %18
  ]

13:                                               ; preds = %10
  %14 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr_in6*
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call zeroext i16 @ntohs(i32 %16)
  store i16 %17, i16* %4, align 2
  br label %23

18:                                               ; preds = %10
  %19 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call zeroext i16 @ntohs(i32 %21)
  store i16 %22, i16* %4, align 2
  br label %23

23:                                               ; preds = %18, %10, %13
  br label %24

24:                                               ; preds = %23, %9
  %25 = load i16, i16* %4, align 2
  ret i16 %25
}

declare dso_local i64 @kernel_getsockname(%struct.socket*, %struct.sockaddr*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
