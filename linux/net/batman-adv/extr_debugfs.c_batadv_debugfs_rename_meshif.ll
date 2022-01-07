; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_rename_meshif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_rename_meshif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.batadv_priv = type { %struct.dentry* }
%struct.dentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_debugfs_rename_meshif(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.batadv_priv* %7, %struct.batadv_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @debugfs_rename(i32 %20, %struct.dentry* %21, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @debugfs_rename(i32, %struct.dentry*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
