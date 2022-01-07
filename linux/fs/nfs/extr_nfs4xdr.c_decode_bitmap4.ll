; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_bitmap4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_bitmap4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@EMSGSIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, i32*, i64)* @decode_bitmap4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_bitmap4(%struct.xdr_stream* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @xdr_stream_decode_uint32_array(%struct.xdr_stream* %9, i32* %10, i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp uge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %30

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @EMSGSIZE, align 8
  %23 = sub i64 0, %22
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, i64* @EIO, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %30

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %25, %18
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i64 @xdr_stream_decode_uint32_array(%struct.xdr_stream*, i32*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
