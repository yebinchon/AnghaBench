; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.TYPE_6__, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, %struct.sctp_association* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.sctp_association = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__u32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_reset(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %4 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %4, i32 0, i32 13
  %6 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  store %struct.sctp_association* %6, %struct.sctp_association** %3, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 4, %9
  %11 = load i32, i32* @__u32, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 2, %14
  %16 = call i32 @max_t(i32 %11, i32 %15, i32 4380)
  %17 = call i32 @min(i32 %10, i32 %16)
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %19 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %21 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %20, i32 0, i32 11
  store i64 0, i64* %21, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %33 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %36 = call i32 @sctp_max_rto(%struct.sctp_association* %34, %struct.sctp_transport* %35)
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %38 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %40 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %42 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %44 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %46 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %48 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %50 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %52 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %54 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %57 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %60 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %63 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @sctp_max_rto(%struct.sctp_association*, %struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
