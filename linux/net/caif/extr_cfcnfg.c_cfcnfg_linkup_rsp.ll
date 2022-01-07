; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_linkup_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_linkup_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 (%struct.cflayer*, i32, i32)*, i32 }
%struct.cfcnfg = type { %struct.cflayer*, i32 }
%struct.cfcnfg_phyinfo = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"received channel_id zero\0A\00", align 1
@CAIF_CTRLCMD_INIT_FAIL_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"link setup response but no client exist, send linkdown back\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ERROR: Link Layer Device disappeared while connecting\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Protocol error. Link setup response - unknown channel type\0A\00", align 1
@CAIF_CTRLCMD_INIT_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cflayer*, i32, i32, i32, %struct.cflayer*)* @cfcnfg_linkup_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfcnfg_linkup_rsp(%struct.cflayer* %0, i32 %1, i32 %2, i32 %3, %struct.cflayer* %4) #0 {
  %6 = alloca %struct.cflayer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cflayer*, align 8
  %11 = alloca %struct.cfcnfg*, align 8
  %12 = alloca %struct.cflayer*, align 8
  %13 = alloca %struct.cfcnfg_phyinfo*, align 8
  %14 = alloca %struct.net_device*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cflayer* %4, %struct.cflayer** %10, align 8
  %15 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %16 = call %struct.cfcnfg* @container_obj(%struct.cflayer* %15)
  store %struct.cfcnfg* %16, %struct.cfcnfg** %11, align 8
  store %struct.cflayer* null, %struct.cflayer** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %5
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %22 = icmp ne %struct.cflayer* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %25 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %24, i32 0, i32 0
  %26 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.cflayer*, i32, i32)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %30 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %29, i32 0, i32 0
  %31 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %30, align 8
  %32 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %33 = load i32, i32* @CAIF_CTRLCMD_INIT_FAIL_RSP, align 4
  %34 = call i32 %31(%struct.cflayer* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %23, %19
  br label %164

36:                                               ; preds = %5
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %39 = icmp eq %struct.cflayer* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %43 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cfctrl_linkdown_req(i32 %44, i32 %45, i32* null)
  br label %162

47:                                               ; preds = %36
  %48 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %49 = icmp ne %struct.cfcnfg* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @caif_assert(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @caif_assert(i32 %54)
  %56 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg* %56, i32 %57)
  store %struct.cfcnfg_phyinfo* %58, %struct.cfcnfg_phyinfo** %13, align 8
  %59 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %60 = icmp eq %struct.cfcnfg_phyinfo* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %162

63:                                               ; preds = %47
  %64 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %65 = icmp ne %struct.cfcnfg_phyinfo* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @caif_assert(i32 %66)
  %68 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %69 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @caif_assert(i32 %73)
  %75 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %76 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @caif_assert(i32 %79)
  %81 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %82 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @caif_assert(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %92 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %131 [
    i32 129, label %94
    i32 133, label %99
    i32 131, label %104
    i32 130, label %116
    i32 128, label %121
    i32 132, label %126
  ]

94:                                               ; preds = %63
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %97 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %96, i32 0, i32 0
  %98 = call %struct.cflayer* @cfvei_create(i32 %95, %struct.TYPE_9__* %97)
  store %struct.cflayer* %98, %struct.cflayer** %12, align 8
  br label %133

99:                                               ; preds = %63
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %102 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %101, i32 0, i32 0
  %103 = call %struct.cflayer* @cfdgml_create(i32 %100, %struct.TYPE_9__* %102)
  store %struct.cflayer* %103, %struct.cflayer** %12, align 8
  br label %133

104:                                              ; preds = %63
  %105 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %106 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  store %struct.net_device* %108, %struct.net_device** %14, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %111 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %110, i32 0, i32 0
  %112 = load %struct.net_device*, %struct.net_device** %14, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.cflayer* @cfrfml_create(i32 %109, %struct.TYPE_9__* %111, i32 %114)
  store %struct.cflayer* %115, %struct.cflayer** %12, align 8
  br label %133

116:                                              ; preds = %63
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %119 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %118, i32 0, i32 0
  %120 = call %struct.cflayer* @cfutill_create(i32 %117, %struct.TYPE_9__* %119)
  store %struct.cflayer* %120, %struct.cflayer** %12, align 8
  br label %133

121:                                              ; preds = %63
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %124 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %123, i32 0, i32 0
  %125 = call %struct.cflayer* @cfvidl_create(i32 %122, %struct.TYPE_9__* %124)
  store %struct.cflayer* %125, %struct.cflayer** %12, align 8
  br label %133

126:                                              ; preds = %63
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %13, align 8
  %129 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %128, i32 0, i32 0
  %130 = call %struct.cflayer* @cfdbgl_create(i32 %127, %struct.TYPE_9__* %129)
  store %struct.cflayer* %130, %struct.cflayer** %12, align 8
  br label %133

131:                                              ; preds = %63
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %162

133:                                              ; preds = %126, %121, %116, %104, %99, %94
  %134 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %135 = icmp ne %struct.cflayer* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  br label %162

137:                                              ; preds = %133
  %138 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %139 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %140 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %139, i32 0, i32 0
  %141 = load %struct.cflayer*, %struct.cflayer** %140, align 8
  %142 = call i32 @layer_set_dn(%struct.cflayer* %138, %struct.cflayer* %141)
  %143 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %144 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %143, i32 0, i32 0
  %145 = load %struct.cflayer*, %struct.cflayer** %144, align 8
  %146 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @cfmuxl_set_uplayer(%struct.cflayer* %145, %struct.cflayer* %146, i32 %147)
  %149 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %150 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %151 = call i32 @layer_set_up(%struct.cflayer* %149, %struct.cflayer* %150)
  %152 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %153 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %154 = call i32 @layer_set_dn(%struct.cflayer* %152, %struct.cflayer* %153)
  %155 = call i32 (...) @rcu_read_unlock()
  %156 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %157 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %156, i32 0, i32 0
  %158 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %157, align 8
  %159 = load %struct.cflayer*, %struct.cflayer** %12, align 8
  %160 = load i32, i32* @CAIF_CTRLCMD_INIT_RSP, align 4
  %161 = call i32 %158(%struct.cflayer* %159, i32 %160, i32 0)
  br label %164

162:                                              ; preds = %136, %131, %61, %40
  %163 = call i32 (...) @rcu_read_unlock()
  br label %164

164:                                              ; preds = %162, %137, %35
  ret void
}

declare dso_local %struct.cfcnfg* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @cfctrl_linkdown_req(i32, i32, i32*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.cflayer* @cfvei_create(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.cflayer* @cfdgml_create(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.cflayer* @cfrfml_create(i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.cflayer* @cfutill_create(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.cflayer* @cfvidl_create(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.cflayer* @cfdbgl_create(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @layer_set_dn(%struct.cflayer*, %struct.cflayer*) #1

declare dso_local i32 @cfmuxl_set_uplayer(%struct.cflayer*, %struct.cflayer*, i32) #1

declare dso_local i32 @layer_set_up(%struct.cflayer*, %struct.cflayer*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
