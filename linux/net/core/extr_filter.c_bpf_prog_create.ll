; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_prog_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_prog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32*, i32, i32 }
%struct.sock_fprog_kern = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_create(%struct.bpf_prog** %0, %struct.sock_fprog_kern* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog**, align 8
  %5 = alloca %struct.sock_fprog_kern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_prog** %0, %struct.bpf_prog*** %4, align 8
  store %struct.sock_fprog_kern* %1, %struct.sock_fprog_kern** %5, align 8
  %8 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %9 = call i32 @bpf_classic_proglen(%struct.sock_fprog_kern* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %11 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %14 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bpf_check_basics_ok(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %23 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bpf_prog_size(i32 %24)
  %26 = call %struct.bpf_prog* @bpf_prog_alloc(i32 %25, i32 0)
  store %struct.bpf_prog* %26, %struct.bpf_prog** %7, align 8
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %28 = icmp ne %struct.bpf_prog* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %34 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %37 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  %42 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %45 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %47 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %49 = call %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog* %48, i32* null)
  store %struct.bpf_prog* %49, %struct.bpf_prog** %7, align 8
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %51 = call i64 @IS_ERR(%struct.bpf_prog* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.bpf_prog* %54)
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %32
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %58 = load %struct.bpf_prog**, %struct.bpf_prog*** %4, align 8
  store %struct.bpf_prog* %57, %struct.bpf_prog** %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53, %29, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @bpf_classic_proglen(%struct.sock_fprog_kern*) #1

declare dso_local i32 @bpf_check_basics_ok(i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_alloc(i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
