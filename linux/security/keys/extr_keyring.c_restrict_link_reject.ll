; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_restrict_link_reject.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_restrict_link_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }
%union.key_payload = type { i32 }
%struct.key = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restrict_link_reject(%struct.key* %0, %struct.key_type* %1, %union.key_payload* %2, %struct.key* %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key_type*, align 8
  %7 = alloca %union.key_payload*, align 8
  %8 = alloca %struct.key*, align 8
  store %struct.key* %0, %struct.key** %5, align 8
  store %struct.key_type* %1, %struct.key_type** %6, align 8
  store %union.key_payload* %2, %union.key_payload** %7, align 8
  store %struct.key* %3, %struct.key** %8, align 8
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
