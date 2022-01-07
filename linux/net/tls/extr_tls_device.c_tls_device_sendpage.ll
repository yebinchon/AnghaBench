; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.page = type { i32 }
%struct.tls_context = type { i32 }
%struct.iov_iter = type { i32 }
%struct.kvec = type { i8*, i64 }

@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@TLS_RECORD_TYPE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_device_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tls_context*, align 8
  %12 = alloca %struct.iov_iter, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.kvec, align 8
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %16)
  store %struct.tls_context* %17, %struct.tls_context** %11, align 8
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i8* @kmap(%struct.page* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_MORE, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %5
  %29 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %30 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call i32 @lock_sock(%struct.sock* %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MSG_OOB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %59

41:                                               ; preds = %28
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @WRITE, align 4
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @iov_iter_kvec(%struct.iov_iter* %12, i32 %49, %struct.kvec* %14, i32 1, i64 %50)
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TLS_RECORD_TYPE_DATA, align 4
  %56 = call i32 @tls_push_data(%struct.sock* %52, %struct.iov_iter* %12, i64 %53, i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = call i32 @kunmap(%struct.page* %57)
  br label %59

59:                                               ; preds = %41, %38
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = call i32 @release_sock(%struct.sock* %60)
  %62 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %63 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %15, align 4
  ret i32 %65
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @tls_push_data(%struct.sock*, %struct.iov_iter*, i64, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
