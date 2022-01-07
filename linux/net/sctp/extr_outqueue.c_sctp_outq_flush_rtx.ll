; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_flush_rtx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_flush_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_flush_ctx = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_15__* }
%struct.TYPE_10__ = type { i32 }

@SCTP_UNCONFIRMED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_flush_ctx*, i32)* @sctp_outq_flush_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_outq_flush_rtx(%struct.sctp_flush_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_flush_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_flush_ctx* %0, %struct.sctp_flush_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %8, i32 0, i32 3
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCTP_UNCONFIRMED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

19:                                               ; preds = %2
  %20 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = icmp ne %struct.TYPE_15__* %22, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %19
  %31 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %37, i32 0, i32 2
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %38, align 8
  %39 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %39, i32 0, i32 2
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %43, i32 0, i32 1
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %44, align 8
  %45 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %30
  %52 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %52, i32 0, i32 2
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %56, i32 0, i32 5
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %51, %30
  %60 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %63, i32 0, i32 3
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sctp_packet_config(%struct.TYPE_16__* %62, i32 %69, i32 %75)
  br label %77

77:                                               ; preds = %59, %19
  %78 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %78, i32 0, i32 0
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @__sctp_outq_flush_rtx(%struct.TYPE_17__* %80, %struct.TYPE_16__* %83, i32 %84, i32* %7, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %77
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %94, i32 0, i32 3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %77
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = call i32 @sctp_transport_reset_t3_rtx(%struct.TYPE_15__* %107)
  %109 = load i32, i32* @jiffies, align 4
  %110 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %110, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  br label %114

114:                                              ; preds = %104, %101
  %115 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %116 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %131

122:                                              ; preds = %114
  %123 = load %struct.sctp_flush_ctx*, %struct.sctp_flush_ctx** %4, align 8
  %124 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = call i64 @list_empty(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %129, %121, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sctp_packet_config(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @__sctp_outq_flush_rtx(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32*, i32) #1

declare dso_local i32 @sctp_transport_reset_t3_rtx(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
