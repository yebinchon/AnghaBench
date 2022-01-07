; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_register_net_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_register_net_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_hook_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_register_net_hooks(%struct.net* %0, %struct.nf_hook_ops* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_hook_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_hook_ops* %1, %struct.nf_hook_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %16, i64 %18
  %20 = call i32 @nf_register_net_hook(%struct.net* %15, %struct.nf_hook_ops* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %30

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @nf_unregister_net_hooks(%struct.net* %34, %struct.nf_hook_ops* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nf_register_net_hook(%struct.net*, %struct.nf_hook_ops*) #1

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, %struct.nf_hook_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
