; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_caps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@bpf_object__probe_name = common dso_local global i32 0, align 4
@bpf_object__probe_global_data = common dso_local global i32 0, align 4
@bpf_object__probe_btf_func = common dso_local global i32 0, align 4
@bpf_object__probe_btf_datasec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Probe #%d failed with %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__probe_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__probe_caps(%struct.bpf_object* %0) #0 {
  %2 = alloca %struct.bpf_object*, align 8
  %3 = alloca [4 x i32 (%struct.bpf_object*)*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %2, align 8
  %6 = getelementptr inbounds [4 x i32 (%struct.bpf_object*)*], [4 x i32 (%struct.bpf_object*)*]* %3, i64 0, i64 0
  %7 = load i32, i32* @bpf_object__probe_name, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32 (%struct.bpf_object*)*
  store i32 (%struct.bpf_object*)* %9, i32 (%struct.bpf_object*)** %6, align 8
  %10 = getelementptr inbounds i32 (%struct.bpf_object*)*, i32 (%struct.bpf_object*)** %6, i64 1
  %11 = load i32, i32* @bpf_object__probe_global_data, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32 (%struct.bpf_object*)*
  store i32 (%struct.bpf_object*)* %13, i32 (%struct.bpf_object*)** %10, align 8
  %14 = getelementptr inbounds i32 (%struct.bpf_object*)*, i32 (%struct.bpf_object*)** %10, i64 1
  %15 = load i32, i32* @bpf_object__probe_btf_func, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32 (%struct.bpf_object*)*
  store i32 (%struct.bpf_object*)* %17, i32 (%struct.bpf_object*)** %14, align 8
  %18 = getelementptr inbounds i32 (%struct.bpf_object*)*, i32 (%struct.bpf_object*)** %14, i64 1
  %19 = load i32, i32* @bpf_object__probe_btf_datasec, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32 (%struct.bpf_object*)*
  store i32 (%struct.bpf_object*)* %21, i32 (%struct.bpf_object*)** %18, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %42, %1
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [4 x i32 (%struct.bpf_object*)*], [4 x i32 (%struct.bpf_object*)*]* %3, i64 0, i64 0
  %25 = bitcast i32 (%struct.bpf_object*)** %24 to i32 (%struct.bpf_object*)*
  %26 = call i32 @ARRAY_SIZE(i32 (%struct.bpf_object*)* %25)
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32 (%struct.bpf_object*)*], [4 x i32 (%struct.bpf_object*)*]* %3, i64 0, i64 %30
  %32 = load i32 (%struct.bpf_object*)*, i32 (%struct.bpf_object*)** %31, align 8
  %33 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %34 = call i32 %32(%struct.bpf_object* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %22

45:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32 (%struct.bpf_object*)*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
