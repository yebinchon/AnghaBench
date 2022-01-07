; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c___bpf_prog_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c___bpf_prog_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.fd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (i32, i32*, i32)* @__bpf_prog_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @__bpf_prog_get(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd, align 4
  %9 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fdget(i32 %10)
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bpf_prog* @____bpf_prog_get(i32 %14)
  store %struct.bpf_prog* %15, %struct.bpf_prog** %9, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %17 = call i64 @IS_ERR(%struct.bpf_prog* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %20, %struct.bpf_prog** %4, align 8
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @bpf_prog_get_ok(%struct.bpf_prog* %22, i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.bpf_prog* @ERR_PTR(i32 %29)
  store %struct.bpf_prog* %30, %struct.bpf_prog** %9, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %33 = call %struct.bpf_prog* @bpf_prog_inc(%struct.bpf_prog* %32)
  store %struct.bpf_prog* %33, %struct.bpf_prog** %9, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fdput(i32 %36)
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %38, %struct.bpf_prog** %4, align 8
  br label %39

39:                                               ; preds = %34, %19
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  ret %struct.bpf_prog* %40
}

declare dso_local i32 @fdget(i32) #1

declare dso_local %struct.bpf_prog* @____bpf_prog_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_get_ok(%struct.bpf_prog*, i32*, i32) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_inc(%struct.bpf_prog*) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
