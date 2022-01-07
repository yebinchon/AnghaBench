; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_bpf_prog_detach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_bpf_prog_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_prog = type opaque
%struct.cgroup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_bpf_prog_detach(%union.bpf_attr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.bpf_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.cgroup*, align 8
  %8 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %10 = bitcast %union.bpf_attr* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cgroup* @cgroup_get_from_fd(i32 %11)
  store %struct.cgroup* %12, %struct.cgroup** %7, align 8
  %13 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %14 = call i64 @IS_ERR(%struct.cgroup* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.cgroup* %17)
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.cgroup* @bpf_prog_get_type(i32 %22, i32 %23)
  %25 = bitcast %struct.cgroup* %24 to %struct.bpf_prog*
  store %struct.bpf_prog* %25, %struct.bpf_prog** %6, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %27 = bitcast %struct.bpf_prog* %26 to %struct.cgroup*
  %28 = call i64 @IS_ERR(%struct.cgroup* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store %struct.bpf_prog* null, %struct.bpf_prog** %6, align 8
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %34 = bitcast %struct.bpf_prog* %33 to %struct.cgroup*
  %35 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %36 = bitcast %union.bpf_attr* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cgroup_bpf_detach(%struct.cgroup* %32, %struct.cgroup* %34, i32 %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %40 = icmp ne %struct.bpf_prog* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %43 = bitcast %struct.bpf_prog* %42 to %struct.cgroup*
  %44 = call i32 @bpf_prog_put(%struct.cgroup* %43)
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %47 = call i32 @cgroup_put(%struct.cgroup* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cgroup* @cgroup_get_from_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.cgroup*) #1

declare dso_local i32 @PTR_ERR(%struct.cgroup*) #1

declare dso_local %struct.cgroup* @bpf_prog_get_type(i32, i32) #1

declare dso_local i32 @cgroup_bpf_detach(%struct.cgroup*, %struct.cgroup*, i32, i32) #1

declare dso_local i32 @bpf_prog_put(%struct.cgroup*) #1

declare dso_local i32 @cgroup_put(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
