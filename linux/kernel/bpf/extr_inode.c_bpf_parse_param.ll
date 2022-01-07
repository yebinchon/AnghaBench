; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.bpf_mount_opts* }
%struct.bpf_mount_opts = type { i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32 }

@bpf_fs_parameters = common dso_local global i32 0, align 4
@ENOPARAM = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @bpf_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.bpf_mount_opts*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %10, align 8
  store %struct.bpf_mount_opts* %11, %struct.bpf_mount_opts** %6, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %14 = call i32 @fs_parse(%struct.fs_context* %12, i32* @bpf_fs_parameters, %struct.fs_parameter* %13, %struct.fs_parse_result* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ENOPARAM, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %36 [
    i32 128, label %29
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @S_IALLUGO, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %6, align 8
  %35 = getelementptr inbounds %struct.bpf_mount_opts, %struct.bpf_mount_opts* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %29
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
