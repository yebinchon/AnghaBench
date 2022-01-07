; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_unregister_net_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_unregister_net_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_hook_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_unregister_net_hooks(%struct.net* %0, %struct.nf_hook_ops* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_hook_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_hook_ops* %1, %struct.nf_hook_ops** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %19, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %14, i64 %16
  %18 = call i32 @nf_unregister_net_hook(%struct.net* %13, %struct.nf_hook_ops* %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @nf_unregister_net_hook(%struct.net*, %struct.nf_hook_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
