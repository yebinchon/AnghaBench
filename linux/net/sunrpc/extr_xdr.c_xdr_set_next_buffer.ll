; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_set_next_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_set_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i64, i32, i64, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*)* @xdr_set_next_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_set_next_buffer(%struct.xdr_stream* %0) #0 {
  %2 = alloca %struct.xdr_stream*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %2, align 8
  %3 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %4 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %9 = call i32 @xdr_set_next_page(%struct.xdr_stream* %8)
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %12 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %15 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %10
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @xdr_set_page_base(%struct.xdr_stream* %21, i32 0, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %28 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %33 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 2
  %36 = call i32 @xdr_set_iov(%struct.xdr_stream* %26, i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %25, %20
  br label %38

38:                                               ; preds = %37, %10
  br label %39

39:                                               ; preds = %38, %7
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %41 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %44 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @xdr_set_next_page(%struct.xdr_stream*) #1

declare dso_local i64 @xdr_set_page_base(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @xdr_set_iov(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
