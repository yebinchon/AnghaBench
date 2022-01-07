; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_bpf_prog_attach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_bpf_prog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.cgroup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_bpf_prog_attach(%union.bpf_attr* %0, i32 %1, %struct.bpf_prog* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.bpf_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bpf_prog* %2, %struct.bpf_prog** %7, align 8
  %10 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %11 = bitcast %union.bpf_attr* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cgroup* @cgroup_get_from_fd(i32 %12)
  store %struct.cgroup* %13, %struct.cgroup** %8, align 8
  %14 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %15 = call i64 @IS_ERR(%struct.cgroup* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.cgroup* %18)
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %23 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %24 = bitcast %union.bpf_attr* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %27 = bitcast %union.bpf_attr* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cgroup_bpf_attach(%struct.cgroup* %21, %struct.bpf_prog* %22, i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %31 = call i32 @cgroup_put(%struct.cgroup* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.cgroup* @cgroup_get_from_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.cgroup*) #1

declare dso_local i32 @PTR_ERR(%struct.cgroup*) #1

declare dso_local i32 @cgroup_bpf_attach(%struct.cgroup*, %struct.bpf_prog*, i32, i32) #1

declare dso_local i32 @cgroup_put(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
