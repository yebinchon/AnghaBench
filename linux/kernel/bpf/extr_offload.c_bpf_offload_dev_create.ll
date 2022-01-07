; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offload_dev = type { i32, i8*, %struct.bpf_prog_offload_ops* }
%struct.bpf_prog_offload_ops = type { i32 }

@bpf_devs_lock = common dso_local global i32 0, align 4
@offdevs_inited = common dso_local global i32 0, align 4
@offdevs = common dso_local global i32 0, align 4
@offdevs_params = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_offload_dev* @bpf_offload_dev_create(%struct.bpf_prog_offload_ops* %0, i8* %1) #0 {
  %3 = alloca %struct.bpf_offload_dev*, align 8
  %4 = alloca %struct.bpf_prog_offload_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_offload_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_prog_offload_ops* %0, %struct.bpf_prog_offload_ops** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @down_write(i32* @bpf_devs_lock)
  %9 = load i32, i32* @offdevs_inited, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = call i32 @rhashtable_init(i32* @offdevs, i32* @offdevs_params)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.bpf_offload_dev* @ERR_PTR(i32 %16)
  store %struct.bpf_offload_dev* %17, %struct.bpf_offload_dev** %3, align 8
  br label %40

18:                                               ; preds = %11
  store i32 1, i32* @offdevs_inited, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = call i32 @up_write(i32* @bpf_devs_lock)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.bpf_offload_dev* @kzalloc(i32 24, i32 %21)
  store %struct.bpf_offload_dev* %22, %struct.bpf_offload_dev** %6, align 8
  %23 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %6, align 8
  %24 = icmp ne %struct.bpf_offload_dev* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.bpf_offload_dev* @ERR_PTR(i32 %27)
  store %struct.bpf_offload_dev* %28, %struct.bpf_offload_dev** %3, align 8
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.bpf_prog_offload_ops*, %struct.bpf_prog_offload_ops** %4, align 8
  %31 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_offload_dev, %struct.bpf_offload_dev* %31, i32 0, i32 2
  store %struct.bpf_prog_offload_ops* %30, %struct.bpf_prog_offload_ops** %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %6, align 8
  %35 = getelementptr inbounds %struct.bpf_offload_dev, %struct.bpf_offload_dev* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_offload_dev, %struct.bpf_offload_dev* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %6, align 8
  store %struct.bpf_offload_dev* %39, %struct.bpf_offload_dev** %3, align 8
  br label %40

40:                                               ; preds = %29, %25, %15
  %41 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %3, align 8
  ret %struct.bpf_offload_dev* %41
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local %struct.bpf_offload_dev* @ERR_PTR(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.bpf_offload_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
