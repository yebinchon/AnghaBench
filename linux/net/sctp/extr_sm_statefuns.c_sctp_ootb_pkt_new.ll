; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_ootb_pkt_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_ootb_pkt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32 }
%struct.net = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.sctp_association = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.sctp_transport = type { %struct.sctp_packet }
%struct.sctp_initack_chunk = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.sctp_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_packet* (%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*)* @sctp_ootb_pkt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_packet*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  %9 = alloca %struct.sctp_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_initack_chunk*, align 8
  %14 = alloca %struct.sctp_init_chunk*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %7, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohs(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %28 = icmp ne %struct.sctp_association* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %45 [
    i32 128, label %35
  ]

35:                                               ; preds = %29
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = bitcast %struct.TYPE_11__* %38 to %struct.sctp_initack_chunk*
  store %struct.sctp_initack_chunk* %39, %struct.sctp_initack_chunk** %13, align 8
  %40 = load %struct.sctp_initack_chunk*, %struct.sctp_initack_chunk** %13, align 8
  %41 = getelementptr inbounds %struct.sctp_initack_chunk, %struct.sctp_initack_chunk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  store i32 %44, i32* %12, align 4
  br label %51

45:                                               ; preds = %29
  %46 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %45, %35
  br label %76

52:                                               ; preds = %3
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %68 [
    i32 129, label %58
  ]

58:                                               ; preds = %52
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = bitcast %struct.TYPE_11__* %61 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %62, %struct.sctp_init_chunk** %14, align 8
  %63 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %64 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohl(i32 %66)
  store i32 %67, i32* %12, align 4
  br label %75

68:                                               ; preds = %52
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %70 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %68, %58
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.net*, %struct.net** %5, align 8
  %78 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %79 = call i32 @sctp_source(%struct.sctp_chunk* %78)
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.sctp_transport* @sctp_transport_new(%struct.net* %77, i32 %79, i32 %80)
  store %struct.sctp_transport* %81, %struct.sctp_transport** %8, align 8
  %82 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %83 = icmp ne %struct.sctp_transport* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %107

85:                                               ; preds = %76
  %86 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %87, i32 0, i32 0
  %89 = bitcast i32* %88 to %union.sctp_addr*
  %90 = load %struct.net*, %struct.net** %5, align 8
  %91 = getelementptr inbounds %struct.net, %struct.net* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sctp_sk(i32 %93)
  %95 = call i32 @sctp_transport_route(%struct.sctp_transport* %86, %union.sctp_addr* %89, i32 %94)
  %96 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %97 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %96, i32 0, i32 0
  store %struct.sctp_packet* %97, %struct.sctp_packet** %9, align 8
  %98 = load %struct.sctp_packet*, %struct.sctp_packet** %9, align 8
  %99 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @sctp_packet_init(%struct.sctp_packet* %98, %struct.sctp_transport* %99, i32 %100, i32 %101)
  %103 = load %struct.sctp_packet*, %struct.sctp_packet** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @sctp_packet_config(%struct.sctp_packet* %103, i32 %104, i32 0)
  %106 = load %struct.sctp_packet*, %struct.sctp_packet** %9, align 8
  store %struct.sctp_packet* %106, %struct.sctp_packet** %4, align 8
  br label %108

107:                                              ; preds = %84
  store %struct.sctp_packet* null, %struct.sctp_packet** %4, align 8
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  ret %struct.sctp_packet* %109
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sctp_transport* @sctp_transport_new(%struct.net*, i32, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_transport_route(%struct.sctp_transport*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_sk(i32) #1

declare dso_local i32 @sctp_packet_init(%struct.sctp_packet*, %struct.sctp_transport*, i32, i32) #1

declare dso_local i32 @sctp_packet_config(%struct.sctp_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
