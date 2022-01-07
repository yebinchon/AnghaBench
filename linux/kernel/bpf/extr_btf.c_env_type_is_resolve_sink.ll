; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_type_is_resolve_sink.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_type_is_resolve_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*)* @env_type_is_resolve_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.btf_type*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %6 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %7 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %43 [
    i32 128, label %9
    i32 130, label %15
    i32 129, label %27
  ]

9:                                                ; preds = %2
  %10 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %11 = call i32 @btf_type_needs_resolve(%struct.btf_type* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %17 = call i32 @btf_type_is_modifier(%struct.btf_type* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %21 = call i32 @btf_type_is_ptr(%struct.btf_type* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %2
  %28 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %29 = call i32 @btf_type_is_modifier(%struct.btf_type* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %33 = call i32 @btf_type_is_array(%struct.btf_type* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %37 = call i32 @btf_type_is_struct(%struct.btf_type* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %31, %27
  %41 = phi i1 [ false, %31 ], [ false, %27 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %9, %24, %40, %43
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @btf_type_needs_resolve(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_modifier(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_ptr(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_array(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_struct(%struct.btf_type*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
