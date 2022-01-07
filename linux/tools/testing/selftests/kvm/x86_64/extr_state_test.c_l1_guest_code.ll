; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_state_test.c_l1_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_state_test.c_l1_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32, i32 }

@l2_guest_code = common dso_local global i32 0, align 4
@VM_EXIT_REASON = common dso_local global i32 0, align 4
@EXIT_REASON_VMCALL = common dso_local global i32 0, align 4
@GUEST_RIP = common dso_local global i32 0, align 4
@SECONDARY_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@SECONDARY_EXEC_SHADOW_VMCS = common dso_local global i32 0, align 4
@VMCS_LINK_POINTER = common dso_local global i32 0, align 4
@L2_GUEST_STACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l1_guest_code(%struct.vmx_pages* %0) #0 {
  %2 = alloca %struct.vmx_pages*, align 8
  %3 = alloca [64 x i64], align 16
  store %struct.vmx_pages* %0, %struct.vmx_pages** %2, align 8
  %4 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %5 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @GUEST_ASSERT(i32 %6)
  %8 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %9 = call i32 @prepare_for_vmx_operation(%struct.vmx_pages* %8)
  %10 = call i32 @GUEST_ASSERT(i32 %9)
  %11 = call i32 @GUEST_SYNC(i32 3)
  %12 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %13 = call i32 @load_vmcs(%struct.vmx_pages* %12)
  %14 = call i32 @GUEST_ASSERT(i32 %13)
  %15 = call i64 (...) @vmptrstz()
  %16 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %17 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @GUEST_ASSERT(i32 %21)
  %23 = call i32 @GUEST_SYNC(i32 4)
  %24 = call i64 (...) @vmptrstz()
  %25 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %26 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @GUEST_ASSERT(i32 %30)
  %32 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %33 = load i32, i32* @l2_guest_code, align 4
  %34 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 64
  %35 = call i32 @prepare_vmcs(%struct.vmx_pages* %32, i32 %33, i64* %34)
  %36 = call i32 @GUEST_SYNC(i32 5)
  %37 = call i64 (...) @vmptrstz()
  %38 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %39 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @GUEST_ASSERT(i32 %43)
  %45 = call i32 (...) @vmlaunch()
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @GUEST_ASSERT(i32 %48)
  %50 = call i64 (...) @vmptrstz()
  %51 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %52 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @GUEST_ASSERT(i32 %56)
  %58 = load i32, i32* @VM_EXIT_REASON, align 4
  %59 = call i32 @vmreadz(i32 %58)
  %60 = load i32, i32* @EXIT_REASON_VMCALL, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @GUEST_ASSERT(i32 %62)
  %64 = call i32 (...) @vmlaunch()
  %65 = call i32 @GUEST_ASSERT(i32 %64)
  %66 = call i32 (...) @vmresume()
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @GUEST_ASSERT(i32 %69)
  %71 = load i32, i32* @VM_EXIT_REASON, align 4
  %72 = call i32 @vmreadz(i32 %71)
  %73 = load i32, i32* @EXIT_REASON_VMCALL, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @GUEST_ASSERT(i32 %75)
  %77 = call i32 @GUEST_SYNC(i32 7)
  %78 = load i32, i32* @VM_EXIT_REASON, align 4
  %79 = call i32 @vmreadz(i32 %78)
  %80 = load i32, i32* @EXIT_REASON_VMCALL, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @GUEST_ASSERT(i32 %82)
  %84 = call i32 (...) @vmresume()
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @GUEST_ASSERT(i32 %87)
  %89 = load i32, i32* @VM_EXIT_REASON, align 4
  %90 = call i32 @vmreadz(i32 %89)
  %91 = load i32, i32* @EXIT_REASON_VMCALL, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @GUEST_ASSERT(i32 %93)
  %95 = load i32, i32* @GUEST_RIP, align 4
  %96 = load i32, i32* @GUEST_RIP, align 4
  %97 = call i32 @vmreadz(i32 %96)
  %98 = add nsw i32 %97, 3
  %99 = call i32 @vmwrite(i32 %95, i32 %98)
  %100 = load i32, i32* @SECONDARY_VM_EXEC_CONTROL, align 4
  %101 = load i32, i32* @SECONDARY_EXEC_SHADOW_VMCS, align 4
  %102 = call i32 @vmwrite(i32 %100, i32 %101)
  %103 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %104 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %105 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @vmwrite(i32 %103, i32 %106)
  %108 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %109 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vmptrld(i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @GUEST_ASSERT(i32 %114)
  %116 = call i32 (...) @vmlaunch()
  %117 = call i32 @GUEST_ASSERT(i32 %116)
  %118 = call i32 @GUEST_SYNC(i32 8)
  %119 = call i32 (...) @vmlaunch()
  %120 = call i32 @GUEST_ASSERT(i32 %119)
  %121 = call i32 (...) @vmresume()
  %122 = call i32 @GUEST_ASSERT(i32 %121)
  %123 = load i32, i32* @GUEST_RIP, align 4
  %124 = call i32 @vmwrite(i32 %123, i32 12648430)
  %125 = call i32 @GUEST_SYNC(i32 9)
  %126 = load i32, i32* @GUEST_RIP, align 4
  %127 = call i32 @vmreadz(i32 %126)
  %128 = icmp eq i32 %127, 12648430
  %129 = zext i1 %128 to i32
  %130 = call i32 @GUEST_ASSERT(i32 %129)
  %131 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %132 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vmptrld(i32 %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @GUEST_ASSERT(i32 %137)
  %139 = call i32 (...) @vmresume()
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @GUEST_ASSERT(i32 %142)
  %144 = load i32, i32* @VM_EXIT_REASON, align 4
  %145 = call i32 @vmreadz(i32 %144)
  %146 = load i32, i32* @EXIT_REASON_VMCALL, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @GUEST_ASSERT(i32 %148)
  %150 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %151 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @vmptrld(i32 %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @GUEST_ASSERT(i32 %156)
  %158 = load i32, i32* @GUEST_RIP, align 4
  %159 = call i32 @vmreadz(i32 %158)
  %160 = icmp eq i32 %159, -1056964626
  %161 = zext i1 %160 to i32
  %162 = call i32 @GUEST_ASSERT(i32 %161)
  %163 = call i32 (...) @vmlaunch()
  %164 = call i32 @GUEST_ASSERT(i32 %163)
  %165 = call i32 (...) @vmresume()
  %166 = call i32 @GUEST_ASSERT(i32 %165)
  %167 = call i32 @GUEST_SYNC(i32 13)
  %168 = load i32, i32* @GUEST_RIP, align 4
  %169 = call i32 @vmreadz(i32 %168)
  %170 = icmp eq i32 %169, -1056964626
  %171 = zext i1 %170 to i32
  %172 = call i32 @GUEST_ASSERT(i32 %171)
  %173 = call i32 (...) @vmlaunch()
  %174 = call i32 @GUEST_ASSERT(i32 %173)
  %175 = call i32 (...) @vmresume()
  %176 = call i32 @GUEST_ASSERT(i32 %175)
  ret void
}

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @prepare_for_vmx_operation(%struct.vmx_pages*) #1

declare dso_local i32 @GUEST_SYNC(i32) #1

declare dso_local i32 @load_vmcs(%struct.vmx_pages*) #1

declare dso_local i64 @vmptrstz(...) #1

declare dso_local i32 @prepare_vmcs(%struct.vmx_pages*, i32, i64*) #1

declare dso_local i32 @vmlaunch(...) #1

declare dso_local i32 @vmreadz(i32) #1

declare dso_local i32 @vmresume(...) #1

declare dso_local i32 @vmwrite(i32, i32) #1

declare dso_local i32 @vmptrld(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
