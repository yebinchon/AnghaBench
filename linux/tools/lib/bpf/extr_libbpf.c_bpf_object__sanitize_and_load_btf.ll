; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__sanitize_and_load_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__sanitize_and_load_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Error loading %s into kernel: %d.\0A\00", align 1
@BTF_ELF_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__sanitize_and_load_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__sanitize_and_load_btf(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %12 = call i32 @bpf_object__sanitize_btf(%struct.bpf_object* %11)
  %13 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %14 = call i32 @bpf_object__sanitize_btf_ext(%struct.bpf_object* %13)
  %15 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @btf__load(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %10
  %22 = load i32, i32* @BTF_ELF_SEC, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @btf__free(i32* %27)
  %29 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %37 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @btf_ext__free(i32* %38)
  %40 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %44 = call i64 @bpf_object__is_btf_mandatory(%struct.bpf_object* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %10
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @bpf_object__sanitize_btf(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__sanitize_btf_ext(%struct.bpf_object*) #1

declare dso_local i32 @btf__load(i32*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

declare dso_local i32 @btf__free(i32*) #1

declare dso_local i32 @btf_ext__free(i32*) #1

declare dso_local i64 @bpf_object__is_btf_mandatory(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
