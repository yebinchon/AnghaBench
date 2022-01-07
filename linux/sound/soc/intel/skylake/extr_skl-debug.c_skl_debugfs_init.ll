; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_debug = type { i8*, i8*, i32*, %struct.skl_dev* }
%struct.skl_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dsp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fw_soft_regs_rd\00", align 1
@soft_regs_ctrl_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.skl_debug* @skl_debugfs_init(%struct.skl_dev* %0) #0 {
  %2 = alloca %struct.skl_debug*, align 8
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.skl_debug*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %5 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %6 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.skl_debug* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.skl_debug* %10, %struct.skl_debug** %4, align 8
  %11 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %12 = icmp ne %struct.skl_debug* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.skl_debug* null, %struct.skl_debug** %2, align 8
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %16 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %22 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %24 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %25 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %24, i32 0, i32 3
  store %struct.skl_dev* %23, %struct.skl_dev** %25, align 8
  %26 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %27 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %31 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %33 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %37 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %39 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %42 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 292, i8* %40, %struct.skl_debug* %41, i32* @soft_regs_ctrl_fops)
  %43 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  store %struct.skl_debug* %43, %struct.skl_debug** %2, align 8
  br label %44

44:                                               ; preds = %14, %13
  %45 = load %struct.skl_debug*, %struct.skl_debug** %2, align 8
  ret %struct.skl_debug* %45
}

declare dso_local %struct.skl_debug* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i8*, %struct.skl_debug*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
