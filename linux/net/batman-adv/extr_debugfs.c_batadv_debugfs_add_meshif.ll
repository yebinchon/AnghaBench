; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_add_meshif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_add_meshif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.batadv_debuginfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32* }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@batadv_debugfs = common dso_local global i32 0, align 4
@batadv_mesh_debuginfos = common dso_local global %struct.batadv_debuginfo** null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_debugfs_add_meshif(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_debuginfo**, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.batadv_priv* %8, %struct.batadv_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.net* @dev_net(%struct.net_device* %9)
  store %struct.net* %10, %struct.net** %6, align 8
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = icmp ne %struct.net* %11, @init_net
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @batadv_debugfs, align 4
  %19 = call i32* @debugfs_create_dir(i32 %17, i32 %18)
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %21 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %23 = call i32 @batadv_socket_setup(%struct.batadv_priv* %22)
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %25 = call i64 @batadv_debug_log_setup(%struct.batadv_priv* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %61

28:                                               ; preds = %14
  %29 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** @batadv_mesh_debuginfos, align 8
  store %struct.batadv_debuginfo** %29, %struct.batadv_debuginfo*** %5, align 8
  br label %30

30:                                               ; preds = %55, %28
  %31 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %5, align 8
  %32 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %31, align 8
  %33 = icmp ne %struct.batadv_debuginfo* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %5, align 8
  %36 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %35, align 8
  %37 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @S_IFREG, align 4
  %41 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %5, align 8
  %42 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %41, align 8
  %43 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %48 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %5, align 8
  %52 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %51, align 8
  %53 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %52, i32 0, i32 0
  %54 = call i32 @debugfs_create_file(i32 %39, i32 %46, i32* %49, %struct.net_device* %50, i32* %53)
  br label %55

55:                                               ; preds = %34
  %56 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %5, align 8
  %57 = getelementptr inbounds %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %56, i32 1
  store %struct.batadv_debuginfo** %57, %struct.batadv_debuginfo*** %5, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %60 = call i32 @batadv_nc_init_debugfs(%struct.batadv_priv* %59)
  store i32 0, i32* %2, align 4
  br label %70

61:                                               ; preds = %27
  %62 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %63 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @debugfs_remove_recursive(i32* %64)
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %67 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %61, %58, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @batadv_socket_setup(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_debug_log_setup(%struct.batadv_priv*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32*, %struct.net_device*, i32*) #1

declare dso_local i32 @batadv_nc_init_debugfs(%struct.batadv_priv*) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
