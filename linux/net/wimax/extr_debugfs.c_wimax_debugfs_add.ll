; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_debugfs.c_wimax_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_debugfs.c_wimax_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { %struct.dentry*, %struct.net_device* }
%struct.dentry = type { i32 }
%struct.net_device = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"wimax:%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wimax_dl_\00", align 1
@debugfs = common dso_local global i32 0, align 4
@id_table = common dso_local global i32 0, align 4
@op_msg = common dso_local global i32 0, align 4
@op_reset = common dso_local global i32 0, align 4
@op_rfkill = common dso_local global i32 0, align 4
@op_state_get = common dso_local global i32 0, align 4
@stack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wimax_debugfs_add(%struct.wimax_dev* %0) #0 {
  %2 = alloca %struct.wimax_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [128 x i8], align 16
  store %struct.wimax_dev* %0, %struct.wimax_dev** %2, align 8
  %6 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %7 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @snprintf(i8* %9, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %15 = call %struct.dentry* @debugfs_create_dir(i8* %14, i32* null)
  store %struct.dentry* %15, %struct.dentry** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %18 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %17, i32 0, i32 0
  store %struct.dentry* %16, %struct.dentry** %18, align 8
  %19 = load i32, i32* @debugfs, align 4
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19, %struct.dentry* %20)
  %22 = load i32, i32* @id_table, align 4
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.dentry* %23)
  %25 = load i32, i32* @op_msg, align 4
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.dentry* %26)
  %28 = load i32, i32* @op_reset, align 4
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.dentry* %29)
  %31 = load i32, i32* @op_rfkill, align 4
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.dentry* %32)
  %34 = load i32, i32* @op_state_get, align 4
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %34, %struct.dentry* %35)
  %37 = load i32, i32* @stack, align 4
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.dentry* %38)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @d_level_register_debugfs(i8*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
