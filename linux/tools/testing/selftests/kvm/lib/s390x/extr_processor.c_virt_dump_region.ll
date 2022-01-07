; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_dump_region.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_dump_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }

@REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%*srt%lde @ 0x%lx: 0x%016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REGION_ENTRY_TYPE = common dso_local global i64 0, align 8
@REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.kvm_vm*, i8*, i64)* @virt_dump_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virt_dump_region(i32* %0, %struct.kvm_vm* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.kvm_vm* %1, %struct.kvm_vm** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %66, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add nsw i64 %14, 8192
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64* @addr_gpa2hva(%struct.kvm_vm* %18, i64 %19)
  store i64* %20, i64** %10, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REGION_ENTRY_INVALID, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %66

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REGION_ENTRY_TYPE, align 8
  %33 = and i64 %31, %32
  %34 = ashr i64 %33, 2
  %35 = sub nsw i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %37, i64 %39)
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REGION_ENTRY_TYPE, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %27
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @REGION_ENTRY_ORIGIN, align 8
  %54 = and i64 %52, %53
  call void @virt_dump_region(i32* %47, %struct.kvm_vm* %48, i8* %50, i64 %54)
  br label %65

55:                                               ; preds = %27
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REGION_ENTRY_ORIGIN, align 8
  %63 = and i64 %61, %62
  %64 = call i32 @virt_dump_ptes(i32* %56, %struct.kvm_vm* %57, i8* %59, i64 %63)
  br label %65

65:                                               ; preds = %55, %46
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 8
  store i64 %68, i64* %9, align 8
  br label %12

69:                                               ; preds = %12
  ret void
}

declare dso_local i64* @addr_gpa2hva(%struct.kvm_vm*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @virt_dump_ptes(i32*, %struct.kvm_vm*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
