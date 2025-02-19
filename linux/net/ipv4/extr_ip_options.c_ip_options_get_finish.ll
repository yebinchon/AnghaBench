; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_get_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_get_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@IPOPT_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ip_options_rcu**, %struct.ip_options_rcu*, i32)* @ip_options_get_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_options_get_finish(%struct.net* %0, %struct.ip_options_rcu** %1, %struct.ip_options_rcu* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_options_rcu**, align 8
  %8 = alloca %struct.ip_options_rcu*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ip_options_rcu** %1, %struct.ip_options_rcu*** %7, align 8
  store %struct.ip_options_rcu* %2, %struct.ip_options_rcu** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %14, %4
  %11 = load i32, i32* %9, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* @IPOPT_END, align 4
  %16 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %8, align 8
  %17 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %15, i32* %23, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %8, align 8
  %27 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.net*, %struct.net** %6, align 8
  %33 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %8, align 8
  %34 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %33, i32 0, i32 0
  %35 = call i64 @ip_options_compile(%struct.net* %32, %struct.TYPE_2__* %34, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %8, align 8
  %39 = call i32 @kfree(%struct.ip_options_rcu* %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %31, %24
  %43 = load %struct.ip_options_rcu**, %struct.ip_options_rcu*** %7, align 8
  %44 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %43, align 8
  %45 = call i32 @kfree(%struct.ip_options_rcu* %44)
  %46 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %8, align 8
  %47 = load %struct.ip_options_rcu**, %struct.ip_options_rcu*** %7, align 8
  store %struct.ip_options_rcu* %46, %struct.ip_options_rcu** %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @ip_options_compile(%struct.net*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(%struct.ip_options_rcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
