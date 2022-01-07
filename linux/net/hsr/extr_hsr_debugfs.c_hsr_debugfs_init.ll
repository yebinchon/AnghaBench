; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_debugfs.c_hsr_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_debugfs.c_hsr_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { %struct.dentry*, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cannot create hsr debugfs root\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"node_table\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@hsr_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot create hsr node_table directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsr_debugfs_init(%struct.hsr_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsr_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  store %struct.hsr_priv* %0, %struct.hsr_priv** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 -1, i32* %6, align 4
  store %struct.dentry* null, %struct.dentry** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32* null)
  store %struct.dentry* %11, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %20 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %19, i32 0, i32 1
  store %struct.dentry* %18, %struct.dentry** %20, align 8
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = or i32 %21, 292
  %23 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %24 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %27 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.dentry* %25, %struct.hsr_priv* %26, i32* @hsr_fops)
  store %struct.dentry* %27, %struct.dentry** %7, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %17
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %36 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %35, i32 0, i32 0
  store %struct.dentry* %34, %struct.dentry** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %30, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.hsr_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
