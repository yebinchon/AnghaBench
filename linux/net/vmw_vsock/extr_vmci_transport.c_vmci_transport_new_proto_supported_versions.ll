; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_new_proto_supported_versions.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_new_proto_supported_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROTOCOL_OVERRIDE = common dso_local global i32 0, align 4
@VSOCK_PROTO_ALL_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmci_transport_new_proto_supported_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_new_proto_supported_versions() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PROTOCOL_OVERRIDE, align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @PROTOCOL_OVERRIDE, align 4
  store i32 %5, i32* %1, align 4
  br label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @VSOCK_PROTO_ALL_SUPPORTED, align 4
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
