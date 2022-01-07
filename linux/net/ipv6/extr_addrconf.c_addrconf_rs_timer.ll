; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_rs_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_rs_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i64, i32, %struct.net_device*, i32, %struct.TYPE_2__, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.timer_list = type { i32 }
%struct.in6_addr = type { i32 }

@rs_timer = common dso_local global i32 0, align 4
@IF_READY = common dso_local global i32 0, align 4
@IF_RA_RCVD = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: no IPv6 routers present\0A\00", align 1
@idev = common dso_local global %struct.inet6_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @addrconf_rs_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_rs_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %7 = ptrtoint %struct.inet6_dev* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @rs_timer, align 4
  %10 = call %struct.inet6_dev* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.inet6_dev* %10, %struct.inet6_dev** %3, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 2
  %16 = call i32 @write_lock(i32* %15)
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IF_READY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %1
  br label %113

29:                                               ; preds = %21
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %31 = call i32 @ipv6_accept_ra(%struct.inet6_dev* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %113

34:                                               ; preds = %29
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IF_RA_RCVD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %113

42:                                               ; preds = %34
  %43 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %44 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %48 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %52, %42
  %59 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %60 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %59, i32 0, i32 2
  %61 = call i32 @write_unlock(i32* %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %64 = call i32 @ipv6_get_lladdr(%struct.net_device* %62, %struct.in6_addr* %5, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @ndisc_send_rs(%struct.net_device* %67, %struct.in6_addr* %5, i32* @in6addr_linklocal_allrouters)
  br label %70

69:                                               ; preds = %58
  br label %117

70:                                               ; preds = %66
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %72 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %71, i32 0, i32 2
  %73 = call i32 @write_lock(i32* %72)
  %74 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %75 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %78 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rfc3315_s14_backoff_update(i32 %76, i32 %80)
  %82 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %83 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %85 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %86 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %89 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %70
  %94 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %95 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  br label %102

98:                                               ; preds = %70
  %99 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %100 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i32 [ %97, %93 ], [ %101, %98 ]
  %104 = call i32 @addrconf_mod_rs_timer(%struct.inet6_dev* %84, i32 %103)
  br label %112

105:                                              ; preds = %52
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %107 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %106, i32 0, i32 3
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %105, %102
  br label %113

113:                                              ; preds = %112, %41, %33, %28
  %114 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %115 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %114, i32 0, i32 2
  %116 = call i32 @write_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113, %69
  %118 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %119 = call i32 @in6_dev_put(%struct.inet6_dev* %118)
  ret void
}

declare dso_local %struct.inet6_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @ipv6_accept_ra(%struct.inet6_dev*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ndisc_send_rs(%struct.net_device*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @rfc3315_s14_backoff_update(i32, i32) #1

declare dso_local i32 @addrconf_mod_rs_timer(%struct.inet6_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
