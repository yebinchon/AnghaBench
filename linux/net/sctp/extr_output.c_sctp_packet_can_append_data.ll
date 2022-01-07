; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_can_append_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_can_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i64, i64, i32, %struct.sctp_association* }
%struct.sctp_association = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.sctp_outq }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sctp_outq = type { i64, i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@SCTP_XMIT_RWND_FULL = common dso_local global i32 0, align 4
@SCTP_NEED_FRTX = common dso_local global i64 0, align 8
@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_XMIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*)* @sctp_packet_can_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_can_append_data(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_packet*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_outq*, align 8
  store %struct.sctp_packet* %0, %struct.sctp_packet** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  %13 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %13, i32 0, i32 1
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  store %struct.sctp_transport* %15, %struct.sctp_transport** %10, align 8
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 3
  %18 = load %struct.sctp_association*, %struct.sctp_association** %17, align 8
  store %struct.sctp_association* %18, %struct.sctp_association** %11, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 3
  store %struct.sctp_outq* %20, %struct.sctp_outq** %12, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.sctp_outq*, %struct.sctp_outq** %12, align 8
  %26 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %32 = call i64 @sctp_data_size(%struct.sctp_chunk* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @SCTP_XMIT_RWND_FULL, align 4
  store i32 %40, i32* %3, align 4
  br label %125

41:                                               ; preds = %36, %2
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCTP_NEED_FRTX, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %50 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SCTP_XMIT_RWND_FULL, align 4
  store i32 %54, i32* %3, align 4
  br label %125

55:                                               ; preds = %47, %41
  %56 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_12__* @sctp_sk(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64, %55
  %68 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %69 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %67, %64
  %75 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %76 = call i32 @sctp_packet_empty(%struct.sctp_packet* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %125

80:                                               ; preds = %74
  %81 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %82 = load i32, i32* @ESTABLISHED, align 4
  %83 = call i32 @sctp_state(%struct.sctp_association* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %125

87:                                               ; preds = %80
  %88 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %89 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sctp_outq*, %struct.sctp_outq** %12, align 8
  %94 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  %97 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %98 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %101 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %105 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = call i32 @sctp_datachk_len(i32* %107)
  %109 = sub nsw i32 %103, %108
  %110 = sub nsw i32 %109, 4
  %111 = icmp sgt i32 %96, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %87
  %113 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %125

114:                                              ; preds = %87
  %115 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %116 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @SCTP_XMIT_DELAY, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %121, %112, %85, %78, %72, %53, %39
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @sctp_data_size(%struct.sctp_chunk*) #1

declare dso_local %struct.TYPE_12__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_packet_empty(%struct.sctp_packet*) #1

declare dso_local i32 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_datachk_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
