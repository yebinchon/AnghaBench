; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_verify_server_address.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_verify_server_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@INADDR_ANY = common dso_local global i32 0, align 4
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NFS: Invalid IP address specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @nfs_verify_server_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_verify_server_address(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 128, label %20
  ]

9:                                                ; preds = %1
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %11, %struct.sockaddr_in** %4, align 8
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @INADDR_ANY, align 4
  %17 = call i32 @htonl(i32 %16)
  %18 = icmp ne i32 %15, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in6*
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  store %struct.in6_addr* %23, %struct.in6_addr** %5, align 8
  %24 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %25 = call i32 @ipv6_addr_any(%struct.in6_addr* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @MOUNT, align 4
  %31 = call i32 @dfprintk(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %20, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @dfprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
