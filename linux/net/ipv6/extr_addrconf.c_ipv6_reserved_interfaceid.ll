; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_reserved_interfaceid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_reserved_interfaceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ipv6_reserved_interfaceid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_reserved_interfaceid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr, align 8
  %4 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  store i32* %0, i32** %4, align 8
  %5 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %8, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @htonl(i32 33578751)
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htonl(i32 -33554432)
  %29 = and i32 %27, %28
  %30 = call i32 @htonl(i32 -33554432)
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %51

33:                                               ; preds = %23, %16
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @htonl(i32 -33554433)
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @htonl(i32 -128)
  %46 = and i32 %44, %45
  %47 = call i32 @htonl(i32 -128)
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %51

50:                                               ; preds = %40, %33
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %32, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
