; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_info = type { i64 }
%struct.fib_nh_common = type { i64 }

@TCP_CA_NAME_MAX = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fib_info*)* @fib_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fib_nlmsg_size(%struct.fib_info* %0) #0 {
  %2 = alloca %struct.fib_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_nh_common*, align 8
  store %struct.fib_info* %0, %struct.fib_info** %2, align 8
  %9 = call i32 @NLMSG_ALIGN(i32 4)
  %10 = call i32 @nla_total_size(i32 4)
  %11 = add nsw i32 %9, %10
  %12 = call i32 @nla_total_size(i32 4)
  %13 = add nsw i32 %11, %12
  %14 = call i32 @nla_total_size(i32 4)
  %15 = add nsw i32 %13, %14
  %16 = call i32 @nla_total_size(i32 4)
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @TCP_CA_NAME_MAX, align 4
  %19 = call i32 @nla_total_size(i32 %18)
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %23 = call i32 @fib_info_num_path(%struct.fib_info* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @RTAX_MAX, align 4
  %25 = call i32 @nla_total_size(i32 4)
  %26 = mul i32 %24, %25
  %27 = call i32 @nla_total_size(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %32 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = call i32 @nla_total_size(i32 4)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %35, %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  %44 = call i32 @nla_total_size(i32 4)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  %46 = call i32 @nla_total_size(i32 4)
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %76, %43
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %54 = call i32 @fib_info_num_path(%struct.fib_info* %53)
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info* %57, i32 %58)
  store %struct.fib_nh_common* %59, %struct.fib_nh_common** %8, align 8
  %60 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %61 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %66 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @lwtunnel_get_encap_size(i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %5, align 8
  %71 = call i32 @nla_total_size(i32 2)
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %64, %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %6, align 8
  %83 = mul i64 %81, %82
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @nla_total_size(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %79, %40
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @fib_info_num_path(%struct.fib_info*) #1

declare dso_local %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info*, i32) #1

declare dso_local i64 @lwtunnel_get_encap_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
