; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32, i32, i32, i32, %struct.net*, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.ipt_clusterip_tgt_info = type { i32, i32, i32, i32 }
%struct.clusterip_net = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Please specify an interface name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"no such interface %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@clusterip_proc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clusterip_config* (%struct.net*, %struct.ipt_clusterip_tgt_info*, i32, i8*)* @clusterip_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clusterip_config* @clusterip_config_init(%struct.net* %0, %struct.ipt_clusterip_tgt_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.clusterip_config*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ipt_clusterip_tgt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.clusterip_net*, align 8
  %11 = alloca %struct.clusterip_config*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ipt_clusterip_tgt_info* %1, %struct.ipt_clusterip_tgt_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = call %struct.clusterip_net* @clusterip_pernet(%struct.net* %14)
  store %struct.clusterip_net* %15, %struct.clusterip_net** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clusterip_config* @ERR_PTR(i32 %24)
  store %struct.clusterip_config* %25, %struct.clusterip_config** %5, align 8
  br label %133

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.clusterip_config* @kzalloc(i32 56, i32 %27)
  store %struct.clusterip_config* %28, %struct.clusterip_config** %11, align 8
  %29 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %30 = icmp ne %struct.clusterip_config* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.clusterip_config* @ERR_PTR(i32 %33)
  store %struct.clusterip_config* %34, %struct.clusterip_config** %5, align 8
  br label %133

35:                                               ; preds = %26
  %36 = load %struct.net*, %struct.net** %6, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call %struct.net_device* @dev_get_by_name(%struct.net* %36, i8* %37)
  store %struct.net_device* %38, %struct.net_device** %12, align 8
  %39 = load %struct.net_device*, %struct.net_device** %12, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %45 = call i32 @kfree(%struct.clusterip_config* %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.clusterip_config* @ERR_PTR(i32 %47)
  store %struct.clusterip_config* %48, %struct.clusterip_config** %5, align 8
  br label %133

49:                                               ; preds = %35
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %54 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 8
  %55 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %56 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %12, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i32 %57, i32 %60)
  %62 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %63 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %62, i32 0, i32 9
  %64 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %7, align 8
  %65 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %64, i32 0, i32 3
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32* %63, i32* %65, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %12, align 8
  %69 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %70 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_mc_add(%struct.net_device* %68, i32 %71)
  %73 = load %struct.net_device*, %struct.net_device** %12, align 8
  %74 = call i32 @dev_put(%struct.net_device* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %77 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %7, align 8
  %79 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %82 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %84 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %7, align 8
  %85 = call i32 @clusterip_config_init_nodelist(%struct.clusterip_config* %83, %struct.ipt_clusterip_tgt_info* %84)
  %86 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %7, align 8
  %87 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %90 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %7, align 8
  %92 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %95 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.net*, %struct.net** %6, align 8
  %97 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %98 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %97, i32 0, i32 4
  store %struct.net* %96, %struct.net** %98, align 8
  %99 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %100 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %99, i32 0, i32 3
  %101 = call i32 @refcount_set(i32* %100, i32 1)
  %102 = load %struct.clusterip_net*, %struct.clusterip_net** %10, align 8
  %103 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %102, i32 0, i32 0
  %104 = call i32 @spin_lock_bh(i32* %103)
  %105 = load %struct.net*, %struct.net** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @__clusterip_config_find(%struct.net* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %49
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %125

112:                                              ; preds = %49
  %113 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %114 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %113, i32 0, i32 0
  %115 = load %struct.clusterip_net*, %struct.clusterip_net** %10, align 8
  %116 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %115, i32 0, i32 3
  %117 = call i32 @list_add_rcu(i32* %114, i32* %116)
  %118 = load %struct.clusterip_net*, %struct.clusterip_net** %10, align 8
  %119 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock_bh(i32* %119)
  %121 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %122 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %121, i32 0, i32 1
  %123 = call i32 @refcount_set(i32* %122, i32 1)
  %124 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  store %struct.clusterip_config* %124, %struct.clusterip_config** %5, align 8
  br label %133

125:                                              ; preds = %109
  %126 = load %struct.clusterip_net*, %struct.clusterip_net** %10, align 8
  %127 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.clusterip_config*, %struct.clusterip_config** %11, align 8
  %130 = call i32 @clusterip_config_put(%struct.clusterip_config* %129)
  %131 = load i32, i32* %13, align 4
  %132 = call %struct.clusterip_config* @ERR_PTR(i32 %131)
  store %struct.clusterip_config* %132, %struct.clusterip_config** %5, align 8
  br label %133

133:                                              ; preds = %125, %112, %41, %31, %21
  %134 = load %struct.clusterip_config*, %struct.clusterip_config** %5, align 8
  ret %struct.clusterip_config* %134
}

declare dso_local %struct.clusterip_net* @clusterip_pernet(%struct.net*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.clusterip_config* @ERR_PTR(i32) #1

declare dso_local %struct.clusterip_config* @kzalloc(i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @kfree(%struct.clusterip_config*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @clusterip_config_init_nodelist(%struct.clusterip_config*, %struct.ipt_clusterip_tgt_info*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @__clusterip_config_find(%struct.net*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clusterip_config_put(%struct.clusterip_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
