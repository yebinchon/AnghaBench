; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_show_gw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_show_gw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BATADV_GW_MODE_CLIENT_NAME = common dso_local global i8* null, align 8
@BATADV_GW_MODE_SERVER_NAME = common dso_local global i8* null, align 8
@BATADV_GW_MODE_OFF_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @batadv_show_gw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_show_gw_mode(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject* %10)
  store %struct.batadv_priv* %11, %struct.batadv_priv** %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %12)
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %15 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %23 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21, %3
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %21
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %34 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @atomic_read(i32* %35)
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 128, label %41
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** @BATADV_GW_MODE_CLIENT_NAME, align 8
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %9, align 4
  br label %49

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** @BATADV_GW_MODE_SERVER_NAME, align 8
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** @BATADV_GW_MODE_OFF_NAME, align 8
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.batadv_priv* @batadv_kobj_to_batpriv(%struct.kobject*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
