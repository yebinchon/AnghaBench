; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_prepare_eptp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_prepare_eptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i8*, i32, i32 }
%struct.kvm_vm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_eptp(%struct.vmx_pages* %0, %struct.kvm_vm* %1, i32 %2) #0 {
  %4 = alloca %struct.vmx_pages*, align 8
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i32, align 4
  store %struct.vmx_pages* %0, %struct.vmx_pages** %4, align 8
  store %struct.kvm_vm* %1, %struct.kvm_vm** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %8 = call i32 (...) @getpagesize()
  %9 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %7, i32 %8, i32 65536, i32 0, i32 0)
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.vmx_pages*, %struct.vmx_pages** %4, align 8
  %12 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %14 = load %struct.vmx_pages*, %struct.vmx_pages** %4, align 8
  %15 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = call i32 @addr_gva2hva(%struct.kvm_vm* %13, i64 %17)
  %19 = load %struct.vmx_pages*, %struct.vmx_pages** %4, align 8
  %20 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %22 = load %struct.vmx_pages*, %struct.vmx_pages** %4, align 8
  %23 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = call i32 @addr_gva2gpa(%struct.kvm_vm* %21, i64 %25)
  %27 = load %struct.vmx_pages*, %struct.vmx_pages** %4, align 8
  %28 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i64 @vm_vaddr_alloc(%struct.kvm_vm*, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @addr_gva2hva(%struct.kvm_vm*, i64) #1

declare dso_local i32 @addr_gva2gpa(%struct.kvm_vm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
