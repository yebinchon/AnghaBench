; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_spin_lock.c_bpf_sping_lock_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_spin_lock.c_bpf_sping_lock_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.hmap_elem = type { i32, i32 }
%struct.bpf_vqueue = type { i32, i64, i32, i32 }
%struct.cls_elem = type { i32, i32 }

@hmap = common dso_local global i32 0, align 4
@vqueue = common dso_local global i32 0, align 4
@cls_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_sping_lock_test(%struct.__sk_buff* %0) #0 {
  %2 = alloca %struct.__sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hmap_elem, align 4
  %7 = alloca %struct.hmap_elem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bpf_vqueue*, align 8
  %10 = alloca %struct.cls_elem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %2, align 8
  store volatile i32 0, i32* %3, align 4
  store volatile i32 100, i32* %4, align 4
  store volatile i32 64, i32* %5, align 4
  %13 = bitcast %struct.hmap_elem* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = call i8* @bpf_map_lookup_elem(i32* @hmap, i32* %11)
  %15 = bitcast i8* %14 to %struct.hmap_elem*
  store %struct.hmap_elem* %15, %struct.hmap_elem** %7, align 8
  %16 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %17 = icmp ne %struct.hmap_elem* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = call i32 @bpf_map_update_elem(i32* @hmap, i32* %11, %struct.hmap_elem* %6, i32 0)
  %20 = call i8* @bpf_map_lookup_elem(i32* @hmap, i32* %11)
  %21 = bitcast i8* %20 to %struct.hmap_elem*
  store %struct.hmap_elem* %21, %struct.hmap_elem** %7, align 8
  %22 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %23 = icmp ne %struct.hmap_elem* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 1, i32* %12, align 4
  br label %119

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %28 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %27, i32 0, i32 1
  %29 = call i32 @bpf_spin_lock(i32* %28)
  %30 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %31 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %36 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %44

39:                                               ; preds = %26
  %40 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %41 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %46 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %51 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %49, %44
  %56 = load %struct.hmap_elem*, %struct.hmap_elem** %7, align 8
  %57 = getelementptr inbounds %struct.hmap_elem, %struct.hmap_elem* %56, i32 0, i32 1
  %58 = call i32 @bpf_spin_unlock(i32* %57)
  %59 = call i8* @bpf_map_lookup_elem(i32* @vqueue, i32* %11)
  %60 = bitcast i8* %59 to %struct.bpf_vqueue*
  store %struct.bpf_vqueue* %60, %struct.bpf_vqueue** %9, align 8
  %61 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %62 = icmp ne %struct.bpf_vqueue* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %119

64:                                               ; preds = %55
  %65 = call i64 (...) @bpf_ktime_get_ns()
  store i64 %65, i64* %8, align 8
  %66 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %67 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %66, i32 0, i32 2
  %68 = call i32 @bpf_spin_lock(i32* %67)
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %71 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %75 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @CREDIT_PER_NS(i64 %73, i32 %76)
  %78 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %79 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %78, i32 0, i32 0
  %80 = load volatile i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store volatile i32 %83, i32* %79, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %86 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %88 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %87, i32 0, i32 0
  %89 = load volatile i32, i32* %88, align 8
  %90 = load volatile i32, i32* %4, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %64
  %93 = load volatile i32, i32* %4, align 4
  %94 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %95 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %94, i32 0, i32 0
  store volatile i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %64
  %97 = load volatile i32, i32* %5, align 4
  %98 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %99 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %98, i32 0, i32 0
  %100 = load volatile i32, i32* %99, align 8
  %101 = sub nsw i32 %100, %97
  store volatile i32 %101, i32* %99, align 8
  %102 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %103 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %102, i32 0, i32 0
  %104 = load volatile i32, i32* %103, align 8
  store volatile i32 %104, i32* %3, align 4
  %105 = load %struct.bpf_vqueue*, %struct.bpf_vqueue** %9, align 8
  %106 = getelementptr inbounds %struct.bpf_vqueue, %struct.bpf_vqueue* %105, i32 0, i32 2
  %107 = call i32 @bpf_spin_unlock(i32* %106)
  %108 = call %struct.cls_elem* @bpf_get_local_storage(i32* @cls_map, i32 0)
  store %struct.cls_elem* %108, %struct.cls_elem** %10, align 8
  %109 = load %struct.cls_elem*, %struct.cls_elem** %10, align 8
  %110 = getelementptr inbounds %struct.cls_elem, %struct.cls_elem* %109, i32 0, i32 0
  %111 = call i32 @bpf_spin_lock(i32* %110)
  %112 = load %struct.cls_elem*, %struct.cls_elem** %10, align 8
  %113 = getelementptr inbounds %struct.cls_elem, %struct.cls_elem* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.cls_elem*, %struct.cls_elem** %10, align 8
  %117 = getelementptr inbounds %struct.cls_elem, %struct.cls_elem* %116, i32 0, i32 0
  %118 = call i32 @bpf_spin_unlock(i32* %117)
  br label %119

119:                                              ; preds = %96, %63, %24
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #2

declare dso_local i32 @bpf_map_update_elem(i32*, i32*, %struct.hmap_elem*, i32) #2

declare dso_local i32 @bpf_spin_lock(i32*) #2

declare dso_local i32 @bpf_spin_unlock(i32*) #2

declare dso_local i64 @bpf_ktime_get_ns(...) #2

declare dso_local i64 @CREDIT_PER_NS(i64, i32) #2

declare dso_local %struct.cls_elem* @bpf_get_local_storage(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
