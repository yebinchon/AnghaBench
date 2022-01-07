; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c___svc_rpcb_register4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c___svc_rpcb_register4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RPCBIND_NETID_UDP = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP = common dso_local global i8* null, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, i32, i16, i16)* @__svc_rpcb_register4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__svc_rpcb_register4(%struct.net* %0, i32 %1, i32 %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %16 = load i16, i16* %11, align 2
  %17 = call i32 @htons(i16 zeroext %16)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @INADDR_ANY, align 4
  %21 = call i32 @htonl(i32 %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  %23 = load i32, i32* @AF_INET, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i16, i16* %10, align 2
  %25 = zext i16 %24 to i32
  switch i32 %25, label %30 [
    i32 128, label %26
    i32 129, label %28
  ]

26:                                               ; preds = %5
  %27 = load i8*, i8** @RPCBIND_NETID_UDP, align 8
  store i8* %27, i8** %13, align 8
  br label %33

28:                                               ; preds = %5
  %29 = load i8*, i8** @RPCBIND_NETID_TCP, align 8
  store i8* %29, i8** %13, align 8
  br label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOPROTOOPT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %53

33:                                               ; preds = %28, %26
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @rpcb_v4_register(%struct.net* %34, i32 %35, i32 %36, %struct.sockaddr* %37, i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @EPROTONOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.net*, %struct.net** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i16, i16* %10, align 2
  %49 = load i16, i16* %11, align 2
  %50 = call i32 @rpcb_register(%struct.net* %45, i32 %46, i32 %47, i16 zeroext %48, i16 zeroext %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %44, %33
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %30
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @rpcb_v4_register(%struct.net*, i32, i32, %struct.sockaddr*, i8*) #1

declare dso_local i32 @rpcb_register(%struct.net*, i32, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
