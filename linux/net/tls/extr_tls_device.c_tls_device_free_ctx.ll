; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_free_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TLS_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_context*)* @tls_device_free_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_device_free_ctx(%struct.tls_context* %0) #0 {
  %2 = alloca %struct.tls_context*, align 8
  store %struct.tls_context* %0, %struct.tls_context** %2, align 8
  %3 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %4 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TLS_HW, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %10 = call i32 @tls_offload_ctx_tx(%struct.tls_context* %9)
  %11 = call i32 @kfree(i32 %10)
  %12 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %13 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %18 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %24 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TLS_HW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %30 = call i32 @tls_offload_ctx_rx(%struct.tls_context* %29)
  %31 = call i32 @kfree(i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %34 = call i32 @tls_ctx_free(i32* null, %struct.tls_context* %33)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @tls_offload_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @tls_offload_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @tls_ctx_free(i32*, %struct.tls_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
