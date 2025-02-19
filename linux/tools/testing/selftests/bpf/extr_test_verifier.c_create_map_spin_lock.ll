; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_create_map_spin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_create_map_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_create_map_attr = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"test_map\00", align 1
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create map with spin_lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_map_spin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_map_spin_lock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bpf_create_map_attr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 1
  store i32 4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 2
  store i32 8, i32* %7, align 4
  %8 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 3
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 4
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 5
  store i32 3, i32* %10, align 8
  %11 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 6
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 7
  %13 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  store i32 %13, i32* %12, align 8
  %14 = call i32 (...) @load_btf()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %28

18:                                               ; preds = %0
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %2, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %2)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @load_btf(...) #1

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
