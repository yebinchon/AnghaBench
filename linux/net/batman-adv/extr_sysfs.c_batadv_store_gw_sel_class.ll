; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_sel_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_sel_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.batadv_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.batadv_priv*, i8*, i64)*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BATADV_TQ_MAX_VALUE = common dso_local global i32 0, align 4
@batadv_post_gw_reselect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @batadv_store_gw_sel_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_store_gw_sel_class(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.kobject*, %struct.kobject** %6, align 8
  %13 = call %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject* %12)
  store %struct.batadv_priv* %13, %struct.batadv_priv** %10, align 8
  %14 = load %struct.attribute*, %struct.attribute** %7, align 8
  %15 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %14)
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %49 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.batadv_priv*, i8*, i64)*, i32 (%struct.batadv_priv*, i8*, i64)** %52, align 8
  %54 = icmp ne i32 (%struct.batadv_priv*, i8*, i64)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %57 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.batadv_priv*, i8*, i64)*, i32 (%struct.batadv_priv*, i8*, i64)** %60, align 8
  %62 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 %61(%struct.batadv_priv* %62, i8* %63, i64 %64)
  store i32 %65, i32* %5, align 4
  br label %82

66:                                               ; preds = %47
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* @BATADV_TQ_MAX_VALUE, align 4
  %70 = load i32, i32* @batadv_post_gw_reselect, align 4
  %71 = load %struct.attribute*, %struct.attribute** %7, align 8
  %72 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %73 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %76 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @__batadv_store_uint_attr(i8* %67, i64 %68, i32 1, i32 %69, i32 %70, %struct.attribute* %71, i32* %74, i32 %77, i32* null)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %80 = call i32 @batadv_netlink_notify_mesh(%struct.batadv_priv* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %66, %55, %31
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local i32 @__batadv_store_uint_attr(i8*, i64, i32, i32, i32, %struct.attribute*, i32*, i32, i32*) #1

declare dso_local i32 @batadv_netlink_notify_mesh(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
