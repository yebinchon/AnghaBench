; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_io_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_io_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_2__, %struct.fuse_io_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fuse_io_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_io_args* (%struct.fuse_io_priv*, i32)* @fuse_io_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_io_args* @fuse_io_alloc(%struct.fuse_io_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_io_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_io_args*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.fuse_io_args* @kzalloc(i32 16, i32 %6)
  store %struct.fuse_io_args* %7, %struct.fuse_io_args** %5, align 8
  %8 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %9 = icmp ne %struct.fuse_io_args* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %12 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %13 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %12, i32 0, i32 1
  store %struct.fuse_io_priv* %11, %struct.fuse_io_priv** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @fuse_pages_alloc(i32 %14, i32 %15, i32* %18)
  %20 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %21 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %10
  %29 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %30 = call i32 @kfree(%struct.fuse_io_args* %29)
  store %struct.fuse_io_args* null, %struct.fuse_io_args** %5, align 8
  br label %31

31:                                               ; preds = %28, %10
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  ret %struct.fuse_io_args* %33
}

declare dso_local %struct.fuse_io_args* @kzalloc(i32, i32) #1

declare dso_local i32 @fuse_pages_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.fuse_io_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
