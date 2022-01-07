; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_register_net_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_register_net_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_hook_ops = type { i64 }

@NFPROTO_INET = common dso_local global i64 0, align 8
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_register_net_hook(%struct.net* %0, %struct.nf_hook_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_hook_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_hook_ops* %1, %struct.nf_hook_ops** %5, align 8
  %7 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %8 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NFPROTO_INET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i64, i64* @NFPROTO_IPV4, align 8
  %15 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %16 = call i32 @__nf_register_net_hook(%struct.net* %13, i64 %14, %struct.nf_hook_ops* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %12
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = load i64, i64* @NFPROTO_IPV6, align 8
  %24 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %25 = call i32 @__nf_register_net_hook(%struct.net* %22, i64 %23, %struct.nf_hook_ops* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.net*, %struct.net** %4, align 8
  %30 = load i64, i64* @NFPROTO_IPV4, align 8
  %31 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %32 = call i32 @__nf_unregister_net_hook(%struct.net* %29, i64 %30, %struct.nf_hook_ops* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %21
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.net*, %struct.net** %4, align 8
  %37 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %38 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %41 = call i32 @__nf_register_net_hook(%struct.net* %36, i64 %39, %struct.nf_hook_ops* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %28, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__nf_register_net_hook(%struct.net*, i64, %struct.nf_hook_ops*) #1

declare dso_local i32 @__nf_unregister_net_hook(%struct.net*, i64, %struct.nf_hook_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
