; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_thr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_context = type { i32, %struct.kvm_run* }
%struct.kvm_run = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KVM_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ret1=%d exit_reason=%d suberror=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_run*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.thread_context*
  store %struct.thread_context* %8, %struct.thread_context** %3, align 8
  %9 = load %struct.thread_context*, %struct.thread_context** %3, align 8
  %10 = getelementptr inbounds %struct.thread_context, %struct.thread_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.thread_context*, %struct.thread_context** %3, align 8
  %13 = getelementptr inbounds %struct.thread_context, %struct.thread_context* %12, i32 0, i32 1
  %14 = load %struct.kvm_run*, %struct.kvm_run** %13, align 8
  store %struct.kvm_run* %14, %struct.kvm_run** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @KVM_RUN, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %25)
  ret i8* null
}

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
