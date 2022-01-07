; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tls_context = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_SENDPAGE_DECRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_device_write_space(%struct.sock* %0, %struct.tls_context* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tls_context* %1, %struct.tls_context** %4, align 8
  %6 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %7 = call i64 @tls_is_partially_sent_record(%struct.tls_context* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %22 = load i32, i32* @MSG_DONTWAIT, align 4
  %23 = load i32, i32* @MSG_NOSIGNAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MSG_SENDPAGE_DECRYPTED, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @tls_push_partial_record(%struct.sock* %20, %struct.tls_context* %21, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @tls_is_partially_sent_record(%struct.tls_context*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tls_push_partial_record(%struct.sock*, %struct.tls_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
