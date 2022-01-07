; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i32 }
%struct.tls_context = type { i32 }

@TLS_RECORD_TYPE_DATA = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_device_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  store i8 %10, i8* %7, align 1
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %11)
  store %struct.tls_context* %12, %struct.tls_context** %8, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %14 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %26 = call i32 @tls_proccess_cmsg(%struct.sock* %24, %struct.msghdr* %25, i8* %7)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %41

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8, i8* %7, align 1
  %40 = call i32 @tls_push_data(%struct.sock* %32, i32* %34, i64 %35, i32 %38, i8 zeroext %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %31, %29
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  %44 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %45 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tls_proccess_cmsg(%struct.sock*, %struct.msghdr*, i8*) #1

declare dso_local i32 @tls_push_data(%struct.sock*, i32*, i64, i32, i8 zeroext) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
