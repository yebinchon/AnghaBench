; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_promiscuity.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_promiscuity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"%s: promiscuity touches roof, set promiscuity failed. promiscuity feature of device might be broken.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"device %s %s promiscuous mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@audit_enabled = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_ANOM_PROMISCUOUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"dev=%s prom=%d old_prom=%d auid=%u uid=%u gid=%u ses=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @__dev_set_promiscuity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dev_set_promiscuity(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @IFF_PROMISC, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %53

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EOVERFLOW, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %114

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %54
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IFF_PROMISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %71)
  %73 = load i64, i64* @audit_enabled, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %60
  %76 = call i32 @current_uid_gid(i32* %9, i32* %10)
  %77 = call i32 (...) @audit_context()
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = load i32, i32* @AUDIT_ANOM_PROMISCUOUS, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IFF_PROMISC, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IFF_PROMISC, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @current, align 4
  %92 = call i32 @audit_get_loginuid(i32 %91)
  %93 = call i32 @from_kuid(i32* @init_user_ns, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @from_kuid(i32* @init_user_ns, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @from_kgid(i32* @init_user_ns, i32 %96)
  %98 = load i32, i32* @current, align 4
  %99 = call i32 @audit_get_sessionid(i32 %98)
  %100 = call i32 @audit_log(i32 %77, i32 %78, i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %87, i32 %90, i32 %93, i32 %95, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %75, %60
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = load i32, i32* @IFF_PROMISC, align 4
  %104 = call i32 @dev_change_rx_flags(%struct.net_device* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %54
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @IFF_PROMISC, align 4
  %112 = call i32 @__dev_notify_flags(%struct.net_device* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %105
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %40
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @current_uid_gid(i32*, i32*) #1

declare dso_local i32 @audit_log(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @dev_change_rx_flags(%struct.net_device*, i32) #1

declare dso_local i32 @__dev_notify_flags(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
