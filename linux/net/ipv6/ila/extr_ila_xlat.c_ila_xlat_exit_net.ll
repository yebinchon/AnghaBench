; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_exit_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_exit_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ila_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ila_net_id = common dso_local global i32 0, align 4
@ila_free_cb = common dso_local global i32 0, align 4
@ila_nf_hook_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ila_xlat_exit_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ila_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @ila_net_id, align 4
  %6 = call %struct.ila_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.ila_net* %6, %struct.ila_net** %3, align 8
  %7 = load %struct.ila_net*, %struct.ila_net** %3, align 8
  %8 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* @ila_free_cb, align 4
  %11 = call i32 @rhashtable_free_and_destroy(i32* %9, i32 %10, i32* null)
  %12 = load %struct.ila_net*, %struct.ila_net** %3, align 8
  %13 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @free_bucket_spinlocks(i32 %15)
  %17 = load %struct.ila_net*, %struct.ila_net** %3, align 8
  %18 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.net*, %struct.net** %2, align 8
  %24 = load i32, i32* @ila_nf_hook_ops, align 4
  %25 = load i32, i32* @ila_nf_hook_ops, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @nf_unregister_net_hooks(%struct.net* %23, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rhashtable_free_and_destroy(i32*, i32, i32*) #1

declare dso_local i32 @free_bucket_spinlocks(i32) #1

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
