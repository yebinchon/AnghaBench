; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_inherit.c_get_storage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_inherit.c_get_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt_inherit = type { i32 }
%struct.bpf_sockopt = type { i64, i32 }

@CUSTOM_INHERIT1 = common dso_local global i64 0, align 8
@cloned1_map = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4
@CUSTOM_INHERIT2 = common dso_local global i64 0, align 8
@cloned2_map = common dso_local global i32 0, align 4
@listener_only_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockopt_inherit* (%struct.bpf_sockopt*)* @get_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockopt_inherit* @get_storage(%struct.bpf_sockopt* %0) #0 {
  %2 = alloca %struct.sockopt_inherit*, align 8
  %3 = alloca %struct.bpf_sockopt*, align 8
  store %struct.bpf_sockopt* %0, %struct.bpf_sockopt** %3, align 8
  %4 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CUSTOM_INHERIT1, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %14 = call %struct.sockopt_inherit* @bpf_sk_storage_get(i32* @cloned1_map, i32 %12, i32 0, i32 %13)
  store %struct.sockopt_inherit* %14, %struct.sockopt_inherit** %2, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CUSTOM_INHERIT2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %26 = call %struct.sockopt_inherit* @bpf_sk_storage_get(i32* @cloned2_map, i32 %24, i32 0, i32 %25)
  store %struct.sockopt_inherit* %26, %struct.sockopt_inherit** %2, align 8
  br label %33

27:                                               ; preds = %15
  %28 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %32 = call %struct.sockopt_inherit* @bpf_sk_storage_get(i32* @listener_only_map, i32 %30, i32 0, i32 %31)
  store %struct.sockopt_inherit* %32, %struct.sockopt_inherit** %2, align 8
  br label %33

33:                                               ; preds = %27, %21, %9
  %34 = load %struct.sockopt_inherit*, %struct.sockopt_inherit** %2, align 8
  ret %struct.sockopt_inherit* %34
}

declare dso_local %struct.sockopt_inherit* @bpf_sk_storage_get(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
