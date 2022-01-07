; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_resolve_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_resolve_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i64*, %struct.btf* }
%struct.btf = type { i64*, i64*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*)* @env_resolve_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_resolve_init(%struct.btf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  %9 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %10 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %9, i32 0, i32 1
  %11 = load %struct.btf*, %struct.btf** %10, align 8
  store %struct.btf* %11, %struct.btf** %4, align 8
  %12 = load %struct.btf*, %struct.btf** %4, align 8
  %13 = getelementptr inbounds %struct.btf, %struct.btf* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store i64* null, i64** %6, align 8
  store i64* null, i64** %7, align 8
  store i64* null, i64** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_NOWARN, align 4
  %19 = or i32 %17, %18
  %20 = call i64* @kvcalloc(i64 %16, i32 8, i32 %19)
  store i64* %20, i64** %6, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %54

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* @__GFP_NOWARN, align 4
  %29 = or i32 %27, %28
  %30 = call i64* @kvcalloc(i64 %26, i32 8, i32 %29)
  store i64* %30, i64** %7, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %54

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @__GFP_NOWARN, align 4
  %39 = or i32 %37, %38
  %40 = call i64* @kvcalloc(i64 %36, i32 8, i32 %39)
  store i64* %40, i64** %8, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %54

44:                                               ; preds = %34
  %45 = load i64*, i64** %6, align 8
  %46 = load %struct.btf*, %struct.btf** %4, align 8
  %47 = getelementptr inbounds %struct.btf, %struct.btf* %46, i32 0, i32 1
  store i64* %45, i64** %47, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load %struct.btf*, %struct.btf** %4, align 8
  %50 = getelementptr inbounds %struct.btf, %struct.btf* %49, i32 0, i32 0
  store i64* %48, i64** %50, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %53 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %52, i32 0, i32 0
  store i64* %51, i64** %53, align 8
  store i32 0, i32* %2, align 4
  br label %63

54:                                               ; preds = %43, %33, %23
  %55 = load i64*, i64** %6, align 8
  %56 = call i32 @kvfree(i64* %55)
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 @kvfree(i64* %57)
  %59 = load i64*, i64** %8, align 8
  %60 = call i32 @kvfree(i64* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %44
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64* @kvcalloc(i64, i32, i32) #1

declare dso_local i32 @kvfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
