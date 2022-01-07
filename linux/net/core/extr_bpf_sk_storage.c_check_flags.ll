; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_check_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_check_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_data = type { i32 }

@BPF_F_LOCK = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@BPF_EXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_sk_storage_data*, i32)* @check_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_flags(%struct.bpf_sk_storage_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_sk_storage_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_sk_storage_data* %0, %struct.bpf_sk_storage_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %4, align 8
  %7 = icmp ne %struct.bpf_sk_storage_data* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BPF_F_LOCK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @BPF_NOEXIST, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %8, %2
  %19 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %4, align 8
  %20 = icmp ne %struct.bpf_sk_storage_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BPF_F_LOCK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @BPF_EXIST, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
