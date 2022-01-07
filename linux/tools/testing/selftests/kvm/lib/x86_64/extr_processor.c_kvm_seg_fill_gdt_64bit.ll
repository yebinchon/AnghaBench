; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_seg_fill_gdt_64bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_seg_fill_gdt_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.desc64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, %struct.kvm_segment*)* @kvm_seg_fill_gdt_64bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_seg_fill_gdt_64bit(%struct.kvm_vm* %0, %struct.kvm_segment* %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca %struct.kvm_segment*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.desc64*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %4, align 8
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @addr_gva2hva(%struct.kvm_vm* %7, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 3
  %17 = mul nsw i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %12, i64 %18
  %20 = bitcast i8* %19 to %struct.desc64*
  store %struct.desc64* %20, %struct.desc64** %6, align 8
  %21 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.desc64*, %struct.desc64** %6, align 8
  %26 = getelementptr inbounds %struct.desc64, %struct.desc64* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65535
  %31 = load %struct.desc64*, %struct.desc64** %6, align 8
  %32 = getelementptr inbounds %struct.desc64, %struct.desc64* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = load %struct.desc64*, %struct.desc64** %6, align 8
  %38 = getelementptr inbounds %struct.desc64, %struct.desc64* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.desc64*, %struct.desc64** %6, align 8
  %43 = getelementptr inbounds %struct.desc64, %struct.desc64* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.desc64*, %struct.desc64** %6, align 8
  %48 = getelementptr inbounds %struct.desc64, %struct.desc64* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 4
  %49 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.desc64*, %struct.desc64** %6, align 8
  %53 = getelementptr inbounds %struct.desc64, %struct.desc64* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 4
  %54 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.desc64*, %struct.desc64** %6, align 8
  %58 = getelementptr inbounds %struct.desc64, %struct.desc64* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 16
  %63 = load %struct.desc64*, %struct.desc64** %6, align 8
  %64 = getelementptr inbounds %struct.desc64, %struct.desc64* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.desc64*, %struct.desc64** %6, align 8
  %69 = getelementptr inbounds %struct.desc64, %struct.desc64* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.desc64*, %struct.desc64** %6, align 8
  %74 = getelementptr inbounds %struct.desc64, %struct.desc64* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.desc64*, %struct.desc64** %6, align 8
  %79 = getelementptr inbounds %struct.desc64, %struct.desc64* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 24
  %84 = load %struct.desc64*, %struct.desc64** %6, align 8
  %85 = getelementptr inbounds %struct.desc64, %struct.desc64* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %2
  %91 = load %struct.kvm_segment*, %struct.kvm_segment** %4, align 8
  %92 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 32
  %95 = load %struct.desc64*, %struct.desc64** %6, align 8
  %96 = getelementptr inbounds %struct.desc64, %struct.desc64* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %2
  ret void
}

declare dso_local i8* @addr_gva2hva(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
