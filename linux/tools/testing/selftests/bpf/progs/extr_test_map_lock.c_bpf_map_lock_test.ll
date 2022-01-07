; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_map_lock.c_bpf_map_lock_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_map_lock.c_bpf_map_lock_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.hmap_elem = type { i32*, i32 }
%struct.array_elem = type { i32*, i32 }

@hash_map = common dso_local global i32 0, align 4
@VAR_NUM = common dso_local global i32 0, align 4
@array_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_lock_test(%struct.__sk_buff* %0) #0 {
  %2 = alloca %struct.__sk_buff*, align 8
  %3 = alloca %struct.hmap_elem, align 8
  %4 = alloca %struct.hmap_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.array_elem*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %2, align 8
  %10 = bitcast %struct.hmap_elem* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = call i32 (...) @bpf_get_prandom_u32()
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %12 = call i8* @bpf_map_lookup_elem(i32* @hash_map, i32* %6)
  %13 = bitcast i8* %12 to %struct.hmap_elem*
  store %struct.hmap_elem* %13, %struct.hmap_elem** %4, align 8
  %14 = load %struct.hmap_elem*, %struct.hmap_elem** %4, align 8
  %15 = icmp ne %struct.hmap_elem* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.hmap_elem*, %struct.hmap_elem** %4, align 8
  %19 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %18, i32 0, i32 1
  %20 = call i32 @bpf_spin_lock(i32* %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %33, %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @VAR_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hmap_elem*, %struct.hmap_elem** %4, align 8
  %28 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.hmap_elem*, %struct.hmap_elem** %4, align 8
  %38 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %37, i32 0, i32 1
  %39 = call i32 @bpf_spin_unlock(i32* %38)
  %40 = call i8* @bpf_map_lookup_elem(i32* @array_map, i32* %6)
  %41 = bitcast i8* %40 to %struct.array_elem*
  store %struct.array_elem* %41, %struct.array_elem** %9, align 8
  %42 = load %struct.array_elem*, %struct.array_elem** %9, align 8
  %43 = icmp ne %struct.array_elem* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %68

45:                                               ; preds = %36
  %46 = load %struct.array_elem*, %struct.array_elem** %9, align 8
  %47 = getelementptr inbounds %struct.array_elem, %struct.array_elem* %46, i32 0, i32 1
  %48 = call i32 @bpf_spin_lock(i32* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %61, %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @VAR_NUM, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.array_elem*, %struct.array_elem** %9, align 8
  %56 = getelementptr inbounds %struct.array_elem, %struct.array_elem* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.array_elem*, %struct.array_elem** %9, align 8
  %66 = getelementptr inbounds %struct.array_elem, %struct.array_elem* %65, i32 0, i32 1
  %67 = call i32 @bpf_spin_unlock(i32* %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %44, %16
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_get_prandom_u32(...) #2

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #2

declare dso_local i32 @bpf_spin_lock(i32*) #2

declare dso_local i32 @bpf_spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
