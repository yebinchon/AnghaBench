; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_hook_entries_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_hook_entries_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_hook_entries = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_hook_entries* (%struct.net*, i32, i32)* @nf_hook_entries_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_hook_entries* @nf_hook_entries_head(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nf_hook_entries*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nf_hook_entries* @rcu_dereference(i32 %17)
  store %struct.nf_hook_entries* %18, %struct.nf_hook_entries** %4, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nf_hook_entries* @rcu_dereference(i32 %27)
  store %struct.nf_hook_entries* %28, %struct.nf_hook_entries** %4, align 8
  br label %31

29:                                               ; preds = %3
  %30 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.nf_hook_entries* null, %struct.nf_hook_entries** %4, align 8
  br label %31

31:                                               ; preds = %29, %19, %9
  %32 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  ret %struct.nf_hook_entries* %32
}

declare dso_local %struct.nf_hook_entries* @rcu_dereference(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
