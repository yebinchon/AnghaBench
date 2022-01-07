; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_encode_array2.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_encode_array2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.xdr_array2_desc = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_encode_array2(%struct.xdr_buf* %0, i32 %1, %struct.xdr_array2_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_array2_desc*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xdr_array2_desc* %2, %struct.xdr_array2_desc** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %9, 4
  %11 = load %struct.xdr_array2_desc*, %struct.xdr_array2_desc** %7, align 8
  %12 = getelementptr inbounds %struct.xdr_array2_desc, %struct.xdr_array2_desc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xdr_array2_desc*, %struct.xdr_array2_desc** %7, align 8
  %15 = getelementptr inbounds %struct.xdr_array2_desc, %struct.xdr_array2_desc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 %13, %16
  %18 = add i64 %10, %17
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  %28 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %29 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %27, %32
  %34 = icmp ugt i64 %18, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.xdr_array2_desc*, %struct.xdr_array2_desc** %7, align 8
  %42 = call i32 @xdr_xcode_array2(%struct.xdr_buf* %39, i32 %40, %struct.xdr_array2_desc* %41, i32 1)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @xdr_xcode_array2(%struct.xdr_buf*, i32, %struct.xdr_array2_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
