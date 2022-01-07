; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_zero_out_mutable_opts.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_zero_out_mutable_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6_opt_hdr*)* @zero_out_mutable_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_out_mutable_opts(%struct.ipv6_opt_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipv6_opt_hdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipv6_opt_hdr* %0, %struct.ipv6_opt_hdr** %3, align 8
  %8 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %3, align 8
  %9 = bitcast %struct.ipv6_opt_hdr* %8 to i32*
  store i32* %9, i32** %4, align 8
  %10 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %3, align 8
  %11 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
  ]

25:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %64

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %76

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %76

42:                                               ; preds = %30
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32* %55, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %50, %42
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %77

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %41, %29
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %74
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
