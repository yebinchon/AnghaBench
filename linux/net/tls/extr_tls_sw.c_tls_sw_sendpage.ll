; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.page = type { i32 }
%struct.tls_context = type { i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOPOLICY = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_sw_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tls_context*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %14)
  store %struct.tls_context* %15, %struct.tls_context** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @MSG_MORE, align 4
  %18 = load i32, i32* @MSG_DONTWAIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MSG_NOSIGNAL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MSG_SENDPAGE_NOPOLICY, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %16, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %5
  %33 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %34 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call i32 @lock_sock(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @tls_sw_do_sendpage(%struct.sock* %38, %struct.page* %39, i32 %40, i64 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = call i32 @release_sock(%struct.sock* %44)
  %46 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %47 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %32, %29
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @tls_sw_do_sendpage(%struct.sock*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
