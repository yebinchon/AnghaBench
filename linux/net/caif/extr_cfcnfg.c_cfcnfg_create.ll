; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { %struct.cfcnfg*, %struct.cfcnfg*, i32, i32 }
%struct.cfctrl_rsp = type { i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@cfctrl_enum_resp = common dso_local global i32 0, align 4
@cfctrl_resp_func = common dso_local global i8* null, align 8
@cfcnfg_linkdestroy_rsp = common dso_local global i32 0, align 4
@cfcnfg_linkup_rsp = common dso_local global i32 0, align 4
@cfcnfg_reject_rsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfcnfg* @cfcnfg_create() #0 {
  %1 = alloca %struct.cfcnfg*, align 8
  %2 = alloca %struct.cfcnfg*, align 8
  %3 = alloca %struct.cfctrl_rsp*, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.cfcnfg* @kzalloc(i32 24, i32 %5)
  store %struct.cfcnfg* %6, %struct.cfcnfg** %2, align 8
  %7 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %8 = icmp ne %struct.cfcnfg* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.cfcnfg* null, %struct.cfcnfg** %1, align 8
  br label %98

10:                                               ; preds = %0
  %11 = call %struct.cfcnfg* (...) @cfmuxl_create()
  %12 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %13 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %12, i32 0, i32 1
  store %struct.cfcnfg* %11, %struct.cfcnfg** %13, align 8
  %14 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %15 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %14, i32 0, i32 1
  %16 = load %struct.cfcnfg*, %struct.cfcnfg** %15, align 8
  %17 = icmp ne %struct.cfcnfg* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %86

19:                                               ; preds = %10
  %20 = call %struct.cfcnfg* (...) @cfctrl_create()
  %21 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %22 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %21, i32 0, i32 0
  store %struct.cfcnfg* %20, %struct.cfcnfg** %22, align 8
  %23 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %24 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %23, i32 0, i32 0
  %25 = load %struct.cfcnfg*, %struct.cfcnfg** %24, align 8
  %26 = icmp ne %struct.cfcnfg* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %86

28:                                               ; preds = %19
  %29 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %30 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %29, i32 0, i32 0
  %31 = load %struct.cfcnfg*, %struct.cfcnfg** %30, align 8
  %32 = call %struct.cfctrl_rsp* @cfctrl_get_respfuncs(%struct.cfcnfg* %31)
  store %struct.cfctrl_rsp* %32, %struct.cfctrl_rsp** %3, align 8
  %33 = load i32, i32* @cfctrl_enum_resp, align 4
  %34 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %35 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @cfctrl_resp_func, align 8
  %37 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %38 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @cfcnfg_linkdestroy_rsp, align 4
  %40 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %41 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @cfctrl_resp_func, align 8
  %43 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %44 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @cfctrl_resp_func, align 8
  %46 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %47 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @cfctrl_resp_func, align 8
  %49 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %50 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @cfctrl_resp_func, align 8
  %52 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %53 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @cfcnfg_linkup_rsp, align 4
  %55 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %56 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @cfcnfg_reject_rsp, align 4
  %58 = load %struct.cfctrl_rsp*, %struct.cfctrl_rsp** %3, align 8
  %59 = getelementptr inbounds %struct.cfctrl_rsp, %struct.cfctrl_rsp* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %61 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %64 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %63, i32 0, i32 1
  %65 = load %struct.cfcnfg*, %struct.cfcnfg** %64, align 8
  %66 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %67 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %66, i32 0, i32 0
  %68 = load %struct.cfcnfg*, %struct.cfcnfg** %67, align 8
  %69 = call i32 @cfmuxl_set_uplayer(%struct.cfcnfg* %65, %struct.cfcnfg* %68, i32 0)
  %70 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %71 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %70, i32 0, i32 0
  %72 = load %struct.cfcnfg*, %struct.cfcnfg** %71, align 8
  %73 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %74 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %73, i32 0, i32 1
  %75 = load %struct.cfcnfg*, %struct.cfcnfg** %74, align 8
  %76 = call i32 @layer_set_dn(%struct.cfcnfg* %72, %struct.cfcnfg* %75)
  %77 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %78 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %77, i32 0, i32 0
  %79 = load %struct.cfcnfg*, %struct.cfcnfg** %78, align 8
  %80 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %81 = call i32 @layer_set_up(%struct.cfcnfg* %79, %struct.cfcnfg* %80)
  %82 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %83 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %82, i32 0, i32 2
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  store %struct.cfcnfg* %85, %struct.cfcnfg** %1, align 8
  br label %98

86:                                               ; preds = %27, %18
  %87 = call i32 (...) @synchronize_rcu()
  %88 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %89 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %88, i32 0, i32 1
  %90 = load %struct.cfcnfg*, %struct.cfcnfg** %89, align 8
  %91 = call i32 @kfree(%struct.cfcnfg* %90)
  %92 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %93 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %92, i32 0, i32 0
  %94 = load %struct.cfcnfg*, %struct.cfcnfg** %93, align 8
  %95 = call i32 @kfree(%struct.cfcnfg* %94)
  %96 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %97 = call i32 @kfree(%struct.cfcnfg* %96)
  store %struct.cfcnfg* null, %struct.cfcnfg** %1, align 8
  br label %98

98:                                               ; preds = %86, %28, %9
  %99 = load %struct.cfcnfg*, %struct.cfcnfg** %1, align 8
  ret %struct.cfcnfg* %99
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.cfcnfg* @kzalloc(i32, i32) #1

declare dso_local %struct.cfcnfg* @cfmuxl_create(...) #1

declare dso_local %struct.cfcnfg* @cfctrl_create(...) #1

declare dso_local %struct.cfctrl_rsp* @cfctrl_get_respfuncs(%struct.cfcnfg*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cfmuxl_set_uplayer(%struct.cfcnfg*, %struct.cfcnfg*, i32) #1

declare dso_local i32 @layer_set_dn(%struct.cfcnfg*, %struct.cfcnfg*) #1

declare dso_local i32 @layer_set_up(%struct.cfcnfg*, %struct.cfcnfg*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.cfcnfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
