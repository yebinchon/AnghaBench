; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_flush_ctx = type { i32, i32*, %struct.TYPE_2__*, i32, i32*, %struct.sctp_outq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_outq*, i32, i32)* @sctp_outq_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_outq_flush(%struct.sctp_outq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_outq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_flush_ctx, align 8
  store %struct.sctp_outq* %0, %struct.sctp_outq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 2
  %12 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  %15 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 3
  %16 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @LIST_HEAD_INIT(i32 %17)
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.sctp_flush_ctx, %struct.sctp_flush_ctx* %7, i32 0, i32 5
  %21 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  store %struct.sctp_outq* %21, %struct.sctp_outq** %20, align 8
  %22 = call i32 @sctp_outq_flush_ctrl(%struct.sctp_flush_ctx* %7)
  %23 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sctp_outq_flush_data(%struct.sctp_flush_ctx* %7, i32 %31)
  br label %33

33:                                               ; preds = %30, %29
  %34 = call i32 @sctp_outq_flush_transports(%struct.sctp_flush_ctx* %7)
  ret void
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @sctp_outq_flush_ctrl(%struct.sctp_flush_ctx*) #1

declare dso_local i32 @sctp_outq_flush_data(%struct.sctp_flush_ctx*, i32) #1

declare dso_local i32 @sctp_outq_flush_transports(%struct.sctp_flush_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
