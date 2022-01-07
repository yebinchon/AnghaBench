; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_802154_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_802154_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lowpan_dev = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LOWPAN_LLTYPE_IEEE802154 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ieee802154\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"short_addr\00", align 1
@lowpan_short_addr_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.lowpan_dev*)* @lowpan_dev_debugfs_802154_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowpan_dev_debugfs_802154_init(%struct.net_device* %0, %struct.lowpan_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lowpan_dev*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.lowpan_dev* %1, %struct.lowpan_dev** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = load i32, i32* @LOWPAN_LLTYPE_IEEE802154, align 4
  %8 = call i32 @lowpan_is_ll(%struct.net_device* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.lowpan_dev*, %struct.lowpan_dev** %4, align 8
  %13 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %16, i32 %22, i32* @lowpan_short_addr_fops)
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @lowpan_is_ll(%struct.net_device*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
