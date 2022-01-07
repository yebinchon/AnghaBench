; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlpm_node = type { i64, i32, %struct.tlpm_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tlpm_node* (%struct.tlpm_node*, i32*, i64)* @tlpm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tlpm_node* @tlpm_add(%struct.tlpm_node* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tlpm_node*, align 8
  %5 = alloca %struct.tlpm_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tlpm_node*, align 8
  %9 = alloca i64, align 8
  store %struct.tlpm_node* %0, %struct.tlpm_node** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 7
  %12 = udiv i64 %11, 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.tlpm_node* @tlpm_match(%struct.tlpm_node* %13, i32* %14, i64 %15)
  store %struct.tlpm_node* %16, %struct.tlpm_node** %8, align 8
  %17 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %18 = icmp ne %struct.tlpm_node* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %21 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %27 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @memcpy(i32 %28, i32* %29, i64 %30)
  %32 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  store %struct.tlpm_node* %32, %struct.tlpm_node** %4, align 8
  br label %53

33:                                               ; preds = %19, %3
  %34 = load i64, i64* %9, align 8
  %35 = add i64 24, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.tlpm_node* @malloc(i32 %36)
  store %struct.tlpm_node* %37, %struct.tlpm_node** %8, align 8
  %38 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %39 = call i32 @assert(%struct.tlpm_node* %38)
  %40 = load %struct.tlpm_node*, %struct.tlpm_node** %5, align 8
  %41 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %42 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %41, i32 0, i32 2
  store %struct.tlpm_node* %40, %struct.tlpm_node** %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %45 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  %47 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @memcpy(i32 %48, i32* %49, i64 %50)
  %52 = load %struct.tlpm_node*, %struct.tlpm_node** %8, align 8
  store %struct.tlpm_node* %52, %struct.tlpm_node** %4, align 8
  br label %53

53:                                               ; preds = %33, %25
  %54 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  ret %struct.tlpm_node* %54
}

declare dso_local %struct.tlpm_node* @tlpm_match(%struct.tlpm_node*, i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local %struct.tlpm_node* @malloc(i32) #1

declare dso_local i32 @assert(%struct.tlpm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
