; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c__vm_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c__vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Testing guest mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Insufficient Memory\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Linear address width (%d bits) not supported\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Guest physical address width detected: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unknown guest mode, mode: 0x%x\00", align 1
@VM_MEM_SRC_ANONYMOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_vm* @_vm_create(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vm*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @vm_guest_mode_string(i32 %8)
  %10 = call i32 @DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call %struct.kvm_vm* @calloc(i32 1, i32 56)
  store %struct.kvm_vm* %11, %struct.kvm_vm** %7, align 8
  %12 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %13 = icmp ne %struct.kvm_vm* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %115 [
    i32 130, label %24
    i32 129, label %35
    i32 132, label %46
    i32 131, label %57
    i32 134, label %68
    i32 133, label %79
    i32 128, label %90
  ]

24:                                               ; preds = %3
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %27, i32 0, i32 2
  store i32 52, i32* %28, align 8
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %29, i32 0, i32 3
  store i32 48, i32* %30, align 4
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %31, i32 0, i32 4
  store i32 4096, i32* %32, align 8
  %33 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %33, i32 0, i32 5
  store i32 12, i32* %34, align 4
  br label %118

35:                                               ; preds = %3
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %36, i32 0, i32 1
  store i32 3, i32* %37, align 4
  %38 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %39 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %38, i32 0, i32 2
  store i32 52, i32* %39, align 8
  %40 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %41 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %40, i32 0, i32 3
  store i32 48, i32* %41, align 4
  %42 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %43 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %42, i32 0, i32 4
  store i32 65536, i32* %43, align 8
  %44 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %45 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %44, i32 0, i32 5
  store i32 16, i32* %45, align 4
  br label %118

46:                                               ; preds = %3
  %47 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %47, i32 0, i32 1
  store i32 4, i32* %48, align 4
  %49 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %50 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %49, i32 0, i32 2
  store i32 48, i32* %50, align 8
  %51 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %51, i32 0, i32 3
  store i32 48, i32* %52, align 4
  %53 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %54 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %53, i32 0, i32 4
  store i32 4096, i32* %54, align 8
  %55 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %55, i32 0, i32 5
  store i32 12, i32* %56, align 4
  br label %118

57:                                               ; preds = %3
  %58 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %59 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %58, i32 0, i32 1
  store i32 3, i32* %59, align 4
  %60 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %60, i32 0, i32 2
  store i32 48, i32* %61, align 8
  %62 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %63 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %62, i32 0, i32 3
  store i32 48, i32* %63, align 4
  %64 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %64, i32 0, i32 4
  store i32 65536, i32* %65, align 8
  %66 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %67 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %66, i32 0, i32 5
  store i32 16, i32* %67, align 4
  br label %118

68:                                               ; preds = %3
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %70 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %69, i32 0, i32 1
  store i32 4, i32* %70, align 4
  %71 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %72 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %71, i32 0, i32 2
  store i32 40, i32* %72, align 8
  %73 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %74 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %73, i32 0, i32 3
  store i32 48, i32* %74, align 4
  %75 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %76 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %75, i32 0, i32 4
  store i32 4096, i32* %76, align 8
  %77 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %78 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %77, i32 0, i32 5
  store i32 12, i32* %78, align 4
  br label %118

79:                                               ; preds = %3
  %80 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %81 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %80, i32 0, i32 1
  store i32 3, i32* %81, align 4
  %82 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %83 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %82, i32 0, i32 2
  store i32 40, i32* %83, align 8
  %84 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %85 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %84, i32 0, i32 3
  store i32 48, i32* %85, align 4
  %86 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %87 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %86, i32 0, i32 4
  store i32 65536, i32* %87, align 8
  %88 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %89 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %88, i32 0, i32 5
  store i32 16, i32* %89, align 4
  br label %118

90:                                               ; preds = %3
  %91 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %92 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %91, i32 0, i32 2
  %93 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %94 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %93, i32 0, i32 3
  %95 = call i32 @kvm_get_cpu_address_width(i32* %92, i32* %94)
  %96 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %97 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 48
  %100 = zext i1 %99 to i32
  %101 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %102 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %106 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %105, i32 0, i32 1
  store i32 4, i32* %106, align 4
  %107 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %108 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %107, i32 0, i32 4
  store i32 4096, i32* %108, align 8
  %109 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %110 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %109, i32 0, i32 5
  store i32 12, i32* %110, align 4
  %111 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %112 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %118

115:                                              ; preds = %3
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %90, %79, %68, %57, %46, %35, %24
  %119 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @vm_open(%struct.kvm_vm* %119, i32 %120)
  %122 = call i8* (...) @sparsebit_alloc()
  %123 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %124 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %126 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %125, i32 0, i32 8
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %129 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = shl i64 1, %132
  %134 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %135 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  %138 = lshr i64 %133, %137
  %139 = call i32 @sparsebit_set_num(i8* %127, i64 0, i64 %138)
  %140 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %141 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %140, i32 0, i32 8
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %144 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = zext i32 %146 to i64
  %148 = shl i64 1, %147
  %149 = sub i64 %148, 1
  %150 = xor i64 %149, -1
  %151 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %152 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  %155 = lshr i64 %150, %154
  %156 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %157 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = shl i64 1, %160
  %162 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %163 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  %166 = lshr i64 %161, %165
  %167 = call i32 @sparsebit_set_num(i8* %142, i64 %155, i64 %166)
  %168 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %169 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = zext i32 %170 to i64
  %172 = shl i64 1, %171
  %173 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %174 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = lshr i64 %172, %176
  %178 = sub i64 %177, 1
  %179 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %180 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %179, i32 0, i32 6
  store i64 %178, i64* %180, align 8
  %181 = call i8* (...) @sparsebit_alloc()
  %182 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %183 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %182, i32 0, i32 7
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* %5, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %118
  %187 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %188 = load i32, i32* @VM_MEM_SRC_ANONYMOUS, align 4
  %189 = load i64, i64* %5, align 8
  %190 = call i32 @vm_userspace_mem_region_add(%struct.kvm_vm* %187, i32 %188, i32 0, i32 0, i64 %189, i32 0)
  br label %191

191:                                              ; preds = %186, %118
  %192 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  ret %struct.kvm_vm* %192
}

declare dso_local i32 @DEBUG(i8*, i32) #1

declare dso_local i32 @vm_guest_mode_string(i32) #1

declare dso_local %struct.kvm_vm* @calloc(i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local i32 @kvm_get_cpu_address_width(i32*, i32*) #1

declare dso_local i32 @vm_open(%struct.kvm_vm*, i32) #1

declare dso_local i8* @sparsebit_alloc(...) #1

declare dso_local i32 @sparsebit_set_num(i8*, i64, i64) #1

declare dso_local i32 @vm_userspace_mem_region_add(%struct.kvm_vm*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
