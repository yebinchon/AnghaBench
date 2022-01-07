; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_dev_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.lowpan_dev = type { i32, i8* }
%struct.dentry = type { i32 }

@lowpan_debugfs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"contexts\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@lowpan_context_fops = common dso_local global i32 0, align 4
@LOWPAN_IPHC_CTX_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lowpan_dev_debugfs_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lowpan_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.lowpan_dev* @lowpan_dev(%struct.net_device* %6)
  store %struct.lowpan_dev* %7, %struct.lowpan_dev** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** @lowpan_debugfs, align 8
  %12 = call i8* @debugfs_create_dir(i8* %10, i8* %11)
  %13 = load %struct.lowpan_dev*, %struct.lowpan_dev** %3, align 8
  %14 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.lowpan_dev*, %struct.lowpan_dev** %3, align 8
  %16 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = bitcast i8* %18 to %struct.dentry*
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call %struct.lowpan_dev* @lowpan_dev(%struct.net_device* %21)
  %23 = getelementptr inbounds %struct.lowpan_dev, %struct.lowpan_dev* %22, i32 0, i32 0
  %24 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 420, %struct.dentry* %20, i32* %23, i32* @lowpan_context_fops)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %34, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LOWPAN_IPHC_CTX_TABLE_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @lowpan_dev_debugfs_ctx_init(%struct.net_device* %30, %struct.dentry* %31, i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load %struct.lowpan_dev*, %struct.lowpan_dev** %3, align 8
  %40 = call i32 @lowpan_dev_debugfs_802154_init(%struct.net_device* %38, %struct.lowpan_dev* %39)
  ret void
}

declare dso_local %struct.lowpan_dev* @lowpan_dev(%struct.net_device*) #1

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

declare dso_local i32 @lowpan_dev_debugfs_ctx_init(%struct.net_device*, %struct.dentry*, i32) #1

declare dso_local i32 @lowpan_dev_debugfs_802154_init(%struct.net_device*, %struct.lowpan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
