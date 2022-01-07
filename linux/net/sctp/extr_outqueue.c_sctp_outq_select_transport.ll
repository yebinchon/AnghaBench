; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_select_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_select_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_flush_ctx = type { %struct.sctp_transport*, %struct.TYPE_8__*, i32*, i32 }
%struct.sctp_transport = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.sctp_transport* }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, i32, %struct.sctp_transport* }
%struct.TYPE_5__ = type { i32 }

@SCTP_CID_HEARTBEAT = common dso_local global i32 0, align 4
@SCTP_CID_HEARTBEAT_ACK = common dso_local global i32 0, align 4
@SCTP_CID_ASCONF_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_flush_ctx*, %struct.sctp_chunk*)* @sctp_outq_select_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_outq_select_transport(%struct.sctp_flush_ctx* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_flush_ctx*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_flush_ctx* %0, %struct.sctp_flush_ctx** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 2
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  store %struct.sctp_transport* %9, %struct.sctp_transport** %5, align 8
  %10 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %11 = icmp ne %struct.sctp_transport* %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %2
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %14 = call i32 @sctp_chunk_is_data(%struct.sctp_chunk* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %17, i32 0, i32 0
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %18, align 8
  %20 = icmp ne %struct.sctp_transport* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 1
  %24 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %24, i32 0, i32 0
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %25, align 8
  %27 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %26, i32 0, i32 3
  %28 = call i64 @sctp_cmp_addr_exact(i32* %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %31, i32 0, i32 0
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %32, align 8
  store %struct.sctp_transport* %33, %struct.sctp_transport** %5, align 8
  br label %41

34:                                               ; preds = %21, %16
  %35 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 1
  %40 = call %struct.sctp_transport* @sctp_assoc_lookup_paddr(%struct.TYPE_8__* %37, i32* %39)
  store %struct.sctp_transport* %40, %struct.sctp_transport** %5, align 8
  br label %41

41:                                               ; preds = %34, %30
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %44 = icmp ne %struct.sctp_transport* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.sctp_transport*, %struct.sctp_transport** %50, align 8
  store %struct.sctp_transport* %51, %struct.sctp_transport** %5, align 8
  br label %52

52:                                               ; preds = %45, %42
  br label %84

53:                                               ; preds = %2
  %54 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %82 [
    i32 130, label %57
    i32 128, label %57
    i32 129, label %57
  ]

57:                                               ; preds = %53, %53, %53
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %59 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SCTP_CID_HEARTBEAT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SCTP_CID_HEARTBEAT_ACK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SCTP_CID_ASCONF_ACK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.sctp_transport*, %struct.sctp_transport** %79, align 8
  store %struct.sctp_transport* %80, %struct.sctp_transport** %5, align 8
  br label %81

81:                                               ; preds = %74, %70, %66, %57
  br label %83

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %86 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %86, i32 0, i32 0
  %88 = load %struct.sctp_transport*, %struct.sctp_transport** %87, align 8
  %89 = icmp ne %struct.sctp_transport* %85, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %84
  %91 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %92 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %92, i32 0, i32 0
  store %struct.sctp_transport* %91, %struct.sctp_transport** %93, align 8
  %94 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %94, i32 0, i32 0
  %96 = load %struct.sctp_transport*, %struct.sctp_transport** %95, align 8
  %97 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %96, i32 0, i32 2
  %98 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  %100 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %100, i32 0, i32 0
  %102 = load %struct.sctp_transport*, %struct.sctp_transport** %101, align 8
  %103 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %102, i32 0, i32 1
  %104 = call i64 @list_empty(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %90
  %107 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %107, i32 0, i32 0
  %109 = load %struct.sctp_transport*, %struct.sctp_transport** %108, align 8
  %110 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %109, i32 0, i32 1
  %111 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %111, i32 0, i32 3
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %106, %90
  %115 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sctp_packet_config(i32* %117, i32 %124, i32 %130)
  %132 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %132, i32 0, i32 0
  %134 = load %struct.sctp_transport*, %struct.sctp_transport** %133, align 8
  %135 = call i32 @sctp_transport_burst_limited(%struct.sctp_transport* %134)
  br label %136

136:                                              ; preds = %114, %84
  ret void
}

declare dso_local i32 @sctp_chunk_is_data(%struct.sctp_chunk*) #1

declare dso_local i64 @sctp_cmp_addr_exact(i32*, i32*) #1

declare dso_local %struct.sctp_transport* @sctp_assoc_lookup_paddr(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sctp_packet_config(i32*, i32, i32) #1

declare dso_local i32 @sctp_transport_burst_limited(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
