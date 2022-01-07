; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_super_address.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_super_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_server*)* @nfs_compare_super_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_super_address(%struct.nfs_server* %0, %struct.nfs_server* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca %struct.rpc_xprt*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %17, align 8
  store %struct.rpc_xprt* %18, %struct.rpc_xprt** %8, align 8
  %19 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %22, align 8
  store %struct.rpc_xprt* %23, %struct.rpc_xprt** %9, align 8
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @net_eq(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

33:                                               ; preds = %2
  %34 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %6, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.sockaddr*
  store %struct.sockaddr* %43, %struct.sockaddr** %7, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %105

52:                                               ; preds = %33
  %53 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %103 [
    i32 129, label %56
    i32 128, label %81
  ]

56:                                               ; preds = %52
  %57 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %58 = bitcast %struct.sockaddr* %57 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %58, %struct.sockaddr_in** %10, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %60 = bitcast %struct.sockaddr* %59 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %60, %struct.sockaddr_in** %11, align 8
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %105

71:                                               ; preds = %56
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %105

80:                                               ; preds = %71
  br label %104

81:                                               ; preds = %52
  %82 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %83 = bitcast %struct.sockaddr* %82 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %83, %struct.sockaddr_in6** %12, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %85 = bitcast %struct.sockaddr* %84 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %85, %struct.sockaddr_in6** %13, align 8
  %86 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %87 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %86, i32 0, i32 1
  %88 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %88, i32 0, i32 1
  %90 = call i32 @ipv6_addr_equal(i32* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %105

93:                                               ; preds = %81
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %105

102:                                              ; preds = %93
  br label %104

103:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %105

104:                                              ; preds = %102, %80
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %103, %101, %92, %79, %70, %51, %32
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
