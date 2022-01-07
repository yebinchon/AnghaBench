; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c_bpf_mt_check_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c_bpf_mt_check_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_bpf_info_v1* }
%struct.xt_bpf_info_v1 = type { i64, i32, i32, i32, i32, i32 }

@XT_BPF_MODE_BYTECODE = common dso_local global i64 0, align 8
@XT_BPF_MODE_FD_ELF = common dso_local global i64 0, align 8
@XT_BPF_MODE_PATH_PINNED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @bpf_mt_check_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_mt_check_v1(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_bpf_info_v1*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %6, align 8
  store %struct.xt_bpf_info_v1* %7, %struct.xt_bpf_info_v1** %4, align 8
  %8 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %9 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XT_BPF_MODE_BYTECODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %15 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %18 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %21 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %20, i32 0, i32 1
  %22 = call i32 @__bpf_mt_check_bytecode(i32 %16, i32 %19, i32* %21)
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %25 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XT_BPF_MODE_FD_ELF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %31 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %34 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %33, i32 0, i32 1
  %35 = call i32 @__bpf_mt_check_fd(i32 %32, i32* %34)
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %23
  %37 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %38 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XT_BPF_MODE_PATH_PINNED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %44 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xt_bpf_info_v1*, %struct.xt_bpf_info_v1** %4, align 8
  %47 = getelementptr inbounds %struct.xt_bpf_info_v1, %struct.xt_bpf_info_v1* %46, i32 0, i32 1
  %48 = call i32 @__bpf_mt_check_path(i32 %45, i32* %47)
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %42, %29, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @__bpf_mt_check_bytecode(i32, i32, i32*) #1

declare dso_local i32 @__bpf_mt_check_fd(i32, i32*) #1

declare dso_local i32 @__bpf_mt_check_path(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
