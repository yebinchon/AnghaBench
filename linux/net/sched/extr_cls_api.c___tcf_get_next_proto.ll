; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_get_next_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_get_next_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32 }
%struct.tcf_proto = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto* (%struct.tcf_chain*, %struct.tcf_proto*)* @__tcf_get_next_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto* @__tcf_get_next_proto(%struct.tcf_chain* %0, %struct.tcf_proto* %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = icmp ne %struct.tcf_proto* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %14 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %17 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %15, %struct.tcf_chain* %16)
  store %struct.tcf_proto* %17, %struct.tcf_proto** %4, align 8
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %20 = call i64 @tcf_proto_is_deleting(%struct.tcf_proto* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %24 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %28 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %31 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %29, %struct.tcf_chain* %30)
  store %struct.tcf_proto* %31, %struct.tcf_proto** %4, align 8
  br label %32

32:                                               ; preds = %48, %22
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %34 = icmp ne %struct.tcf_proto* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %37 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %42 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %54

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %50 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %53 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %51, %struct.tcf_chain* %52)
  store %struct.tcf_proto* %53, %struct.tcf_proto** %4, align 8
  br label %32

54:                                               ; preds = %46, %32
  br label %61

55:                                               ; preds = %18
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %57 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %60 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %58, %struct.tcf_chain* %59)
  store %struct.tcf_proto* %60, %struct.tcf_proto** %4, align 8
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %12
  %63 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %64 = icmp ne %struct.tcf_proto* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %67 = call i32 @tcf_proto_get(%struct.tcf_proto* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %70 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  ret %struct.tcf_proto* %72
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(i32, %struct.tcf_chain*) #1

declare dso_local i64 @tcf_proto_is_deleting(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_proto_get(%struct.tcf_proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
