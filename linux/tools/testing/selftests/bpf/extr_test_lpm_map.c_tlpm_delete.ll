; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlpm_node = type { i64, %struct.tlpm_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tlpm_node* (%struct.tlpm_node*, i32*, i64)* @tlpm_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tlpm_node* @tlpm_delete(%struct.tlpm_node* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tlpm_node*, align 8
  %5 = alloca %struct.tlpm_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tlpm_node*, align 8
  %9 = alloca %struct.tlpm_node*, align 8
  store %struct.tlpm_node* %0, %struct.tlpm_node** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.tlpm_node* @tlpm_match(%struct.tlpm_node* %10, i32* %11, i64 %12)
  store %struct.tlpm_node* %13, %struct.tlpm_node** %8, align 8
  %14 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %15 = icmp ne %struct.tlpm_node* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %18 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %3
  %23 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  store %struct.tlpm_node* %23, %struct.tlpm_node** %4, align 8
  br label %63

24:                                               ; preds = %16
  %25 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %26 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  %27 = icmp eq %struct.tlpm_node* %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %30 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %29, i32 0, i32 1
  %31 = load %struct.tlpm_node*, %struct.tlpm_node** %30, align 8
  store %struct.tlpm_node* %31, %struct.tlpm_node** %9, align 8
  %32 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %33 = call i32 @free(%struct.tlpm_node* %32)
  %34 = load %struct.tlpm_node*, %struct.tlpm_node** %9, align 8
  store %struct.tlpm_node* %34, %struct.tlpm_node** %4, align 8
  br label %63

35:                                               ; preds = %24
  %36 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  store %struct.tlpm_node* %36, %struct.tlpm_node** %9, align 8
  br label %37

37:                                               ; preds = %56, %35
  %38 = load %struct.tlpm_node*, %struct.tlpm_node** %9, align 8
  %39 = icmp ne %struct.tlpm_node* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.tlpm_node*, %struct.tlpm_node** %9, align 8
  %42 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %41, i32 0, i32 1
  %43 = load %struct.tlpm_node*, %struct.tlpm_node** %42, align 8
  %44 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %45 = icmp eq %struct.tlpm_node* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %48 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %47, i32 0, i32 1
  %49 = load %struct.tlpm_node*, %struct.tlpm_node** %48, align 8
  %50 = load %struct.tlpm_node*, %struct.tlpm_node** %9, align 8
  %51 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %50, i32 0, i32 1
  store %struct.tlpm_node* %49, %struct.tlpm_node** %51, align 8
  %52 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %53 = call i32 @free(%struct.tlpm_node* %52)
  %54 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  store %struct.tlpm_node* %54, %struct.tlpm_node** %4, align 8
  br label %63

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.tlpm_node*, %struct.tlpm_node** %9, align 8
  %58 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %57, i32 0, i32 1
  %59 = load %struct.tlpm_node*, %struct.tlpm_node** %58, align 8
  store %struct.tlpm_node* %59, %struct.tlpm_node** %9, align 8
  br label %37

60:                                               ; preds = %37
  %61 = call i32 @assert(i32 0)
  %62 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  store %struct.tlpm_node* %62, %struct.tlpm_node** %4, align 8
  br label %63

63:                                               ; preds = %60, %46, %28, %22
  %64 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  ret %struct.tlpm_node* %64
}

declare dso_local %struct.tlpm_node* @tlpm_match(%struct.tlpm_node*, i32*, i64) #1

declare dso_local i32 @free(%struct.tlpm_node*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
