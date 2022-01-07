; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_queue_pair_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_queue_pair_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32 }
%struct.vmci_handle = type { i32 }

@VMCI_PRIVILEGE_FLAG_TRUSTED = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_ACCESS = common dso_local global i32 0, align 4
@VMCI_NO_PRIVILEGE_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not attach to queue pair with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_qp**, %struct.vmci_handle*, i32, i32, i32, i32, i32)* @vmci_transport_queue_pair_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_queue_pair_alloc(%struct.vmci_qp** %0, %struct.vmci_handle* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vmci_qp**, align 8
  %9 = alloca %struct.vmci_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vmci_qp** %0, %struct.vmci_qp*** %8, align 8
  store %struct.vmci_handle* %1, %struct.vmci_handle** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %14, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %7
  %19 = load %struct.vmci_qp**, %struct.vmci_qp*** %8, align 8
  %20 = load %struct.vmci_handle*, %struct.vmci_handle** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @VMCI_PRIVILEGE_FLAG_TRUSTED, align 4
  %26 = call i32 @vmci_qpair_alloc(%struct.vmci_qp** %19, %struct.vmci_handle* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @VMCI_ERROR_NO_ACCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %41

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %7
  %33 = load %struct.vmci_qp**, %struct.vmci_qp*** %8, align 8
  %34 = load %struct.vmci_handle*, %struct.vmci_handle** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @VMCI_NO_PRIVILEGE_FLAGS, align 4
  %40 = call i32 @vmci_qpair_alloc(%struct.vmci_qp** %33, %struct.vmci_handle* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %32, %30
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @vmci_transport_error_to_vsock_error(i32 %47)
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %15, align 4
  ret i32 %50
}

declare dso_local i32 @vmci_qpair_alloc(%struct.vmci_qp**, %struct.vmci_handle*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
