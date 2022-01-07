; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_add_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_add_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.batadv_debuginfo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@batadv_debugfs = common dso_local global i32 0, align 4
@batadv_hardif_debuginfos = common dso_local global %struct.batadv_debuginfo** null, align 8
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_debugfs_add_hardif(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.batadv_debuginfo**, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %5 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call %struct.net* @dev_net(%struct.TYPE_5__* %7)
  store %struct.net* %8, %struct.net** %3, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = icmp ne %struct.net* %9, @init_net
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @batadv_debugfs, align 4
  %19 = call i32 @debugfs_create_dir(i32 %17, i32 %18)
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %21 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** @batadv_hardif_debuginfos, align 8
  store %struct.batadv_debuginfo** %22, %struct.batadv_debuginfo*** %4, align 8
  br label %23

23:                                               ; preds = %50, %12
  %24 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %4, align 8
  %25 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %24, align 8
  %26 = icmp ne %struct.batadv_debuginfo* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %4, align 8
  %29 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %28, align 8
  %30 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %4, align 8
  %35 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %34, align 8
  %36 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %33, %38
  %40 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %41 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %44 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %4, align 8
  %47 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %46, align 8
  %48 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %47, i32 0, i32 0
  %49 = call i32 @debugfs_create_file(i32 %32, i32 %39, i32 %42, %struct.TYPE_5__* %45, i32* %48)
  br label %50

50:                                               ; preds = %27
  %51 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %4, align 8
  %52 = getelementptr inbounds %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %51, i32 1
  store %struct.batadv_debuginfo** %52, %struct.batadv_debuginfo*** %4, align 8
  br label %23

53:                                               ; preds = %11, %23
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_5__*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
