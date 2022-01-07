; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dentry = type { i32 }
%struct.lowpan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@LOWPAN_IPHC_CTX_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@lowpan_ctx_flag_active_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@lowpan_ctx_flag_c_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@lowpan_ctx_pfx_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"prefix_len\00", align 1
@lowpan_ctx_plen_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dentry*, i32)* @lowpan_dev_debugfs_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowpan_dev_debugfs_ctx_init(%struct.net_device* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lowpan_dev*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lowpan_dev* @lowpan_dev(%struct.net_device* %10)
  store %struct.lowpan_dev* %11, %struct.lowpan_dev** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @LOWPAN_IPHC_CTX_TABLE_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.dentry* @debugfs_create_dir(i8* %20, %struct.dentry* %21)
  store %struct.dentry* %22, %struct.dentry** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = load %struct.lowpan_dev*, %struct.lowpan_dev** %7, align 8
  %25 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 420, %struct.dentry* %23, i32* %30, i32* @lowpan_ctx_flag_active_fops)
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = load %struct.lowpan_dev*, %struct.lowpan_dev** %7, align 8
  %34 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.dentry* %32, i32* %39, i32* @lowpan_ctx_flag_c_fops)
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = load %struct.lowpan_dev*, %struct.lowpan_dev** %7, align 8
  %43 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.dentry* %41, i32* %48, i32* @lowpan_ctx_pfx_fops)
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = load %struct.lowpan_dev*, %struct.lowpan_dev** %7, align 8
  %52 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 420, %struct.dentry* %50, i32* %57, i32* @lowpan_ctx_plen_fops)
  ret void
}

declare dso_local %struct.lowpan_dev* @lowpan_dev(%struct.net_device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
