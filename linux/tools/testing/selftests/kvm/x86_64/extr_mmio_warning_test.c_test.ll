; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.thread_context = type { i32, %struct.kvm_run* }

@NTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/kvm\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to open /dev/kvm\00", align 1
@KVM_CREATE_VM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"KVM_CREATE_VM failed\00", align 1
@KVM_CREATE_VCPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"KVM_CREATE_VCPU failed\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@thr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.thread_context, align 8
  %9 = load i32, i32* @NTHREAD, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST_ASSERT(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @KVM_CREATE_VM, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST_ASSERT(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @KVM_CREATE_VCPU, align 4
  %28 = call i32 @ioctl(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @PROT_READ, align 4
  %34 = load i32, i32* @PROT_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MAP_SHARED, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @mmap(i32 0, i32 4096, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = inttoptr i64 %38 to %struct.kvm_run*
  store %struct.kvm_run* %39, %struct.kvm_run** %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.thread_context, %struct.thread_context* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %43 = getelementptr inbounds %struct.thread_context, %struct.thread_context* %8, i32 0, i32 1
  store %struct.kvm_run* %42, %struct.kvm_run** %43, align 8
  %44 = call i32 (...) @getpid()
  %45 = call i32 @srand(i32 %44)
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %61, %0
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @NTHREAD, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %12, i64 %52
  %54 = load i32, i32* @thr, align 4
  %55 = ptrtoint %struct.thread_context* %8 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @pthread_create(i32* %53, i32* null, i32 %54, i8* %56)
  %58 = call i32 (...) @rand()
  %59 = srem i32 %58, 10000
  %60 = call i32 @usleep(i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @NTHREAD, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %12, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pthread_join(i32 %73, i32* null)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @TEST_ASSERT(i32, i8*) #2

declare dso_local i32 @ioctl(i32, i32, i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @srand(i32) #2

declare dso_local i32 @getpid(...) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
