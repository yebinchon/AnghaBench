; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_memcmp_hva_gva.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_memcmp_hva_gva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_memcmp_hva_gva(i8* %0, %struct.kvm_vm* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kvm_vm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.kvm_vm* %1, %struct.kvm_vm** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %123, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %127

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %25, %26
  %28 = call i64 @addr_gva2hva(%struct.kvm_vm* %24, i64 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = lshr i64 %32, %35
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %41 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = lshr i64 %39, %42
  %44 = icmp ne i64 %36, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %19
  %46 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = urem i64 %49, %52
  %54 = sub i64 %48, %53
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %45, %19
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = lshr i64 %56, %59
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = lshr i64 %63, %66
  %68 = icmp ne i64 %60, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %55
  %70 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %71 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %75 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %73, %76
  %78 = sub i64 %72, %77
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %69, %55
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %82 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = lshr i64 %80, %83
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %85, %86
  %88 = sub i64 %87, 1
  %89 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %90 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = lshr i64 %88, %91
  %93 = icmp eq i64 %84, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %98 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = lshr i64 %96, %99
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %101, %102
  %104 = sub i64 %103, 1
  %105 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %106 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = lshr i64 %104, %107
  %109 = icmp eq i64 %100, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* %12, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load i64, i64* %13, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @memcmp(i8* %113, i8* %115, i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %79
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %5, align 4
  br label %128

122:                                              ; preds = %79
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %11, align 8
  br label %15

127:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @addr_gva2hva(%struct.kvm_vm*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
