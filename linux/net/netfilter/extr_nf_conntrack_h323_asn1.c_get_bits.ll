; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_get_bits.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_get_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstr = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstr*, i32)* @get_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bits(%struct.bitstr* %0, i32 %1) #0 {
  %3 = alloca %struct.bitstr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bitstr* %0, %struct.bitstr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %8 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %12 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 255, %13
  %15 = and i32 %10, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %18 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 8, %24
  %26 = load i32, i32* %5, align 4
  %27 = lshr i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %30 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %60

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %36 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %36, align 8
  %39 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %40 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  br label %59

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 8
  store i32 %43, i32* %5, align 4
  %44 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %45 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %45, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 16, %51
  %53 = load i32, i32* %5, align 4
  %54 = lshr i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub i32 %55, 8
  %57 = load %struct.bitstr*, %struct.bitstr** %3, align 8
  %58 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %41, %34
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
