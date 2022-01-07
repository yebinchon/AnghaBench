; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_sysfs.c_nfs_netns_client_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_sysfs.c_nfs_netns_client_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_netns_client = type { %struct.TYPE_3__, %struct.net* }
%struct.TYPE_3__ = type { i32 }
%struct.kobject = type { i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_client_kset = common dso_local global i32 0, align 4
@nfs_netns_client_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nfs_client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_netns_client* (%struct.kobject*, %struct.net*)* @nfs_netns_client_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_netns_client* @nfs_netns_client_alloc(%struct.kobject* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.nfs_netns_client*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nfs_netns_client*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nfs_netns_client* @kzalloc(i32 16, i32 %7)
  store %struct.nfs_netns_client* %8, %struct.nfs_netns_client** %6, align 8
  %9 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  %10 = icmp ne %struct.nfs_netns_client* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_netns_client, %struct.nfs_netns_client* %13, i32 0, i32 1
  store %struct.net* %12, %struct.net** %14, align 8
  %15 = load i32, i32* @nfs_client_kset, align 4
  %16 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_netns_client, %struct.nfs_netns_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_netns_client, %struct.nfs_netns_client* %19, i32 0, i32 0
  %21 = load %struct.kobject*, %struct.kobject** %4, align 8
  %22 = call i64 @kobject_init_and_add(%struct.TYPE_3__* %20, i32* @nfs_netns_client_type, %struct.kobject* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  store %struct.nfs_netns_client* %25, %struct.nfs_netns_client** %3, align 8
  br label %31

26:                                               ; preds = %11
  %27 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_netns_client, %struct.nfs_netns_client* %27, i32 0, i32 0
  %29 = call i32 @kobject_put(%struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %26, %2
  store %struct.nfs_netns_client* null, %struct.nfs_netns_client** %3, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.nfs_netns_client*, %struct.nfs_netns_client** %3, align 8
  ret %struct.nfs_netns_client* %32
}

declare dso_local %struct.nfs_netns_client* @kzalloc(i32, i32) #1

declare dso_local i64 @kobject_init_and_add(%struct.TYPE_3__*, i32*, %struct.kobject*, i8*) #1

declare dso_local i32 @kobject_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
