; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_asconf_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_asconf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.net = type { i32 }
%struct.sctp_chunkhdr = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.sctp_addip_chunk = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)* }
%union.sctp_addr_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.net*, %struct.sctp_chunkhdr*, %union.sctp_addr*, i32, %struct.sctp_transport**)* @__sctp_rcv_asconf_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_asconf_lookup(%struct.net* %0, %struct.sctp_chunkhdr* %1, %union.sctp_addr* %2, i32 %3, %struct.sctp_transport** %4) #0 {
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sctp_chunkhdr*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_transport**, align 8
  %12 = alloca %struct.sctp_addip_chunk*, align 8
  %13 = alloca %struct.sctp_af*, align 8
  %14 = alloca %union.sctp_addr_param*, align 8
  %15 = alloca %union.sctp_addr, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sctp_chunkhdr* %1, %struct.sctp_chunkhdr** %8, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sctp_transport** %4, %struct.sctp_transport*** %11, align 8
  %16 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %17 = bitcast %struct.sctp_chunkhdr* %16 to %struct.sctp_addip_chunk*
  store %struct.sctp_addip_chunk* %17, %struct.sctp_addip_chunk** %12, align 8
  %18 = load %struct.sctp_addip_chunk*, %struct.sctp_addip_chunk** %12, align 8
  %19 = getelementptr inbounds %struct.sctp_addip_chunk, %struct.sctp_addip_chunk* %18, i64 1
  %20 = bitcast %struct.sctp_addip_chunk* %19 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %20, %union.sctp_addr_param** %14, align 8
  %21 = load %union.sctp_addr_param*, %union.sctp_addr_param** %14, align 8
  %22 = bitcast %union.sctp_addr_param* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @param_type2af(i32 %24)
  %26 = call %struct.sctp_af* @sctp_get_af_specific(i32 %25)
  store %struct.sctp_af* %26, %struct.sctp_af** %13, align 8
  %27 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %28 = icmp ne %struct.sctp_af* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store %struct.sctp_association* null, %struct.sctp_association** %6, align 8
  br label %45

34:                                               ; preds = %5
  %35 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %36 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %35, i32 0, i32 0
  %37 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)** %36, align 8
  %38 = load %union.sctp_addr_param*, %union.sctp_addr_param** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 %37(%union.sctp_addr* %15, %union.sctp_addr_param* %38, i32 %39, i32 0)
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %43 = load %struct.sctp_transport**, %struct.sctp_transport*** %11, align 8
  %44 = call %struct.sctp_association* @__sctp_lookup_association(%struct.net* %41, %union.sctp_addr* %42, %union.sctp_addr* %15, %struct.sctp_transport** %43)
  store %struct.sctp_association* %44, %struct.sctp_association** %6, align 8
  br label %45

45:                                               ; preds = %34, %33
  %46 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  ret %struct.sctp_association* %46
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @param_type2af(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_association* @__sctp_lookup_association(%struct.net*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
