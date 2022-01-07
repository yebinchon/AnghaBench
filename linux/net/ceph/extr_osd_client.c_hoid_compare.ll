; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_hoid_compare.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_hoid_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_hobject_id = type { i64, i64, i8*, i64, i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_hobject_id*, %struct.ceph_hobject_id*)* @hoid_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hoid_compare(%struct.ceph_hobject_id* %0, %struct.ceph_hobject_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_hobject_id*, align 8
  %5 = alloca %struct.ceph_hobject_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_hobject_id* %0, %struct.ceph_hobject_id** %4, align 8
  store %struct.ceph_hobject_id* %1, %struct.ceph_hobject_id** %5, align 8
  %11 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %129

19:                                               ; preds = %2
  %20 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %129

28:                                               ; preds = %19
  %29 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %129

37:                                               ; preds = %28
  %38 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %42 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %129

46:                                               ; preds = %37
  %47 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %48 = call i64 @hoid_get_bitwise_key(%struct.ceph_hobject_id* %47)
  %49 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %50 = call i64 @hoid_get_bitwise_key(%struct.ceph_hobject_id* %49)
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %129

53:                                               ; preds = %46
  %54 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %55 = call i64 @hoid_get_bitwise_key(%struct.ceph_hobject_id* %54)
  %56 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %57 = call i64 @hoid_get_bitwise_key(%struct.ceph_hobject_id* %56)
  %58 = icmp sgt i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %129

60:                                               ; preds = %53
  %61 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %62 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %68 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %71 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @compare_names(i8* %63, i64 %66, i8* %69, i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %129

78:                                               ; preds = %60
  %79 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %80 = call i32 @hoid_get_effective_key(%struct.ceph_hobject_id* %79, i8** %6, i64* %8)
  %81 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %82 = call i32 @hoid_get_effective_key(%struct.ceph_hobject_id* %81, i8** %7, i64* %9)
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @compare_names(i8* %83, i64 %84, i8* %85, i64 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %129

92:                                               ; preds = %78
  %93 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %94 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %97 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %100 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %103 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @compare_names(i8* %95, i64 %98, i8* %101, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %129

110:                                              ; preds = %92
  %111 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %112 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %115 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 -1, i32* %3, align 4
  br label %129

119:                                              ; preds = %110
  %120 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %4, align 8
  %121 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %5, align 8
  %124 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %129

128:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %127, %118, %108, %90, %76, %59, %52, %45, %36, %27, %18
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @hoid_get_bitwise_key(%struct.ceph_hobject_id*) #1

declare dso_local i32 @compare_names(i8*, i64, i8*, i64) #1

declare dso_local i32 @hoid_get_effective_key(%struct.ceph_hobject_id*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
