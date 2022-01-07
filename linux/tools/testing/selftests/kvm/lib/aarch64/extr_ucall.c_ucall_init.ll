; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_ucall.c_ucall_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_ucall.c_ucall_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Can't set ucall mmio address to %lx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't find a ucall mmio address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucall_init(%struct.kvm_vm* %0, i8* %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ucall_mmio_init(%struct.kvm_vm* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 5
  %47 = sdiv i32 %46, 8
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %48, 16
  store i32 %49, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %73, %39
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @ucall_mmio_init(%struct.kvm_vm* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %56
  %65 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @ucall_mmio_init(%struct.kvm_vm* %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %79

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %50

77:                                               ; preds = %50
  %78 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %71, %63, %14
  ret void
}

declare dso_local i32 @ucall_mmio_init(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
