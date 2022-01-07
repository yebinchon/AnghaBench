; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_block_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_block_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i32, i32, i32 }
%struct.Qdisc = type { i32 }
%struct.tcf_block_ext_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_block*, %struct.Qdisc*, %struct.tcf_block_ext_info*, i32)* @__tcf_block_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcf_block_put(%struct.tcf_block* %0, %struct.Qdisc* %1, %struct.tcf_block_ext_info* %2, i32 %3) #0 {
  %5 = alloca %struct.tcf_block*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.tcf_block_ext_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %11 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %10, i32 0, i32 3
  %12 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %12, i32 0, i32 1
  %14 = call i64 @refcount_dec_and_mutex_lock(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %4
  %17 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %18 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %17, i32 0, i32 2
  %19 = call i32 @list_empty(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %21 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %24 = call i64 @tcf_block_shared(%struct.tcf_block* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %28 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %29 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tcf_block_remove(%struct.tcf_block* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %34 = icmp ne %struct.Qdisc* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %38 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %7, align 8
  %39 = call i32 @tcf_block_offload_unbind(%struct.tcf_block* %36, %struct.Qdisc* %37, %struct.tcf_block_ext_info* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %45 = call i32 @tcf_block_destroy(%struct.tcf_block* %44)
  br label %50

46:                                               ; preds = %40
  %47 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @tcf_block_flush_all_chains(%struct.tcf_block* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %60

51:                                               ; preds = %4
  %52 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %53 = icmp ne %struct.Qdisc* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %56 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %57 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %7, align 8
  %58 = call i32 @tcf_block_offload_unbind(%struct.tcf_block* %55, %struct.Qdisc* %56, %struct.tcf_block_ext_info* %57)
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %50
  ret void
}

declare dso_local i64 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tcf_block_shared(%struct.tcf_block*) #1

declare dso_local i32 @tcf_block_remove(%struct.tcf_block*, i32) #1

declare dso_local i32 @tcf_block_offload_unbind(%struct.tcf_block*, %struct.Qdisc*, %struct.tcf_block_ext_info*) #1

declare dso_local i32 @tcf_block_destroy(%struct.tcf_block*) #1

declare dso_local i32 @tcf_block_flush_all_chains(%struct.tcf_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
