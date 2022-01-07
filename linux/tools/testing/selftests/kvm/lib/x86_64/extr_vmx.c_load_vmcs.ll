; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_load_vmcs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_load_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmx_pages = type { i32, i32, i32, i64, i32, i64 }

@enable_evmcs = common dso_local global i32 0, align 4
@current_evmcs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_vmcs(%struct.vmx_pages* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmx_pages*, align 8
  store %struct.vmx_pages* %0, %struct.vmx_pages** %3, align 8
  %4 = load i32, i32* @enable_evmcs, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @vmcs_revision()
  %8 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %9 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32 %7, i32* %11, align 4
  %12 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %13 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @vmclear(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %56

18:                                               ; preds = %6
  %19 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %20 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @vmptrld(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %56

25:                                               ; preds = %18
  %26 = call i32 (...) @vmcs_revision()
  %27 = sext i32 %26 to i64
  %28 = or i64 %27, 2147483648
  %29 = trunc i64 %28 to i32
  %30 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %31 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32 %29, i32* %33, align 4
  %34 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %35 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @vmclear(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %25
  br label %55

41:                                               ; preds = %1
  %42 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %43 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %46 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @evmcs_vmptrld(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %41
  %52 = call i32 (...) @vmcs_revision()
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_evmcs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %40
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %39, %24, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @vmcs_revision(...) #1

declare dso_local i64 @vmclear(i32) #1

declare dso_local i64 @vmptrld(i32) #1

declare dso_local i64 @evmcs_vmptrld(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
