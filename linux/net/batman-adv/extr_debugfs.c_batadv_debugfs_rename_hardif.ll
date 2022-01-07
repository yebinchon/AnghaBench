; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_rename_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_rename_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_debugfs_rename_hardif(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %5 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %11 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @debugfs_rename(i32 %19, %struct.dentry* %20, i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @debugfs_rename(i32, %struct.dentry*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
