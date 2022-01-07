; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i64, i32, %struct.sctp_af*, %struct.sctp_association* }
%struct.sctp_af = type { i32 (%struct.sctp_sock*, %struct.sctp_transport*, i32*)*, i32 (%struct.sctp_transport*, %union.sctp_addr*, i32*, i32)* }
%struct.sctp_association = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sctp_transport*, i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_route(%struct.sctp_transport* %0, %union.sctp_addr* %1, %struct.sctp_sock* %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %struct.sctp_sock* %2, %struct.sctp_sock** %6, align 8
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %9, i32 0, i32 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  store %struct.sctp_association* %11, %struct.sctp_association** %7, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 3
  %14 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  store %struct.sctp_af* %14, %struct.sctp_af** %8, align 8
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %16 = call i32 @sctp_transport_dst_release(%struct.sctp_transport* %15)
  %17 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %18 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %17, i32 0, i32 1
  %19 = load i32 (%struct.sctp_transport*, %union.sctp_addr*, i32*, i32)*, i32 (%struct.sctp_transport*, %union.sctp_addr*, i32*, i32)** %18, align 8
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %21 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %22, i32 0, i32 2
  %24 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %25 = call i32 @sctp_opt2sk(%struct.sctp_sock* %24)
  %26 = call i32 %19(%struct.sctp_transport* %20, %union.sctp_addr* %21, i32* %23, i32 %25)
  %27 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %28 = icmp ne %union.sctp_addr* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %30, i32 0, i32 0
  %32 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %33 = call i32 @memcpy(i32* %31, %union.sctp_addr* %32, i32 4)
  br label %43

34:                                               ; preds = %3
  %35 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %36 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %35, i32 0, i32 0
  %37 = load i32 (%struct.sctp_sock*, %struct.sctp_transport*, i32*)*, i32 (%struct.sctp_sock*, %struct.sctp_transport*, i32*)** %36, align 8
  %38 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %39 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %40, i32 0, i32 2
  %42 = call i32 %37(%struct.sctp_sock* %38, %struct.sctp_transport* %39, i32* %41)
  br label %43

43:                                               ; preds = %34, %29
  %44 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %45 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %46 = call i32 @sctp_opt2sk(%struct.sctp_sock* %45)
  %47 = call i32 @sctp_transport_pmtu(%struct.sctp_transport* %44, i32 %46)
  %48 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %43
  %53 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %54 = icmp ne %struct.sctp_association* %53, null
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %63 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.sctp_transport*, %struct.sctp_transport** %65, align 8
  %67 = icmp eq %struct.sctp_transport* %62, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61, %55
  %69 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %70 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (i32*, i32)*, i32 (i32*, i32)** %72, align 8
  %74 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %75 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %74, i32 0, i32 0
  %76 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %73(i32* %75, i32 %79)
  br label %81

81:                                               ; preds = %68, %61, %52, %43
  ret void
}

declare dso_local i32 @sctp_transport_dst_release(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @memcpy(i32*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_transport_pmtu(%struct.sctp_transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
