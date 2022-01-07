; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_br_sysfs_renameif.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_br_sysfs_renameif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_2__*, i32, i32, %struct.net_bridge* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to rename link %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_sysfs_renameif(%struct.net_bridge_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 3
  %8 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  store %struct.net_bridge* %8, %struct.net_bridge** %4, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = call i32 @strncmp(i32 %11, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %23 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 2
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sysfs_rename_link(i32 %24, i32* %26, i32 %29, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %43 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_notice(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49)
  br label %62

51:                                               ; preds = %21
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = call i32 @strlcpy(i32 %54, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %38
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @sysfs_rename_link(i32, i32*, i32, i32) #1

declare dso_local i32 @netdev_notice(i32, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
