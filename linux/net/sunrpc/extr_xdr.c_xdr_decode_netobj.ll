; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_decode_netobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_decode_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i32* }

@XDR_MAX_NETOBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xdr_decode_netobj(i32* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %4, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @be32_to_cpu(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @XDR_MAX_NETOBJ, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @XDR_QUADLEN(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
