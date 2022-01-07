; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_iptable_nat.c_ipt_nat_register_lookups.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_iptable_nat.c_ipt_nat_register_lookups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@nf_nat_ipv4_ops = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ipt_nat_register_lookups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_nat_register_lookups(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @nf_nat_ipv4_ops, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %6
  %12 = load %struct.net*, %struct.net** %3, align 8
  %13 = load i32*, i32** @nf_nat_ipv4_ops, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @nf_nat_ipv4_register_fn(%struct.net* %12, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = load i32*, i32** @nf_nat_ipv4_ops, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @nf_nat_ipv4_unregister_fn(%struct.net* %25, i32* %30)
  br label %21

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nf_nat_ipv4_register_fn(%struct.net*, i32*) #1

declare dso_local i32 @nf_nat_ipv4_unregister_fn(%struct.net*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
