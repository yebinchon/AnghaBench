; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_new_fd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_new_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.btf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf_new_fd(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %6 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %7 = bitcast %union.bpf_attr* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @u64_to_user_ptr(i32 %8)
  %10 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %11 = bitcast %union.bpf_attr* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %14 = bitcast %union.bpf_attr* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %17 = bitcast %union.bpf_attr* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @u64_to_user_ptr(i32 %18)
  %20 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.btf* @btf_parse(i32 %9, i32 %12, i32 %15, i32 %19, i32 %22)
  store %struct.btf* %23, %struct.btf** %4, align 8
  %24 = load %struct.btf*, %struct.btf** %4, align 8
  %25 = call i64 @IS_ERR(%struct.btf* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.btf*, %struct.btf** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.btf* %28)
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.btf*, %struct.btf** %4, align 8
  %32 = call i32 @btf_alloc_id(%struct.btf* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.btf*, %struct.btf** %4, align 8
  %37 = call i32 @btf_free(%struct.btf* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.btf*, %struct.btf** %4, align 8
  %41 = call i32 @__btf_new_fd(%struct.btf* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.btf*, %struct.btf** %4, align 8
  %46 = call i32 @btf_put(%struct.btf* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %35, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.btf* @btf_parse(i32, i32, i32, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i64 @IS_ERR(%struct.btf*) #1

declare dso_local i32 @PTR_ERR(%struct.btf*) #1

declare dso_local i32 @btf_alloc_id(%struct.btf*) #1

declare dso_local i32 @btf_free(%struct.btf*) #1

declare dso_local i32 @__btf_new_fd(%struct.btf*) #1

declare dso_local i32 @btf_put(%struct.btf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
