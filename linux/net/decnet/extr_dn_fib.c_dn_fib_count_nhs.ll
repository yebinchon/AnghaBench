; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_count_nhs.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_count_nhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.rtnexthop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*)* @dn_fib_count_nhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_count_nhs(%struct.nlattr* %0) #0 {
  %2 = alloca %struct.nlattr*, align 8
  %3 = alloca %struct.rtnexthop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %2, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  %7 = call %struct.rtnexthop* @nla_data(%struct.nlattr* %6)
  store %struct.rtnexthop* %7, %struct.rtnexthop** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  %9 = call i32 @nla_len(%struct.nlattr* %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.rtnexthop*, %struct.rtnexthop** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @rtnh_ok(%struct.rtnexthop* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load %struct.rtnexthop*, %struct.rtnexthop** %3, align 8
  %19 = call %struct.rtnexthop* @rtnh_next(%struct.rtnexthop* %18, i32* %5)
  store %struct.rtnexthop* %19, %struct.rtnexthop** %3, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 0, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local %struct.rtnexthop* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @rtnh_ok(%struct.rtnexthop*, i32) #1

declare dso_local %struct.rtnexthop* @rtnh_next(%struct.rtnexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
