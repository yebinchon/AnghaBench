; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_add_phy_layer.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_add_phy_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { i32, i32, %struct.cflayer* }
%struct.net_device = type { i32 }
%struct.cflayer = type { i8* }
%struct.cfcnfg_phyinfo = type { i32, i32, i32, i32, i32, %struct.cflayer*, %struct.cflayer*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { %struct.net_device*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"Too many CAIF Link Layers (max 6)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfcnfg_add_phy_layer(%struct.cfcnfg* %0, %struct.net_device* %1, %struct.cflayer* %2, i32 %3, %struct.cflayer* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cfcnfg*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.cflayer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cflayer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cflayer*, align 8
  %16 = alloca %struct.cfcnfg_phyinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.cfcnfg* %0, %struct.cfcnfg** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store %struct.cflayer* %2, %struct.cflayer** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.cflayer* %4, %struct.cflayer** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.cfcnfg_phyinfo* null, %struct.cfcnfg_phyinfo** %16, align 8
  %19 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %20 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %44, %7
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 7
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %17, align 4
  %30 = add nsw i32 %28, %29
  %31 = and i32 %30, 7
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %18, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %44

37:                                               ; preds = %25
  %38 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = call i32* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg* %38, i8* %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %49

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %17, align 4
  br label %22

47:                                               ; preds = %22
  %48 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %133

49:                                               ; preds = %42
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.cfcnfg_phyinfo* @kzalloc(i32 64, i32 %50)
  store %struct.cfcnfg_phyinfo* %51, %struct.cfcnfg_phyinfo** %16, align 8
  %52 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %53 = icmp ne %struct.cfcnfg_phyinfo* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %137

55:                                               ; preds = %49
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %58 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %61 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %64 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %67 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %71 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %72, align 8
  %73 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %74 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %75 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %74, i32 0, i32 6
  store %struct.cflayer* %73, %struct.cflayer** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %80 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %83 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %86 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** %18, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call %struct.cflayer* @cffrml_create(i8* %87, i32 %88)
  store %struct.cflayer* %89, %struct.cflayer** %15, align 8
  %90 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %91 = icmp ne %struct.cflayer* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %55
  br label %137

93:                                               ; preds = %55
  %94 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %95 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %96 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %95, i32 0, i32 5
  store %struct.cflayer* %94, %struct.cflayer** %96, align 8
  %97 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %98 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %99 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %98, i32 0, i32 2
  %100 = load %struct.cflayer*, %struct.cflayer** %99, align 8
  %101 = call i32 @layer_set_up(%struct.cflayer* %97, %struct.cflayer* %100)
  %102 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %103 = icmp ne %struct.cflayer* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %93
  %105 = load i8*, i8** %18, align 8
  %106 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %107 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %109 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %110 = call i32 @layer_set_dn(%struct.cflayer* %108, %struct.cflayer* %109)
  %111 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %112 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %113 = call i32 @layer_set_up(%struct.cflayer* %111, %struct.cflayer* %112)
  %114 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %115 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %116 = call i32 @layer_set_dn(%struct.cflayer* %114, %struct.cflayer* %115)
  %117 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %118 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %119 = call i32 @layer_set_up(%struct.cflayer* %117, %struct.cflayer* %118)
  br label %127

120:                                              ; preds = %93
  %121 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %122 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %123 = call i32 @layer_set_dn(%struct.cflayer* %121, %struct.cflayer* %122)
  %124 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %125 = load %struct.cflayer*, %struct.cflayer** %15, align 8
  %126 = call i32 @layer_set_up(%struct.cflayer* %124, %struct.cflayer* %125)
  br label %127

127:                                              ; preds = %120, %104
  %128 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %129 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %128, i32 0, i32 4
  %130 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %131 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %130, i32 0, i32 1
  %132 = call i32 @list_add_rcu(i32* %129, i32* %131)
  br label %133

133:                                              ; preds = %127, %47
  %134 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %135 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  br label %143

137:                                              ; preds = %92, %54
  %138 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %16, align 8
  %139 = call i32 @kfree(%struct.cfcnfg_phyinfo* %138)
  %140 = load %struct.cfcnfg*, %struct.cfcnfg** %8, align 8
  %141 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  br label %143

143:                                              ; preds = %137, %133
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg*, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.cfcnfg_phyinfo* @kzalloc(i32, i32) #1

declare dso_local %struct.cflayer* @cffrml_create(i8*, i32) #1

declare dso_local i32 @layer_set_up(%struct.cflayer*, %struct.cflayer*) #1

declare dso_local i32 @layer_set_dn(%struct.cflayer*, %struct.cflayer*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cfcnfg_phyinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
