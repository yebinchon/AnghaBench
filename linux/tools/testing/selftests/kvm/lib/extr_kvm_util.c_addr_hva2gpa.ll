; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_addr_hva2gpa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_addr_hva2gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { %struct.userspace_mem_region* }
%struct.userspace_mem_region = type { i8*, %struct.TYPE_2__, %struct.userspace_mem_region* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"No mapping to a guest physical address, hva: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_hva2gpa(%struct.kvm_vm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.userspace_mem_region*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %7, i32 0, i32 0
  %9 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  store %struct.userspace_mem_region* %9, %struct.userspace_mem_region** %6, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %12 = icmp ne %struct.userspace_mem_region* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %16 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp uge i8* %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %22 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %25 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %23, i64 %28
  %30 = getelementptr i8, i8* %29, i64 -1
  %31 = icmp ule i8* %20, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %19
  %33 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %34 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %39 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr i8, i8* %37, i64 %42
  %44 = getelementptr i8, i8* %43, i64 %36
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %19, %13
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %6, align 8
  %49 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %48, i32 0, i32 2
  %50 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %49, align 8
  store %struct.userspace_mem_region* %50, %struct.userspace_mem_region** %6, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %32
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
