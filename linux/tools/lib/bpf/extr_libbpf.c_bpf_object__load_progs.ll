; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__load_progs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__load_progs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32)* @bpf_object__load_progs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__load_progs(%struct.bpf_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %21 = call i64 @bpf_program__is_function_storage(%struct.TYPE_3__* %19, %struct.bpf_object* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %51

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bpf_program__load(%struct.TYPE_3__* %38, i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %8

54:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @bpf_program__is_function_storage(%struct.TYPE_3__*, %struct.bpf_object*) #1

declare dso_local i32 @bpf_program__load(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
