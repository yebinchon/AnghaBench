; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_determine_vm_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_determine_vm_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }

@NOMMU_MAP_DIRECT = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i64 0, align 8
@VM_MAYWRITE = common dso_local global i64 0, align 8
@VM_MAYEXEC = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i64 0, align 8
@NOMMU_VMFLAGS = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64)* @determine_vm_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @determine_vm_flags(%struct.file* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @calc_vm_prot_bits(i64 %10, i32 0)
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @calc_vm_flag_bits(i64 %12)
  %14 = or i64 %11, %13
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @NOMMU_MAP_DIRECT, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @VM_MAYREAD, align 8
  %21 = load i64, i64* @VM_MAYWRITE, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @VM_MAYEXEC, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PROT_WRITE, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @VM_MAYSHARE, align 8
  %36 = load i64, i64* %9, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %29, %19
  br label %56

39:                                               ; preds = %4
  %40 = load i64, i64* @VM_MAYSHARE, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @NOMMU_VMFLAGS, align 8
  %43 = and i64 %41, %42
  %44 = or i64 %40, %43
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @MAP_SHARED, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i64, i64* @VM_SHARED, align 8
  %53 = load i64, i64* %9, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %39
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @MAP_PRIVATE, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, i64* @VM_MAYSHARE, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %9, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %66, %61, %56
  %72 = load i64, i64* %9, align 8
  ret i64 %72
}

declare dso_local i64 @calc_vm_prot_bits(i64, i32) #1

declare dso_local i64 @calc_vm_flag_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
