; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_del_phy_layer.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_del_phy_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { i32, i32 }
%struct.cflayer = type { i64, %struct.cflayer*, %struct.cflayer*, %struct.cflayer*, i32 }
%struct.cfcnfg_phyinfo = type { i64, %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Wait for device inuse\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfcnfg_del_phy_layer(%struct.cfcnfg* %0, %struct.cflayer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfcnfg*, align 8
  %5 = alloca %struct.cflayer*, align 8
  %6 = alloca %struct.cflayer*, align 8
  %7 = alloca %struct.cflayer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cfcnfg_phyinfo*, align 8
  store %struct.cfcnfg* %0, %struct.cfcnfg** %4, align 8
  store %struct.cflayer* %1, %struct.cflayer** %5, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %12 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %15 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.cflayer* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg* %17, i64 %18)
  %20 = bitcast %struct.cflayer* %19 to %struct.cfcnfg_phyinfo*
  store %struct.cfcnfg_phyinfo* %20, %struct.cfcnfg_phyinfo** %9, align 8
  %21 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %22 = icmp eq %struct.cfcnfg_phyinfo* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %25 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  store i32 0, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %30 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @caif_assert(i32 %33)
  %35 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %36 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %37 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %36, i32 0, i32 1
  %38 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %37, align 8
  %39 = bitcast %struct.cfcnfg_phyinfo* %38 to %struct.cflayer*
  %40 = icmp eq %struct.cflayer* %35, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @caif_assert(i32 %41)
  %43 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %44 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @caif_assert(i32 %48)
  %50 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %51 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %50, i32 0, i32 3
  %52 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %51, align 8
  %53 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @caif_assert(i32 %57)
  %59 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %60 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %59, i32 0, i32 4
  %61 = call i32 @list_del_rcu(i32* %60)
  %62 = call i32 (...) @synchronize_rcu()
  %63 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %64 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %63, i32 0, i32 3
  %65 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %64, align 8
  %66 = bitcast %struct.cfcnfg_phyinfo* %65 to %struct.cflayer*
  %67 = call i64 @cffrml_refcnt_read(%struct.cflayer* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %27
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %72 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %71, i32 0, i32 4
  %73 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %74 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %73, i32 0, i32 1
  %75 = call i32 @list_add_rcu(i32* %72, i32* %74)
  %76 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %77 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %122

81:                                               ; preds = %27
  %82 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %83 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %82, i32 0, i32 3
  %84 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %83, align 8
  %85 = bitcast %struct.cfcnfg_phyinfo* %84 to %struct.cflayer*
  store %struct.cflayer* %85, %struct.cflayer** %6, align 8
  %86 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %87 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %86, i32 0, i32 2
  %88 = load %struct.cflayer*, %struct.cflayer** %87, align 8
  store %struct.cflayer* %88, %struct.cflayer** %7, align 8
  %89 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %90 = call i32 @cffrml_set_uplayer(%struct.cflayer* %89, i32* null)
  %91 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %92 = call i32 @cffrml_set_dnlayer(%struct.cflayer* %91, i32* null)
  %93 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %94 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %95 = icmp ne %struct.cflayer* %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %98 = call i32 @layer_set_up(%struct.cflayer* %97, i32* null)
  %99 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %100 = call i32 @layer_set_dn(%struct.cflayer* %99, i32* null)
  br label %101

101:                                              ; preds = %96, %81
  %102 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %103 = call i32 @layer_set_up(%struct.cflayer* %102, i32* null)
  %104 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %105 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %104, i32 0, i32 1
  %106 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %105, align 8
  %107 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %108 = bitcast %struct.cflayer* %107 to %struct.cfcnfg_phyinfo*
  %109 = icmp ne %struct.cfcnfg_phyinfo* %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %112 = call i32 @kfree(%struct.cflayer* %111)
  br label %113

113:                                              ; preds = %110, %101
  %114 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %115 = call i32 @cffrml_free(%struct.cflayer* %114)
  %116 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %9, align 8
  %117 = bitcast %struct.cfcnfg_phyinfo* %116 to %struct.cflayer*
  %118 = call i32 @kfree(%struct.cflayer* %117)
  %119 = load %struct.cfcnfg*, %struct.cfcnfg** %4, align 8
  %120 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %113, %69, %23
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cflayer* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i64 @cffrml_refcnt_read(%struct.cflayer*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @cffrml_set_uplayer(%struct.cflayer*, i32*) #1

declare dso_local i32 @cffrml_set_dnlayer(%struct.cflayer*, i32*) #1

declare dso_local i32 @layer_set_up(%struct.cflayer*, i32*) #1

declare dso_local i32 @layer_set_dn(%struct.cflayer*, i32*) #1

declare dso_local i32 @kfree(%struct.cflayer*) #1

declare dso_local i32 @cffrml_free(%struct.cflayer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
