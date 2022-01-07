; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_wronly.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_wronly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@MAP_SIZE = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@BPF_F_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to create map for read only test '%s'!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map_wronly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map_wronly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %5 = load i32, i32* @MAP_SIZE, align 4
  %6 = load i32, i32* @map_flags, align 4
  %7 = load i32, i32* @BPF_F_WRONLY, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @bpf_create_map(i32 %4, i32 4, i32 4, i32 %5, i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i64, i64* @errno, align 8
  %14 = call i8* @strerror(i64 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  store i32 1234, i32* %3, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @BPF_ANY, align 4
  %20 = call i64 @bpf_map_update_elem(i32 %18, i32* %2, i32* %3, i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @bpf_map_lookup_elem(i32 %24, i32* %2, i32* %3)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EPERM, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %17
  %32 = phi i1 [ false, %17 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @bpf_map_get_next_key(i32 %35, i32* %2, i32* %3)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EPERM, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i1 [ false, %31 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i32*) #1

declare dso_local i32 @bpf_map_get_next_key(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
