; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_disconnect_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_disconnect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cflayer = type { i64, i32 (%struct.cflayer*, i32, i32)* }
%struct.cfcnfg = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"nothing to disconnect\0A\00", align 1
@CAIF_CTRLCMD_DEINIT_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caif_disconnect_client(%struct.net* %0, %struct.cflayer* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfcnfg*, align 8
  %7 = alloca %struct.cflayer*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.cflayer* %1, %struct.cflayer** %4, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call %struct.cfcnfg* @get_cfcnfg(%struct.net* %8)
  store %struct.cfcnfg* %9, %struct.cfcnfg** %6, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = icmp ne %struct.cflayer* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @caif_assert(i32 %12)
  %14 = load %struct.cfcnfg*, %struct.cfcnfg** %6, align 8
  %15 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %18 = call i32 @cfctrl_cancel_req(i32 %16, %struct.cflayer* %17)
  %19 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %20 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.cfcnfg*, %struct.cfcnfg** %6, align 8
  %26 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.cflayer* @cfmuxl_remove_uplayer(i32 %27, i64 %28)
  store %struct.cflayer* %29, %struct.cflayer** %7, align 8
  %30 = load %struct.cfcnfg*, %struct.cfcnfg** %6, align 8
  %31 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %35 = call i32 @cfctrl_linkdown_req(i32 %32, i64 %33, %struct.cflayer* %34)
  %36 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %37 = icmp ne %struct.cflayer* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %40 = call i32 @layer_set_up(%struct.cflayer* %39, i32* null)
  br label %41

41:                                               ; preds = %38, %24
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %41
  %45 = call i32 (...) @synchronize_rcu()
  %46 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %47 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %46, i32 0, i32 1
  %48 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.cflayer*, i32, i32)* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %52 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %51, i32 0, i32 1
  %53 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %52, align 8
  %54 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %55 = load i32, i32* @CAIF_CTRLCMD_DEINIT_RSP, align 4
  %56 = call i32 %53(%struct.cflayer* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %50, %44
  ret i32 0
}

declare dso_local %struct.cfcnfg* @get_cfcnfg(%struct.net*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @cfctrl_cancel_req(i32, %struct.cflayer*) #1

declare dso_local %struct.cflayer* @cfmuxl_remove_uplayer(i32, i64) #1

declare dso_local i32 @cfctrl_linkdown_req(i32, i64, %struct.cflayer*) #1

declare dso_local i32 @layer_set_up(%struct.cflayer*, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
