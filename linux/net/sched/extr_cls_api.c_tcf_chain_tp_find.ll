; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64, i64, %struct.tcf_proto* }
%struct.tcf_chain = type { %struct.tcf_proto* }
%struct.tcf_chain_info = type { %struct.tcf_proto*, %struct.tcf_proto** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto* (%struct.tcf_chain*, %struct.tcf_chain_info*, i64, i64, i32)* @tcf_chain_tp_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain* %0, %struct.tcf_chain_info* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_chain*, align 8
  %8 = alloca %struct.tcf_chain_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcf_proto**, align 8
  %13 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %7, align 8
  store %struct.tcf_chain_info* %1, %struct.tcf_chain_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %15 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %14, i32 0, i32 0
  store %struct.tcf_proto** %15, %struct.tcf_proto*** %12, align 8
  br label %16

16:                                               ; preds = %54, %5
  %17 = load %struct.tcf_proto**, %struct.tcf_proto*** %12, align 8
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %19 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %20 = call %struct.tcf_proto* @tcf_chain_dereference(%struct.tcf_proto* %18, %struct.tcf_chain* %19)
  store %struct.tcf_proto* %20, %struct.tcf_proto** %13, align 8
  %21 = icmp ne %struct.tcf_proto* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %16
  %23 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %24 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %30 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %39 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.tcf_proto* @ERR_PTR(i32 %48)
  store %struct.tcf_proto* %49, %struct.tcf_proto** %6, align 8
  br label %76

50:                                               ; preds = %43, %37
  br label %52

51:                                               ; preds = %28
  store %struct.tcf_proto* null, %struct.tcf_proto** %13, align 8
  br label %52

52:                                               ; preds = %51, %50
  br label %57

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %56 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %55, i32 0, i32 2
  store %struct.tcf_proto** %56, %struct.tcf_proto*** %12, align 8
  br label %16

57:                                               ; preds = %52, %16
  %58 = load %struct.tcf_proto**, %struct.tcf_proto*** %12, align 8
  %59 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %8, align 8
  %60 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %59, i32 0, i32 1
  store %struct.tcf_proto** %58, %struct.tcf_proto*** %60, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %62 = icmp ne %struct.tcf_proto* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %65 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %64, i32 0, i32 2
  %66 = load %struct.tcf_proto*, %struct.tcf_proto** %65, align 8
  %67 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %8, align 8
  %68 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %67, i32 0, i32 0
  store %struct.tcf_proto* %66, %struct.tcf_proto** %68, align 8
  %69 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %70 = call i32 @tcf_proto_get(%struct.tcf_proto* %69)
  br label %74

71:                                               ; preds = %57
  %72 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %8, align 8
  %73 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %72, i32 0, i32 0
  store %struct.tcf_proto* null, %struct.tcf_proto** %73, align 8
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  store %struct.tcf_proto* %75, %struct.tcf_proto** %6, align 8
  br label %76

76:                                               ; preds = %74, %46
  %77 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  ret %struct.tcf_proto* %77
}

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(%struct.tcf_proto*, %struct.tcf_chain*) #1

declare dso_local %struct.tcf_proto* @ERR_PTR(i32) #1

declare dso_local i32 @tcf_proto_get(%struct.tcf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
