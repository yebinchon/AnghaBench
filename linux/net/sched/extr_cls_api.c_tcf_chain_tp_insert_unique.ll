; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_insert_unique.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_insert_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_chain_info = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto* (%struct.tcf_chain*, %struct.tcf_proto*, i32, i32, i32)* @tcf_chain_tp_insert_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto* @tcf_chain_tp_insert_unique(%struct.tcf_chain* %0, %struct.tcf_proto* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_chain*, align 8
  %8 = alloca %struct.tcf_proto*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcf_chain_info, align 4
  %13 = alloca %struct.tcf_proto*, align 8
  %14 = alloca i32, align 4
  store %struct.tcf_chain* %0, %struct.tcf_chain** %7, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %16 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %20 = call i64 @tcf_proto_exists_destroying(%struct.tcf_chain* %18, %struct.tcf_proto* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %24 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @tcf_proto_destroy(%struct.tcf_proto* %26, i32 %27, i32 0, i32* null)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.tcf_proto* @ERR_PTR(i32 %30)
  store %struct.tcf_proto* %31, %struct.tcf_proto** %6, align 8
  br label %66

32:                                               ; preds = %5
  %33 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain* %33, %struct.tcf_chain_info* %12, i32 %34, i32 %35, i32 0)
  store %struct.tcf_proto* %36, %struct.tcf_proto** %13, align 8
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %38 = icmp ne %struct.tcf_proto* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %41 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %42 = call i32 @tcf_chain_tp_insert(%struct.tcf_chain* %40, %struct.tcf_chain_info* %12, %struct.tcf_proto* %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %45 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %48 = icmp ne %struct.tcf_proto* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @tcf_proto_destroy(%struct.tcf_proto* %50, i32 %51, i32 0, i32* null)
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  store %struct.tcf_proto* %53, %struct.tcf_proto** %8, align 8
  br label %64

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @tcf_proto_destroy(%struct.tcf_proto* %58, i32 %59, i32 0, i32* null)
  %61 = load i32, i32* %14, align 4
  %62 = call %struct.tcf_proto* @ERR_PTR(i32 %61)
  store %struct.tcf_proto* %62, %struct.tcf_proto** %8, align 8
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %49
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  store %struct.tcf_proto* %65, %struct.tcf_proto** %6, align 8
  br label %66

66:                                               ; preds = %64, %22
  %67 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  ret %struct.tcf_proto* %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tcf_proto_exists_destroying(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcf_proto_destroy(%struct.tcf_proto*, i32, i32, i32*) #1

declare dso_local %struct.tcf_proto* @ERR_PTR(i32) #1

declare dso_local %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain*, %struct.tcf_chain_info*, i32, i32, i32) #1

declare dso_local i32 @tcf_chain_tp_insert(%struct.tcf_chain*, %struct.tcf_chain_info*, %struct.tcf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
