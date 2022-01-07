; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_parse_mss_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_parse_mss_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }

@TCPOPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, i32)* @tcp_parse_mss_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_parse_mss_option(%struct.tcphdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %13 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %12, i64 1
  %14 = bitcast %struct.tcphdr* %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %90, %33, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %36 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %93

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %22

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %93

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %93

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TCPOPT_MSS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @TCPOLEN_MSS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @get_unaligned_be16(i8* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %72, %69
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %64
  br label %81

81:                                               ; preds = %80, %60, %56
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 2
  %84 = load i8*, i8** %6, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %81
  br label %22

91:                                               ; preds = %22
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %54, %48, %39, %31
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @get_unaligned_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
