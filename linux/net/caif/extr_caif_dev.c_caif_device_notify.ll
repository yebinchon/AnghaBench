; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32 }
%struct.caif_device_entry = type { i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }
%struct.TYPE_5__ = type { i32* }
%struct.caif_dev_common = type { i32, i32, i32 }
%struct.cfcnfg = type { i32 }
%struct.cflayer = type { i32 }
%struct.caif_device_entry_list = type { i32, i32 }

@ARPHRD_CAIF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@dev_flowctrl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_CAIF_CTRLCMD_PHYIF_DOWN_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Wait for device inuse\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @caif_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caif_device_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.caif_device_entry*, align 8
  %10 = alloca %struct.caif_dev_common*, align 8
  %11 = alloca %struct.cfcnfg*, align 8
  %12 = alloca %struct.cflayer*, align 8
  %13 = alloca %struct.cflayer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.caif_device_entry_list*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %16)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  store %struct.caif_device_entry* null, %struct.caif_device_entry** %9, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call i32 @dev_net(%struct.net_device* %18)
  %20 = call %struct.cfcnfg* @get_cfcnfg(i32 %19)
  store %struct.cfcnfg* %20, %struct.cfcnfg** %11, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 @dev_net(%struct.net_device* %21)
  %23 = call %struct.caif_device_entry_list* @caif_device_list(i32 %22)
  store %struct.caif_device_entry_list* %23, %struct.caif_device_entry_list** %15, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %24)
  store %struct.caif_device_entry* %25, %struct.caif_device_entry** %9, align 8
  %26 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %27 = icmp eq %struct.caif_device_entry* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ARPHRD_CAIF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %217

35:                                               ; preds = %28, %3
  %36 = load i64, i64* %6, align 8
  switch i64 %36, label %216 [
    i64 130, label %37
    i64 128, label %70
    i64 131, label %86
    i64 129, label %166
  ]

37:                                               ; preds = %35
  %38 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %39 = icmp ne %struct.caif_device_entry* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %216

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call %struct.caif_dev_common* @netdev_priv(%struct.net_device* %42)
  store %struct.caif_dev_common* %43, %struct.caif_dev_common** %10, align 8
  store %struct.cflayer* null, %struct.cflayer** %13, align 8
  %44 = load %struct.caif_dev_common*, %struct.caif_dev_common** %10, align 8
  %45 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  store i32 1, i32* %14, align 4
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.caif_dev_common*, %struct.caif_dev_common** %10, align 8
  %53 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.cflayer* @cfserl_create(i32 %51, i32 %54)
  store %struct.cflayer* %55, %struct.cflayer** %13, align 8
  %56 = load %struct.cflayer*, %struct.cflayer** %13, align 8
  %57 = icmp ne %struct.cflayer* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %216

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = load %struct.caif_dev_common*, %struct.caif_dev_common** %10, align 8
  %64 = load %struct.cflayer*, %struct.cflayer** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @caif_enroll_dev(%struct.net_device* %62, %struct.caif_dev_common* %63, %struct.cflayer* %64, i32 %65, %struct.cflayer** %12, i32* null)
  %67 = load i32, i32* @dev_flowctrl, align 4
  %68 = load %struct.caif_dev_common*, %struct.caif_dev_common** %10, align 8
  %69 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %216

70:                                               ; preds = %35
  %71 = call i32 (...) @rcu_read_lock()
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %72)
  store %struct.caif_device_entry* %73, %struct.caif_device_entry** %9, align 8
  %74 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %75 = icmp eq %struct.caif_device_entry* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (...) @rcu_read_unlock()
  br label %216

78:                                               ; preds = %70
  %79 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %80 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %79, i32 0, i32 7
  store i32 0, i32* %80, align 8
  %81 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %82 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %83 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %82, i32 0, i32 3
  %84 = call i32 @cfcnfg_set_phy_state(%struct.cfcnfg* %81, %struct.TYPE_7__* %83, i32 1)
  %85 = call i32 (...) @rcu_read_unlock()
  br label %216

86:                                               ; preds = %35
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.net_device*, %struct.net_device** %8, align 8
  %89 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %88)
  store %struct.caif_device_entry* %89, %struct.caif_device_entry** %9, align 8
  %90 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %91 = icmp ne %struct.caif_device_entry* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %94 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = icmp ne %struct.TYPE_6__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %100 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_6__*, i32, i32)* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %98, %92, %86
  %107 = call i32 (...) @rcu_read_unlock()
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %217

110:                                              ; preds = %98
  %111 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %112 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %113 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %112, i32 0, i32 3
  %114 = call i32 @cfcnfg_set_phy_state(%struct.cfcnfg* %111, %struct.TYPE_7__* %113, i32 0)
  %115 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %116 = call i32 @caifd_hold(%struct.caif_device_entry* %115)
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %119 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %122, align 8
  %124 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %125 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* @_CAIF_CTRLCMD_PHYIF_DOWN_IND, align 4
  %129 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %130 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %123(%struct.TYPE_6__* %127, i32 %128, i32 %132)
  %134 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %135 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %134, i32 0, i32 4
  %136 = call i32 @spin_lock_bh(i32* %135)
  %137 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %138 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %110
  %142 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %143 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %142, i32 0, i32 5
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = icmp ne %struct.TYPE_5__* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %148 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %151 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %150, i32 0, i32 5
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32* %149, i32** %153, align 8
  br label %154

154:                                              ; preds = %146, %141, %110
  %155 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %156 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %155, i32 0, i32 7
  store i32 0, i32* %156, align 8
  %157 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %158 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %157, i32 0, i32 6
  store i32* null, i32** %158, align 8
  %159 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %160 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %159, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %160, align 8
  %161 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %162 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %161, i32 0, i32 4
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %165 = call i32 @caifd_put(%struct.caif_device_entry* %164)
  br label %216

166:                                              ; preds = %35
  %167 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %15, align 8
  %168 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %167, i32 0, i32 0
  %169 = call i32 @mutex_lock(i32* %168)
  %170 = load %struct.net_device*, %struct.net_device** %8, align 8
  %171 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %170)
  store %struct.caif_device_entry* %171, %struct.caif_device_entry** %9, align 8
  %172 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %173 = icmp eq %struct.caif_device_entry* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %15, align 8
  %176 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  br label %216

178:                                              ; preds = %166
  %179 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %180 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %179, i32 0, i32 2
  %181 = call i32 @list_del_rcu(i32* %180)
  %182 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %183 = call i32 @caifd_refcnt_read(%struct.caif_device_entry* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %178
  %186 = load %struct.cfcnfg*, %struct.cfcnfg** %11, align 8
  %187 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %188 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %187, i32 0, i32 3
  %189 = call i32 @cfcnfg_del_phy_layer(%struct.cfcnfg* %186, %struct.TYPE_7__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %185, %178
  %192 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %193 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %194 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %193, i32 0, i32 2
  %195 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %15, align 8
  %196 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %195, i32 0, i32 1
  %197 = call i32 @list_add_rcu(i32* %194, i32* %196)
  %198 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %15, align 8
  %199 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  br label %216

201:                                              ; preds = %185
  %202 = call i32 (...) @synchronize_rcu()
  %203 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %204 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @dev_put(i32 %205)
  %207 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %208 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @free_percpu(i32 %209)
  %211 = load %struct.caif_device_entry*, %struct.caif_device_entry** %9, align 8
  %212 = call i32 @kfree(%struct.caif_device_entry* %211)
  %213 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %15, align 8
  %214 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %213, i32 0, i32 0
  %215 = call i32 @mutex_unlock(i32* %214)
  br label %216

216:                                              ; preds = %35, %201, %191, %174, %154, %78, %76, %61, %58, %40
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %106, %34
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.cfcnfg* @get_cfcnfg(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.caif_device_entry_list* @caif_device_list(i32) #1

declare dso_local %struct.caif_device_entry* @caif_get(%struct.net_device*) #1

declare dso_local %struct.caif_dev_common* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.cflayer* @cfserl_create(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @caif_enroll_dev(%struct.net_device*, %struct.caif_dev_common*, %struct.cflayer*, i32, %struct.cflayer**, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfcnfg_set_phy_state(%struct.cfcnfg*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @caifd_hold(%struct.caif_device_entry*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @caifd_put(%struct.caif_device_entry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @caifd_refcnt_read(%struct.caif_device_entry*) #1

declare dso_local i32 @cfcnfg_del_phy_layer(%struct.cfcnfg*, %struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.caif_device_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
