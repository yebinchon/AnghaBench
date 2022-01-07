; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mc_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mc_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_mreq_max = type { i64, i64, i64, i32 }
%struct.packet_mclist = type { i64, i64, i64, i64, %struct.packet_mclist*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.packet_mclist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.packet_mreq_max*)* @packet_mc_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_mc_drop(%struct.sock* %0, %struct.packet_mreq_max* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.packet_mreq_max*, align 8
  %5 = alloca %struct.packet_mclist*, align 8
  %6 = alloca %struct.packet_mclist**, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.packet_mreq_max* %1, %struct.packet_mreq_max** %4, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.packet_mclist** %11, %struct.packet_mclist*** %6, align 8
  br label %12

12:                                               ; preds = %80, %2
  %13 = load %struct.packet_mclist**, %struct.packet_mclist*** %6, align 8
  %14 = load %struct.packet_mclist*, %struct.packet_mclist** %13, align 8
  store %struct.packet_mclist* %14, %struct.packet_mclist** %5, align 8
  %15 = icmp ne %struct.packet_mclist* %14, null
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  %17 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %18 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %21 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %16
  %25 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %26 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %29 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %24
  %33 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %34 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %37 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %32
  %41 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %42 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %45 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %48 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @memcmp(i32 %43, i32 %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %40
  %53 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %54 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %60 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %59, i32 0, i32 4
  %61 = load %struct.packet_mclist*, %struct.packet_mclist** %60, align 8
  %62 = load %struct.packet_mclist**, %struct.packet_mclist*** %6, align 8
  store %struct.packet_mclist* %61, %struct.packet_mclist** %62, align 8
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @sock_net(%struct.sock* %63)
  %65 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %66 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.net_device* @__dev_get_by_index(i32 %64, i64 %67)
  store %struct.net_device* %68, %struct.net_device** %7, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = icmp ne %struct.net_device* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %74 = call i32 @packet_dev_mc(%struct.net_device* %72, %struct.packet_mclist* %73, i32 -1)
  br label %75

75:                                               ; preds = %71, %58
  %76 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %77 = call i32 @kfree(%struct.packet_mclist* %76)
  br label %78

78:                                               ; preds = %75, %52
  br label %83

79:                                               ; preds = %40, %32, %24, %16
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %82 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %81, i32 0, i32 4
  store %struct.packet_mclist** %82, %struct.packet_mclist*** %6, align 8
  br label %12

83:                                               ; preds = %78, %12
  %84 = call i32 (...) @rtnl_unlock()
  ret i32 0
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @packet_dev_mc(%struct.net_device*, %struct.packet_mclist*, i32) #1

declare dso_local i32 @kfree(%struct.packet_mclist*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
