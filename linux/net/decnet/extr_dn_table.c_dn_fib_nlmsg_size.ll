; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_info = type { i32 }

@TCP_CA_NAME_MAX = common dso_local global i64 0, align 8
@RTAX_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dn_fib_info*)* @dn_fib_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dn_fib_nlmsg_size(%struct.dn_fib_info* %0) #0 {
  %2 = alloca %struct.dn_fib_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.dn_fib_info* %0, %struct.dn_fib_info** %2, align 8
  %5 = call i64 @NLMSG_ALIGN(i32 4)
  %6 = call i64 @nla_total_size(i64 4)
  %7 = add i64 %5, %6
  %8 = call i64 @nla_total_size(i64 2)
  %9 = add i64 %7, %8
  %10 = call i64 @nla_total_size(i64 4)
  %11 = add i64 %9, %10
  %12 = load i64, i64* @TCP_CA_NAME_MAX, align 8
  %13 = call i64 @nla_total_size(i64 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @RTAX_MAX, align 8
  %16 = call i64 @nla_total_size(i64 4)
  %17 = mul i64 %15, %16
  %18 = call i64 @nla_total_size(i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %22 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = call i64 @nla_total_size(i64 4)
  store i64 %26, i64* %4, align 8
  %27 = call i64 @nla_total_size(i64 4)
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %4, align 8
  %30 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %31 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = mul i64 %33, %34
  %36 = call i64 @nla_total_size(i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %25, %1
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
