; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima.h_ima_update_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima.h_ima_update_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.integrity_iint_cache*, %struct.file*)* @ima_update_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_update_xattr(%struct.integrity_iint_cache* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.integrity_iint_cache*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.integrity_iint_cache* %0, %struct.integrity_iint_cache** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
