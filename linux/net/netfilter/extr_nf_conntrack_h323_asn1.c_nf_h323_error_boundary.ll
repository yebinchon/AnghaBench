; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_nf_h323_error_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_nf_h323_error_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstr = type { i64, i64, i64 }

@BITS_PER_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstr*, i64, i64)* @nf_h323_error_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_h323_error_boundary(%struct.bitstr* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitstr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bitstr* %0, %struct.bitstr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.bitstr*, %struct.bitstr** %5, align 8
  %9 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @BITS_PER_BYTE, align 8
  %15 = udiv i64 %13, %14
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BITS_PER_BYTE, align 8
  %20 = urem i64 %18, %19
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.bitstr*, %struct.bitstr** %5, align 8
  %27 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.bitstr*, %struct.bitstr** %5, align 8
  %32 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
