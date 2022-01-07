; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_get_from_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_get_from_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.devlink_health_reporter = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.devlink = type { i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GENL_HDRLEN = common dso_local global i64 0, align 8
@devlink_nl_family = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@devlink_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.devlink_health_reporter* (%struct.netlink_callback*)* @devlink_health_reporter_get_from_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.devlink_health_reporter* @devlink_health_reporter_get_from_cb(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.devlink_health_reporter*, align 8
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %8 = load i64, i64* @DEVLINK_ATTR_MAX, align 8
  %9 = add nsw i64 %8, 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nlattr** @kmalloc_array(i64 %9, i32 8, i32 %10)
  store %struct.nlattr** %11, %struct.nlattr*** %6, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %13 = icmp ne %struct.nlattr** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.devlink_health_reporter* null, %struct.devlink_health_reporter** %2, align 8
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @GENL_HDRLEN, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devlink_nl_family, i32 0, i32 1), align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %23 = load i64, i64* @DEVLINK_ATTR_MAX, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devlink_nl_family, i32 0, i32 0), align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nlmsg_parse_deprecated(i32 %18, i64 %21, %struct.nlattr** %22, i64 %23, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %56

32:                                               ; preds = %15
  %33 = call i32 @mutex_lock(i32* @devlink_mutex)
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sock_net(i32 %38)
  %40 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %41 = call %struct.devlink* @devlink_get_from_attrs(i32 %39, %struct.nlattr** %40)
  store %struct.devlink* %41, %struct.devlink** %5, align 8
  %42 = load %struct.devlink*, %struct.devlink** %5, align 8
  %43 = call i64 @IS_ERR(%struct.devlink* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %54

46:                                               ; preds = %32
  %47 = load %struct.devlink*, %struct.devlink** %5, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = call %struct.devlink_health_reporter* @devlink_health_reporter_get_from_attrs(%struct.devlink* %47, %struct.nlattr** %48)
  store %struct.devlink_health_reporter* %49, %struct.devlink_health_reporter** %4, align 8
  %50 = call i32 @mutex_unlock(i32* @devlink_mutex)
  %51 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %52 = call i32 @kfree(%struct.nlattr** %51)
  %53 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  store %struct.devlink_health_reporter* %53, %struct.devlink_health_reporter** %2, align 8
  br label %59

54:                                               ; preds = %45
  %55 = call i32 @mutex_unlock(i32* @devlink_mutex)
  br label %56

56:                                               ; preds = %54, %31
  %57 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %58 = call i32 @kfree(%struct.nlattr** %57)
  store %struct.devlink_health_reporter* null, %struct.devlink_health_reporter** %2, align 8
  br label %59

59:                                               ; preds = %56, %46, %14
  %60 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  ret %struct.devlink_health_reporter* %60
}

declare dso_local %struct.nlattr** @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(i32, i64, %struct.nlattr**, i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink* @devlink_get_from_attrs(i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.devlink*) #1

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_attrs(%struct.devlink*, %struct.nlattr**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
