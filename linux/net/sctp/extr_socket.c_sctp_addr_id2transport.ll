; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_addr_id2transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_addr_id2transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32 }
%struct.sock = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_af = type { i32 }
%union.sctp_addr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_4__*, %union.sctp_addr*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.sock*, %struct.sockaddr_storage*, i32)* @sctp_addr_id2transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_addr_id2transport(%struct.sock* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_af*, align 8
  %11 = alloca %union.sctp_addr*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sctp_association* null, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %9, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sctp_af* @sctp_get_af_specific(i32 %15)
  store %struct.sctp_af* %16, %struct.sctp_af** %10, align 8
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %18 = bitcast %struct.sockaddr_storage* %17 to %union.sctp_addr*
  store %union.sctp_addr* %18, %union.sctp_addr** %11, align 8
  %19 = load %struct.sctp_af*, %struct.sctp_af** %10, align 8
  %20 = icmp ne %struct.sctp_af* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = load %union.sctp_addr*, %union.sctp_addr** %11, align 8
  %24 = load %struct.sctp_af*, %struct.sctp_af** %10, align 8
  %25 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @sctp_verify_addr(%struct.sock* %22, %union.sctp_addr* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %3
  store %struct.sctp_transport* null, %struct.sctp_transport** %4, align 8
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %union.sctp_addr*, %union.sctp_addr** %11, align 8
  %36 = call %struct.sctp_association* @sctp_endpoint_lookup_assoc(i32 %34, %union.sctp_addr* %35, %struct.sctp_transport** %12)
  store %struct.sctp_association* %36, %struct.sctp_association** %8, align 8
  %37 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %38 = icmp ne %struct.sctp_association* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store %struct.sctp_transport* null, %struct.sctp_transport** %4, align 8
  br label %64

40:                                               ; preds = %30
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.sctp_association* @sctp_id2assoc(%struct.sock* %41, i32 %42)
  store %struct.sctp_association* %43, %struct.sctp_association** %9, align 8
  %44 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %45 = icmp ne %struct.sctp_association* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = icmp ne %struct.sctp_association* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store %struct.sctp_transport* null, %struct.sctp_transport** %4, align 8
  br label %64

51:                                               ; preds = %46, %40
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_5__* @sctp_get_pf_specific(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, %union.sctp_addr*)*, i32 (%struct.TYPE_4__*, %union.sctp_addr*)** %56, align 8
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %58)
  %60 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %61 = bitcast %struct.sockaddr_storage* %60 to %union.sctp_addr*
  %62 = call i32 %57(%struct.TYPE_4__* %59, %union.sctp_addr* %61)
  %63 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  store %struct.sctp_transport* %63, %struct.sctp_transport** %4, align 8
  br label %64

64:                                               ; preds = %51, %50, %39, %29
  %65 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  ret %struct.sctp_transport* %65
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @sctp_verify_addr(%struct.sock*, %union.sctp_addr*, i32) #1

declare dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(i32, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.sctp_association* @sctp_id2assoc(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @sctp_get_pf_specific(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
