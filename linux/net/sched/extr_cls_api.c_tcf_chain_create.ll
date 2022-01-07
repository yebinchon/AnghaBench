; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32, %struct.tcf_block*, i32, i32 }
%struct.tcf_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.tcf_chain* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_chain* (%struct.tcf_block*, i32)* @tcf_chain_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_chain* @tcf_chain_create(%struct.tcf_block* %0, i32 %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.tcf_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_chain*, align 8
  store %struct.tcf_block* %0, %struct.tcf_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %8 = call i32 @ASSERT_BLOCK_LOCKED(%struct.tcf_block* %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tcf_chain* @kzalloc(i32 24, i32 %9)
  store %struct.tcf_chain* %10, %struct.tcf_chain** %6, align 8
  %11 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %12 = icmp ne %struct.tcf_chain* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.tcf_chain* null, %struct.tcf_chain** %3, align 8
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %16 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %15, i32 0, i32 4
  %17 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %18 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %21 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %20, i32 0, i32 3
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %24 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %25 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %24, i32 0, i32 2
  store %struct.tcf_block* %23, %struct.tcf_block** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %28 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %30 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %32 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %14
  %36 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %37 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %38 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.tcf_chain* %36, %struct.tcf_chain** %39, align 8
  br label %40

40:                                               ; preds = %35, %14
  %41 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  store %struct.tcf_chain* %41, %struct.tcf_chain** %3, align 8
  br label %42

42:                                               ; preds = %40, %13
  %43 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  ret %struct.tcf_chain* %43
}

declare dso_local i32 @ASSERT_BLOCK_LOCKED(%struct.tcf_block*) #1

declare dso_local %struct.tcf_chain* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
