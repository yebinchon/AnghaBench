; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.net*, i32)*, void (%struct.net*, i32)*, %struct.mutex*, %struct.module*, i64 }
%struct.net = type { i32 }
%struct.mutex = type { i32 }
%struct.module = type { i32 }
%struct.socket = type { i64, i32, i32 }
%struct.netlink_sock = type { i32 (%struct.net.0*, i32)*, void (%struct.net.1*, i32)*, %struct.module* }
%struct.net.0 = type opaque
%struct.net.1 = type opaque

@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@MAX_LINKS = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@netlink_proto = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @netlink_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.module*, align 8
  %11 = alloca %struct.mutex*, align 8
  %12 = alloca %struct.netlink_sock*, align 8
  %13 = alloca i32 (%struct.net*, i32)*, align 8
  %14 = alloca void (%struct.net*, i32)*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.module* null, %struct.module** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @SS_UNCONNECTED, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_RAW, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCK_DGRAM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %132

33:                                               ; preds = %24, %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MAX_LINKS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @EPROTONOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %132

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAX_LINKS, align 4
  %46 = call i32 @array_index_nospec(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = call i32 (...) @netlink_lock_table()
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load %struct.module*, %struct.module** %60, align 8
  %62 = call i64 @try_module_get(%struct.module* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load %struct.module*, %struct.module** %69, align 8
  store %struct.module* %70, %struct.module** %10, align 8
  br label %74

71:                                               ; preds = %55, %43
  %72 = load i32, i32* @EPROTONOSUPPORT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load %struct.mutex*, %struct.mutex** %79, align 8
  store %struct.mutex* %80, %struct.mutex** %11, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.net*, i32)*, i32 (%struct.net*, i32)** %85, align 8
  store i32 (%struct.net*, i32)* %86, i32 (%struct.net*, i32)** %13, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load void (%struct.net*, i32)*, void (%struct.net*, i32)** %91, align 8
  store void (%struct.net*, i32)* %92, void (%struct.net*, i32)** %14, align 8
  %93 = call i32 (...) @netlink_unlock_table()
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  br label %127

97:                                               ; preds = %74
  %98 = load %struct.net*, %struct.net** %6, align 8
  %99 = load %struct.socket*, %struct.socket** %7, align 8
  %100 = load %struct.mutex*, %struct.mutex** %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @__netlink_create(%struct.net* %98, %struct.socket* %99, %struct.mutex* %100, i32 %101, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %129

107:                                              ; preds = %97
  %108 = call i32 (...) @local_bh_disable()
  %109 = load %struct.net*, %struct.net** %6, align 8
  %110 = call i32 @sock_prot_inuse_add(%struct.net* %109, i32* @netlink_proto, i32 1)
  %111 = call i32 (...) @local_bh_enable()
  %112 = load %struct.socket*, %struct.socket** %7, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.netlink_sock* @nlk_sk(i32 %114)
  store %struct.netlink_sock* %115, %struct.netlink_sock** %12, align 8
  %116 = load %struct.module*, %struct.module** %10, align 8
  %117 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %118 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %117, i32 0, i32 2
  store %struct.module* %116, %struct.module** %118, align 8
  %119 = load i32 (%struct.net*, i32)*, i32 (%struct.net*, i32)** %13, align 8
  %120 = bitcast i32 (%struct.net*, i32)* %119 to i32 (%struct.net.0*, i32)*
  %121 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %122 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %121, i32 0, i32 0
  store i32 (%struct.net.0*, i32)* %120, i32 (%struct.net.0*, i32)** %122, align 8
  %123 = load void (%struct.net*, i32)*, void (%struct.net*, i32)** %14, align 8
  %124 = bitcast void (%struct.net*, i32)* %123 to void (%struct.net.1*, i32)*
  %125 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %126 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %125, i32 0, i32 1
  store void (%struct.net.1*, i32)* %124, void (%struct.net.1*, i32)** %126, align 8
  br label %127

127:                                              ; preds = %129, %107, %96
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %5, align 4
  br label %132

129:                                              ; preds = %106
  %130 = load %struct.module*, %struct.module** %10, align 8
  %131 = call i32 @module_put(%struct.module* %130)
  br label %127

132:                                              ; preds = %127, %40, %30
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @netlink_lock_table(...) #1

declare dso_local i64 @try_module_get(%struct.module*) #1

declare dso_local i32 @netlink_unlock_table(...) #1

declare dso_local i32 @__netlink_create(%struct.net*, %struct.socket*, %struct.mutex*, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local %struct.netlink_sock* @nlk_sk(i32) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
