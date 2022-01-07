; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c___wrap_devm_memunmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c___wrap_devm_memunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nfit_test_resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__wrap_devm_memunmap(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfit_test_resource*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call %struct.nfit_test_resource* @get_nfit_res(i64 %7)
  store %struct.nfit_test_resource* %8, %struct.nfit_test_resource** %5, align 8
  %9 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %5, align 8
  %10 = icmp ne %struct.nfit_test_resource* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i8*, i8** %4, align 8
  call void @devm_memunmap(%struct.device* %13, i8* %14)
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.nfit_test_resource* @get_nfit_res(i64) #1

declare dso_local void @devm_memunmap(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
