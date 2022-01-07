; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_chain_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_chain_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32 }
%struct.tcf_block = type { i32 }

@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@RTM_NEWCHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_chain* (%struct.tcf_block*, i32, i32, i32)* @__tcf_chain_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_chain* @__tcf_chain_get(%struct.tcf_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcf_chain*, align 8
  %6 = alloca %struct.tcf_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_chain*, align 8
  %11 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.tcf_chain* null, %struct.tcf_chain** %10, align 8
  %12 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.tcf_chain* @tcf_chain_lookup(%struct.tcf_block* %15, i32 %16)
  store %struct.tcf_chain* %17, %struct.tcf_chain** %10, align 8
  %18 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %19 = icmp ne %struct.tcf_chain* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %22 = call i32 @tcf_chain_hold(%struct.tcf_chain* %21)
  br label %35

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %70

27:                                               ; preds = %23
  %28 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.tcf_chain* @tcf_chain_create(%struct.tcf_block* %28, i32 %29)
  store %struct.tcf_chain* %30, %struct.tcf_chain** %10, align 8
  %31 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %32 = icmp ne %struct.tcf_chain* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %70

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %40 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %45 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %48 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %54 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  %63 = load i32, i32* @NLM_F_CREATE, align 4
  %64 = load i32, i32* @NLM_F_EXCL, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RTM_NEWCHAIN, align 4
  %67 = call i32 @tc_chain_notify(%struct.tcf_chain* %62, i32* null, i32 0, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %61, %58, %43
  %69 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  store %struct.tcf_chain* %69, %struct.tcf_chain** %5, align 8
  br label %75

70:                                               ; preds = %33, %26
  %71 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %72 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.tcf_chain*, %struct.tcf_chain** %10, align 8
  store %struct.tcf_chain* %74, %struct.tcf_chain** %5, align 8
  br label %75

75:                                               ; preds = %70, %68
  %76 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  ret %struct.tcf_chain* %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_chain_lookup(%struct.tcf_block*, i32) #1

declare dso_local i32 @tcf_chain_hold(%struct.tcf_chain*) #1

declare dso_local %struct.tcf_chain* @tcf_chain_create(%struct.tcf_block*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tc_chain_notify(%struct.tcf_chain*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
