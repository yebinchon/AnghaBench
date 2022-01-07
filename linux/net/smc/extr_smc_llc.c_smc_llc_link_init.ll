; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_link_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_link_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smc_link_group = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"llc_wq-%x:%x)\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smc_llc_testlink_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_llc_link_init(%struct.smc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  %5 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %6 = call %struct.smc_link_group* @smc_get_lgr(%struct.smc_link* %5)
  store %struct.smc_link_group* %6, %struct.smc_link_group** %4, align 8
  %7 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %8 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %9 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %14 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %15)
  %17 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %18 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %20 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %1
  %27 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %28 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %27, i32 0, i32 8
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %31 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %30, i32 0, i32 7
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %34 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %33, i32 0, i32 6
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %37 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %36, i32 0, i32 5
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %40 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %39, i32 0, i32 4
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %43 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %42, i32 0, i32 3
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %46 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %45, i32 0, i32 2
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %49 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %48, i32 0, i32 1
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %52 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %51, i32 0, i32 0
  %53 = load i32, i32* @smc_llc_testlink_work, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %26, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.smc_link_group* @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
