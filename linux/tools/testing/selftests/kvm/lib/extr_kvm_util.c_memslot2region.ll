; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_memslot2region.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_memslot2region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userspace_mem_region = type { %struct.TYPE_2__, %struct.userspace_mem_region* }
%struct.TYPE_2__ = type { i64 }
%struct.kvm_vm = type { %struct.userspace_mem_region* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"No mem region with the requested slot found,\0A  requested slot: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"---- vm dump ----\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Mem region not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.userspace_mem_region* @memslot2region(%struct.kvm_vm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.userspace_mem_region*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %6, i32 0, i32 0
  %8 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %7, align 8
  store %struct.userspace_mem_region* %8, %struct.userspace_mem_region** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %11 = icmp ne %struct.userspace_mem_region* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %14 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %23 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %22, i32 0, i32 1
  %24 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %23, align 8
  store %struct.userspace_mem_region* %24, %struct.userspace_mem_region** %5, align 8
  br label %9

25:                                               ; preds = %19, %9
  %26 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %27 = icmp eq %struct.userspace_mem_region* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %36 = call i32 @vm_dump(i32 %34, %struct.kvm_vm* %35, i32 2)
  %37 = call i32 @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %28, %25
  %39 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  ret %struct.userspace_mem_region* %39
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @vm_dump(i32, %struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
