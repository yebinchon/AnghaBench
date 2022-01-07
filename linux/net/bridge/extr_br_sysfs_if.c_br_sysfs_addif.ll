; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_br_sysfs_addif.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_br_sysfs_addif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brport_attribute = type { i32 }
%struct.net_bridge_port = type { i32, i32, %struct.TYPE_6__*, %struct.net_bridge* }
%struct.TYPE_6__ = type { i32 }
%struct.net_bridge = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SYSFS_BRIDGE_PORT_LINK = common dso_local global i32 0, align 4
@brport_attrs = common dso_local global %struct.brport_attribute** null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_sysfs_addif(%struct.net_bridge_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.brport_attribute**, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 3
  %9 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  store %struct.net_bridge* %9, %struct.net_bridge** %4, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %10, i32 0, i32 1
  %12 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @SYSFS_BRIDGE_PORT_LINK, align 4
  %18 = call i32 @sysfs_create_link(i32* %11, i32* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %64

23:                                               ; preds = %1
  %24 = load %struct.brport_attribute**, %struct.brport_attribute*** @brport_attrs, align 8
  store %struct.brport_attribute** %24, %struct.brport_attribute*** %5, align 8
  br label %25

25:                                               ; preds = %41, %23
  %26 = load %struct.brport_attribute**, %struct.brport_attribute*** %5, align 8
  %27 = load %struct.brport_attribute*, %struct.brport_attribute** %26, align 8
  %28 = icmp ne %struct.brport_attribute* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  %32 = load %struct.brport_attribute**, %struct.brport_attribute*** %5, align 8
  %33 = load %struct.brport_attribute*, %struct.brport_attribute** %32, align 8
  %34 = getelementptr inbounds %struct.brport_attribute, %struct.brport_attribute* %33, i32 0, i32 0
  %35 = call i32 @sysfs_create_file(i32* %31, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %64

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.brport_attribute**, %struct.brport_attribute*** %5, align 8
  %43 = getelementptr inbounds %struct.brport_attribute*, %struct.brport_attribute** %42, i32 1
  store %struct.brport_attribute** %43, %struct.brport_attribute*** %5, align 8
  br label %25

44:                                               ; preds = %25
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %49 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFNAMSIZ, align 4
  %54 = call i32 @strlcpy(i32 %47, i32 %52, i32 %53)
  %55 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %56 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %59 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %58, i32 0, i32 1
  %60 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %61 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sysfs_create_link(i32* %57, i32* %59, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %44, %38, %21
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @sysfs_create_link(i32*, i32*, i32) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
