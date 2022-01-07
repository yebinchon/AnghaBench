; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_vcpu_alloc_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_vcpu_alloc_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.kvm_vm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmx_pages* @vcpu_alloc_vmx(%struct.kvm_vm* %0, i64* %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmx_pages*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = call i32 (...) @getpagesize()
  %9 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %7, i32 %8, i32 65536, i32 0, i32 0)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @addr_gva2hva(%struct.kvm_vm* %10, i64 %11)
  %13 = bitcast i8* %12 to %struct.vmx_pages*
  store %struct.vmx_pages* %13, %struct.vmx_pages** %6, align 8
  %14 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %15 = call i32 (...) @getpagesize()
  %16 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %14, i32 %15, i32 65536, i32 0, i32 0)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %19 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %18, i32 0, i32 21
  store i8* %17, i8** %19, align 8
  %20 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %21 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %22 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %21, i32 0, i32 21
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call i8* @addr_gva2hva(%struct.kvm_vm* %20, i64 %24)
  %26 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %27 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %26, i32 0, i32 23
  store i8* %25, i8** %27, align 8
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %29 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %30 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %29, i32 0, i32 21
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = call i8* @addr_gva2gpa(%struct.kvm_vm* %28, i64 %32)
  %34 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %35 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %34, i32 0, i32 22
  store i8* %33, i8** %35, align 8
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %37 = call i32 (...) @getpagesize()
  %38 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %36, i32 %37, i32 65536, i32 0, i32 0)
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %41 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %40, i32 0, i32 18
  store i8* %39, i8** %41, align 8
  %42 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %43 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %44 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %43, i32 0, i32 18
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = call i8* @addr_gva2hva(%struct.kvm_vm* %42, i64 %46)
  %48 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %49 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %48, i32 0, i32 20
  store i8* %47, i8** %49, align 8
  %50 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %51 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %52 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %51, i32 0, i32 18
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = call i8* @addr_gva2gpa(%struct.kvm_vm* %50, i64 %54)
  %56 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %57 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %56, i32 0, i32 19
  store i8* %55, i8** %57, align 8
  %58 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %59 = call i32 (...) @getpagesize()
  %60 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %58, i32 %59, i32 65536, i32 0, i32 0)
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %63 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %62, i32 0, i32 16
  store i8* %61, i8** %63, align 8
  %64 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %65 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %66 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %65, i32 0, i32 16
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = call i8* @addr_gva2hva(%struct.kvm_vm* %64, i64 %68)
  %70 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %71 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %70, i32 0, i32 15
  store i8* %69, i8** %71, align 8
  %72 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %73 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %74 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %73, i32 0, i32 16
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = call i8* @addr_gva2gpa(%struct.kvm_vm* %72, i64 %76)
  %78 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %79 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %78, i32 0, i32 17
  store i8* %77, i8** %79, align 8
  %80 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %81 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %80, i32 0, i32 15
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (...) @getpagesize()
  %84 = call i32 @memset(i8* %82, i32 0, i32 %83)
  %85 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %86 = call i32 (...) @getpagesize()
  %87 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %85, i32 %86, i32 65536, i32 0, i32 0)
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %90 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %89, i32 0, i32 12
  store i8* %88, i8** %90, align 8
  %91 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %92 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %93 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %92, i32 0, i32 12
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i8* @addr_gva2hva(%struct.kvm_vm* %91, i64 %95)
  %97 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %98 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %97, i32 0, i32 14
  store i8* %96, i8** %98, align 8
  %99 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %100 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %101 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %100, i32 0, i32 12
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = call i8* @addr_gva2gpa(%struct.kvm_vm* %99, i64 %103)
  %105 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %106 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %105, i32 0, i32 13
  store i8* %104, i8** %106, align 8
  %107 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %108 = call i32 (...) @getpagesize()
  %109 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %107, i32 %108, i32 65536, i32 0, i32 0)
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %112 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  %113 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %114 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %115 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %114, i32 0, i32 10
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = call i8* @addr_gva2hva(%struct.kvm_vm* %113, i64 %117)
  %119 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %120 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %119, i32 0, i32 9
  store i8* %118, i8** %120, align 8
  %121 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %122 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %123 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %122, i32 0, i32 10
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = call i8* @addr_gva2gpa(%struct.kvm_vm* %121, i64 %125)
  %127 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %128 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %127, i32 0, i32 11
  store i8* %126, i8** %128, align 8
  %129 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %130 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (...) @getpagesize()
  %133 = call i32 @memset(i8* %131, i32 0, i32 %132)
  %134 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %135 = call i32 (...) @getpagesize()
  %136 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %134, i32 %135, i32 65536, i32 0, i32 0)
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %139 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  %140 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %141 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %142 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %141, i32 0, i32 7
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = call i8* @addr_gva2hva(%struct.kvm_vm* %140, i64 %144)
  %146 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %147 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %149 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %150 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = call i8* @addr_gva2gpa(%struct.kvm_vm* %148, i64 %152)
  %154 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %155 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %154, i32 0, i32 8
  store i8* %153, i8** %155, align 8
  %156 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %157 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %156, i32 0, i32 6
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (...) @getpagesize()
  %160 = call i32 @memset(i8* %158, i32 0, i32 %159)
  %161 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %162 = call i32 (...) @getpagesize()
  %163 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %161, i32 %162, i32 65536, i32 0, i32 0)
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %166 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %168 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %169 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %170 to i64
  %172 = call i8* @addr_gva2hva(%struct.kvm_vm* %167, i64 %171)
  %173 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %174 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %176 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %177 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i64
  %180 = call i8* @addr_gva2gpa(%struct.kvm_vm* %175, i64 %179)
  %181 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %182 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %184 = call i32 (...) @getpagesize()
  %185 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %183, i32 %184, i32 65536, i32 0, i32 0)
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %188 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %190 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %191 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %192 to i64
  %194 = call i8* @addr_gva2hva(%struct.kvm_vm* %189, i64 %193)
  %195 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %196 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %198 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %199 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = ptrtoint i8* %200 to i64
  %202 = call i8* @addr_gva2gpa(%struct.kvm_vm* %197, i64 %201)
  %203 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  %204 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load i64, i64* %5, align 8
  %206 = load i64*, i64** %4, align 8
  store i64 %205, i64* %206, align 8
  %207 = load %struct.vmx_pages*, %struct.vmx_pages** %6, align 8
  ret %struct.vmx_pages* %207
}

declare dso_local i64 @vm_vaddr_alloc(%struct.kvm_vm*, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @addr_gva2hva(%struct.kvm_vm*, i64) #1

declare dso_local i8* @addr_gva2gpa(%struct.kvm_vm*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
