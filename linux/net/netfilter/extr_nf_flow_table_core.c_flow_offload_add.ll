; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_flowtable = type { i32 }
%struct.flow_offload = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@NF_FLOW_TIMEOUT = common dso_local global i64 0, align 8
@nf_flow_offload_rhash_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_offload_add(%struct.nf_flowtable* %0, %struct.flow_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_flowtable*, align 8
  %5 = alloca %struct.flow_offload*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_flowtable* %0, %struct.nf_flowtable** %4, align 8
  store %struct.flow_offload* %1, %struct.flow_offload** %5, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @NF_FLOW_TIMEOUT, align 8
  %9 = add nsw i64 %7, %8
  %10 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %11 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.nf_flowtable*, %struct.nf_flowtable** %4, align 8
  %13 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %12, i32 0, i32 0
  %14 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %15 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @nf_flow_offload_rhash_params, align 4
  %20 = call i32 @rhashtable_insert_fast(i32* %13, i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.nf_flowtable*, %struct.nf_flowtable** %4, align 8
  %27 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %26, i32 0, i32 0
  %28 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %29 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @nf_flow_offload_rhash_params, align 4
  %34 = call i32 @rhashtable_insert_fast(i32* %27, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load %struct.nf_flowtable*, %struct.nf_flowtable** %4, align 8
  %39 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %38, i32 0, i32 0
  %40 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %41 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @nf_flow_offload_rhash_params, align 4
  %46 = call i32 @rhashtable_remove_fast(i32* %39, i32* %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %37, %23
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
