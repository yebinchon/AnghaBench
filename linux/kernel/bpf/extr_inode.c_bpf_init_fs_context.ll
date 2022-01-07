; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.bpf_mount_opts* }
%struct.bpf_mount_opts = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@bpf_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @bpf_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.bpf_mount_opts*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.bpf_mount_opts* @kzalloc(i32 4, i32 %5)
  store %struct.bpf_mount_opts* %6, %struct.bpf_mount_opts** %4, align 8
  %7 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %4, align 8
  %8 = icmp ne %struct.bpf_mount_opts* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @S_IRWXUGO, align 4
  %14 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_mount_opts, %struct.bpf_mount_opts* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %4, align 8
  %17 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %18 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %17, i32 0, i32 1
  store %struct.bpf_mount_opts* %16, %struct.bpf_mount_opts** %18, align 8
  %19 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %19, i32 0, i32 0
  store i32* @bpf_context_ops, i32** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.bpf_mount_opts* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
