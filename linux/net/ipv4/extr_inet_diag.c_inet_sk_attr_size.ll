; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_sk_attr_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_sk_attr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_handler = type { i64 (%struct.sock*, i32)* }
%struct.sock = type { i32 }
%struct.inet_diag_req_v2 = type { i64 }

@inet_diag_table = common dso_local global %struct.inet_diag_handler** null, align 8
@SK_MEMINFO_VARS = common dso_local global i32 0, align 4
@TCP_CA_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, %struct.inet_diag_req_v2*, i32)* @inet_sk_attr_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inet_sk_attr_size(%struct.sock* %0, %struct.inet_diag_req_v2* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_diag_req_v2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_diag_handler*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.inet_diag_req_v2* %1, %struct.inet_diag_req_v2** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %10 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %5, align 8
  %11 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, i64 %12
  %14 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %13, align 8
  store %struct.inet_diag_handler* %14, %struct.inet_diag_handler** %7, align 8
  %15 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %7, align 8
  %16 = icmp ne %struct.inet_diag_handler* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %7, align 8
  %19 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %18, i32 0, i32 0
  %20 = load i64 (%struct.sock*, i32)*, i64 (%struct.sock*, i32)** %19, align 8
  %21 = icmp ne i64 (%struct.sock*, i32)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %7, align 8
  %24 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %23, i32 0, i32 0
  %25 = load i64 (%struct.sock*, i32)*, i64 (%struct.sock*, i32)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 %25(%struct.sock* %26, i32 %27)
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %22, %17, %3
  %30 = call i64 @nla_total_size(i32 4)
  %31 = call i64 @nla_total_size(i32 1)
  %32 = add i64 %30, %31
  %33 = call i64 @nla_total_size(i32 1)
  %34 = add i64 %32, %33
  %35 = call i64 @nla_total_size(i32 1)
  %36 = add i64 %34, %35
  %37 = call i64 @nla_total_size(i32 4)
  %38 = add i64 %36, %37
  %39 = call i64 @nla_total_size(i32 4)
  %40 = add i64 %38, %39
  %41 = call i64 @nla_total_size(i32 4)
  %42 = add i64 %40, %41
  %43 = call i64 @nla_total_size(i32 4)
  %44 = add i64 %42, %43
  %45 = load i32, i32* @SK_MEMINFO_VARS, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i64 @nla_total_size(i32 %48)
  %50 = add i64 %44, %49
  %51 = load i32, i32* @TCP_CA_NAME_MAX, align 4
  %52 = call i64 @nla_total_size(i32 %51)
  %53 = add i64 %50, %52
  %54 = call i64 @nla_total_size(i32 4)
  %55 = add i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %55, %56
  %58 = add i64 %57, 64
  ret i64 %58
}

declare dso_local i64 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
