; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_buf_pagecount.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_buf_pagecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_buf_pagecount(%struct.xdr_buf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xdr_buf*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  %4 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %5 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %11 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
