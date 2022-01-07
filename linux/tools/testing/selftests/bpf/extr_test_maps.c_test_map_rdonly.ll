; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_rdonly.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_rdonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@MAP_SIZE = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@BPF_F_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to create map for read only test '%s'!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map_rdonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map_rdonly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %5 = load i32, i32* @MAP_SIZE, align 4
  %6 = load i32, i32* @map_flags, align 4
  %7 = load i32, i32* @BPF_F_RDONLY, align 4
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
  %20 = call i32 @bpf_map_update_elem(i32 %18, i32* %2, i32* %3, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @EPERM, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @bpf_map_lookup_elem(i32 %30, i32* %2, i32* %3)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ENOENT, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i1 [ false, %26 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @bpf_map_get_next_key(i32 %41, i32* %2, i32* %3)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @ENOENT, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i1 [ false, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

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
