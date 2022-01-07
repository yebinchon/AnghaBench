; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_map_in_map_user.c_populate_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_map_in_map_user.c_populate_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_A = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@PORT_H = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@A_OF_PORT_A = common dso_local global i32 0, align 4
@H_OF_PORT_A = common dso_local global i32 0, align 4
@H_OF_PORT_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @populate_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_map(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PORT_A, align 4
  %7 = load i32, i32* @BPF_ANY, align 4
  %8 = call i32 @bpf_map_update_elem(i32 %6, i32* %3, i32* %4, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @PORT_H, align 4
  %15 = load i32, i32* @BPF_NOEXIST, align 4
  %16 = call i32 @bpf_map_update_elem(i32 %14, i32* %3, i32* %4, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @A_OF_PORT_A, align 4
  %23 = load i32, i32* @BPF_ANY, align 4
  %24 = call i32 @bpf_map_update_elem(i32 %22, i32* %3, i32* @PORT_A, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @PORT_A, align 4
  %31 = load i32, i32* @A_OF_PORT_A, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @check_map_id(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @H_OF_PORT_A, align 4
  %35 = load i32, i32* @BPF_NOEXIST, align 4
  %36 = call i32 @bpf_map_update_elem(i32 %34, i32* %3, i32* @PORT_A, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @PORT_A, align 4
  %43 = load i32, i32* @H_OF_PORT_A, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @check_map_id(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @H_OF_PORT_H, align 4
  %47 = load i32, i32* @BPF_NOEXIST, align 4
  %48 = call i32 @bpf_map_update_elem(i32 %46, i32* %3, i32* @PORT_H, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @PORT_H, align 4
  %55 = load i32, i32* @H_OF_PORT_H, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @check_map_id(i32 %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_map_id(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
