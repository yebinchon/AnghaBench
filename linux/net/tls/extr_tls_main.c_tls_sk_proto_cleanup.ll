; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_sk_proto_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_sk_proto_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TLS_SW = common dso_local global i64 0, align 8
@TLS_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tls_context*, i64)* @tls_sk_proto_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_sk_proto_cleanup(%struct.sock* %0, %struct.tls_context* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @wait_on_pending_writer(%struct.sock* %13, i64* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @tls_handle_open_record(%struct.sock* %17, i32 0)
  br label %19

19:                                               ; preds = %16, %12, %3
  %20 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %21 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TLS_SW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %27 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  %31 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %32 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @tls_sw_release_resources_tx(%struct.sock* %36)
  br label %48

38:                                               ; preds = %19
  %39 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %40 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TLS_HW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @tls_device_free_resources_tx(%struct.sock* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %50 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TLS_SW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = call i32 @tls_sw_release_resources_rx(%struct.sock* %55)
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %59 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TLS_HW, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @tls_device_offload_cleanup_rx(%struct.sock* %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %54
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_on_pending_writer(%struct.sock*, i64*) #1

declare dso_local i32 @tls_handle_open_record(%struct.sock*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @tls_sw_release_resources_tx(%struct.sock*) #1

declare dso_local i32 @tls_device_free_resources_tx(%struct.sock*) #1

declare dso_local i32 @tls_sw_release_resources_rx(%struct.sock*) #1

declare dso_local i32 @tls_device_offload_cleanup_rx(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
