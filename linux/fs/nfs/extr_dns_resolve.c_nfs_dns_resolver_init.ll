; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_resolver_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_resolver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfs4_dns_resolver_ops = common dso_local global i32 0, align 4
@nfs_dns_resolver_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_dns_resolver_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @register_pernet_subsys(i32* @nfs4_dns_resolver_ops)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %15

7:                                                ; preds = %0
  %8 = call i32 @rpc_pipefs_notifier_register(i32* @nfs_dns_resolver_block)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %17

13:                                               ; preds = %11
  %14 = call i32 @unregister_pernet_subsys(i32* @nfs4_dns_resolver_ops)
  br label %15

15:                                               ; preds = %13, %6
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @register_pernet_subsys(i32*) #1

declare dso_local i32 @rpc_pipefs_notifier_register(i32*) #1

declare dso_local i32 @unregister_pernet_subsys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
