; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_detach.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32, %struct.tcf_block* }
%struct.tcf_block = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_chain*)* @tcf_chain_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_chain_detach(%struct.tcf_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  %5 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %6 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %5, i32 0, i32 2
  %7 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  store %struct.tcf_block* %7, %struct.tcf_block** %4, align 8
  %8 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %9 = call i32 @ASSERT_BLOCK_LOCKED(%struct.tcf_block* %8)
  %10 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %10, i32 0, i32 1
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %14 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %19 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %23 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %22, i32 0, i32 1
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %28 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %27, i32 0, i32 0
  %29 = call i64 @refcount_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %26, %21
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ASSERT_BLOCK_LOCKED(%struct.tcf_block*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
