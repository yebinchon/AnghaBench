; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_pagedata.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_pagedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.xdr_buf = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, %struct.xdr_buf*, i64)* @xs_send_pagedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_send_pagedata(%struct.socket* %0, %struct.msghdr* %1, %struct.xdr_buf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @xdr_alloc_bvec(%struct.xdr_buf* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  %21 = load i32, i32* @WRITE, align 4
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %26 = call i32 @xdr_buf_pagecount(%struct.xdr_buf* %25)
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %31 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @iov_iter_bvec(i32* %20, i32 %21, i32 %24, i32 %26, i64 %33)
  %35 = load %struct.socket*, %struct.socket** %6, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %39 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = call i32 @xs_sendmsg(%struct.socket* %35, %struct.msghdr* %36, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %18, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @xdr_alloc_bvec(%struct.xdr_buf*, i32) #1

declare dso_local i32 @iov_iter_bvec(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @xdr_buf_pagecount(%struct.xdr_buf*) #1

declare dso_local i32 @xs_sendmsg(%struct.socket*, %struct.msghdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
