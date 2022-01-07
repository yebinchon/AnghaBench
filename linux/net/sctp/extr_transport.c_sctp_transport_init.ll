; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sctp_transport = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@SPP_HB_DISABLE = common dso_local global i32 0, align 4
@SPP_PMTUD_ENABLE = common dso_local global i32 0, align 4
@SPP_SACKDELAY_ENABLE = common dso_local global i32 0, align 4
@sctp_generate_t3_rtx_event = common dso_local global i32 0, align 4
@sctp_generate_heartbeat_event = common dso_local global i32 0, align 4
@sctp_generate_reconf_event = common dso_local global i32 0, align 4
@sctp_generate_proto_unreach_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.net*, %struct.sctp_transport*, %union.sctp_addr*, i32)* @sctp_transport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_transport_init(%struct.net* %0, %struct.sctp_transport* %1, %union.sctp_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %6, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %10 = bitcast %union.sctp_addr* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @sctp_get_af_specific(i32 %12)
  %14 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %14, i32 0, i32 17
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %15, align 8
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 18
  %18 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32* %17, %union.sctp_addr* %18, i32 %23)
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %25, i32 0, i32 16
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 15
  store i64 0, i64* %29, align 8
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msecs_to_jiffies(i32 %33)
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %38 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %37, i32 0, i32 13
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %41 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @SPP_HB_DISABLE, align 4
  %43 = load i32, i32* @SPP_PMTUD_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SPP_SACKDELAY_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %48 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.net*, %struct.net** %5, align 8
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %54 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load %struct.net*, %struct.net** %5, align 8
  %56 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %60 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %62 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %61, i32 0, i32 9
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %65 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %64, i32 0, i32 8
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %68 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %67, i32 0, i32 7
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %71 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %70, i32 0, i32 6
  %72 = load i32, i32* @sctp_generate_t3_rtx_event, align 4
  %73 = call i32 @timer_setup(i32* %71, i32 %72, i32 0)
  %74 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %75 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %74, i32 0, i32 5
  %76 = load i32, i32* @sctp_generate_heartbeat_event, align 4
  %77 = call i32 @timer_setup(i32* %75, i32 %76, i32 0)
  %78 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %79 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %78, i32 0, i32 4
  %80 = load i32, i32* @sctp_generate_reconf_event, align 4
  %81 = call i32 @timer_setup(i32* %79, i32 %80, i32 0)
  %82 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %83 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %82, i32 0, i32 3
  %84 = load i32, i32* @sctp_generate_proto_unreach_event, align 4
  %85 = call i32 @timer_setup(i32* %83, i32 %84, i32 0)
  %86 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %87 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %86, i32 0, i32 2
  %88 = call i32 @get_random_bytes(i32* %87, i32 4)
  %89 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %90 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %89, i32 0, i32 1
  %91 = call i32 @refcount_set(i32* %90, i32 1)
  %92 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  ret %struct.sctp_transport* %92
}

declare dso_local %struct.TYPE_6__* @sctp_get_af_specific(i32) #1

declare dso_local i32 @memcpy(i32*, %union.sctp_addr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
