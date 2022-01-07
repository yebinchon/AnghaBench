; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_prog_create_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_prog_create_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32*, i32, i32 }
%struct.sock_fprog = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_create_from_user(%struct.bpf_prog** %0, %struct.sock_fprog* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog**, align 8
  %7 = alloca %struct.sock_fprog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_prog*, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_prog** %0, %struct.bpf_prog*** %6, align 8
  store %struct.sock_fprog* %1, %struct.sock_fprog** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %14 = call i32 @bpf_classic_proglen(%struct.sock_fprog* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %16 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %19 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bpf_check_basics_ok(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %87

26:                                               ; preds = %4
  %27 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %28 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bpf_prog_size(i32 %29)
  %31 = call %struct.bpf_prog* @bpf_prog_alloc(i32 %30, i32 0)
  store %struct.bpf_prog* %31, %struct.bpf_prog** %11, align 8
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %33 = icmp ne %struct.bpf_prog* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %26
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %39 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %42 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @copy_from_user(i32 %40, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %49 = call i32 @__bpf_prog_free(%struct.bpf_prog* %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %87

52:                                               ; preds = %37
  %53 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %54 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %57 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %64 = load %struct.sock_fprog*, %struct.sock_fprog** %7, align 8
  %65 = call i32 @bpf_prog_store_orig_filter(%struct.bpf_prog* %63, %struct.sock_fprog* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %70 = call i32 @__bpf_prog_free(%struct.bpf_prog* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %87

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog* %75, i32 %76)
  store %struct.bpf_prog* %77, %struct.bpf_prog** %11, align 8
  %78 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %79 = call i64 @IS_ERR(%struct.bpf_prog* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %83 = call i32 @PTR_ERR(%struct.bpf_prog* %82)
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %74
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %86 = load %struct.bpf_prog**, %struct.bpf_prog*** %6, align 8
  store %struct.bpf_prog* %85, %struct.bpf_prog** %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %81, %68, %47, %34, %23
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @bpf_classic_proglen(%struct.sock_fprog*) #1

declare dso_local i32 @bpf_check_basics_ok(i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_alloc(i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @__bpf_prog_free(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_store_orig_filter(%struct.bpf_prog*, %struct.sock_fprog*) #1

declare dso_local %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
