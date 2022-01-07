; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_encode_netobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_encode_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xdr_encode_netobj(i64* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.xdr_netobj*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %4, align 8
  %6 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %7 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @XDR_QUADLEN(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64*, i64** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %15 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_be32(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %3, align 8
  store i64 %18, i64* %19, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %23 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %26 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i64* %21, i32 %24, i32 %27)
  %29 = load i64*, i64** %3, align 8
  %30 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %31 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @XDR_QUADLEN(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  ret i64* %35
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
