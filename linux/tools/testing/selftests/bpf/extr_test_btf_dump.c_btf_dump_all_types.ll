; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf_dump.c_btf_dump_all_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf_dump.c_btf_dump_all_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_dump_opts = type { i32 }
%struct.btf_dump = type { i32 }

@btf_dump_printf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, %struct.btf_dump_opts*)* @btf_dump_all_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_all_types(%struct.btf* %0, %struct.btf_dump_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca %struct.btf_dump_opts*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btf_dump*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store %struct.btf_dump_opts* %1, %struct.btf_dump_opts** %5, align 8
  %10 = load %struct.btf*, %struct.btf** %4, align 8
  %11 = call i64 @btf__get_nr_types(%struct.btf* %10)
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.btf*, %struct.btf** %4, align 8
  %13 = load %struct.btf_dump_opts*, %struct.btf_dump_opts** %5, align 8
  %14 = load i32, i32* @btf_dump_printf, align 4
  %15 = call %struct.btf_dump* @btf_dump__new(%struct.btf* %12, i32* null, %struct.btf_dump_opts* %13, i32 %14)
  store %struct.btf_dump* %15, %struct.btf_dump** %7, align 8
  %16 = load %struct.btf_dump*, %struct.btf_dump** %7, align 8
  %17 = call i64 @IS_ERR(%struct.btf_dump* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.btf_dump*, %struct.btf_dump** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.btf_dump* %20)
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.btf_dump*, %struct.btf_dump** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @btf_dump__dump_type(%struct.btf_dump* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %40

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %23

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.btf_dump*, %struct.btf_dump** %7, align 8
  %42 = call i32 @btf_dump__free(%struct.btf_dump* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @btf__get_nr_types(%struct.btf*) #1

declare dso_local %struct.btf_dump* @btf_dump__new(%struct.btf*, i32*, %struct.btf_dump_opts*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btf_dump*) #1

declare dso_local i32 @PTR_ERR(%struct.btf_dump*) #1

declare dso_local i32 @btf_dump__dump_type(%struct.btf_dump*, i32) #1

declare dso_local i32 @btf_dump__free(%struct.btf_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
