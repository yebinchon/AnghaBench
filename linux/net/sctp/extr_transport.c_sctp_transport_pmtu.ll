; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i64, %struct.TYPE_4__*, %struct.sctp_association*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_association = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.sctp_transport*, i32*, i32*, %struct.sock*)* }
%struct.sock = type { i32 }

@SPP_PMTUD_DISABLE = common dso_local global i32 0, align 4
@SCTP_DEFAULT_MAXSEGMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_pmtu(%struct.sctp_transport* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %10, %2
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %19 = call i32 @sctp_transport_dst_release(%struct.sctp_transport* %18)
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %20, i32 0, i32 6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.sctp_transport*, i32*, i32*, %struct.sock*)*, i32 (%struct.sctp_transport*, i32*, i32*, %struct.sock*)** %23, align 8
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %26, i32 0, i32 5
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 %24(%struct.sctp_transport* %25, i32* %27, i32* %29, %struct.sock* %30)
  br label %32

32:                                               ; preds = %17, %10
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SPP_PMTUD_DISABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %41 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %40, i32 0, i32 3
  %42 = load %struct.sctp_association*, %struct.sctp_association** %41, align 8
  store %struct.sctp_association* %42, %struct.sctp_association** %5, align 8
  %43 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %44 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %39
  %48 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %49 = icmp ne %struct.sctp_association* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %60 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %50, %47, %39
  %62 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %63 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %84

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %32
  %69 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %70 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %75 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i64 @sctp_dst_mtu(%struct.TYPE_4__* %76)
  %78 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %79 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %84

80:                                               ; preds = %68
  %81 = load i64, i64* @SCTP_DEFAULT_MAXSEGMENT, align 8
  %82 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %83 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %66, %80, %73
  ret void
}

declare dso_local i32 @sctp_transport_dst_release(%struct.sctp_transport*) #1

declare dso_local i64 @sctp_dst_mtu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
