; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_udfdecl.h_udf_iget_special.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_udfdecl.h_udf_iget_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.kernel_lb_addr*)* @udf_iget_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @udf_iget_special(%struct.super_block* %0, %struct.kernel_lb_addr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.kernel_lb_addr*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %4, align 8
  %7 = call %struct.inode* @__udf_iget(%struct.super_block* %5, %struct.kernel_lb_addr* %6, i32 1)
  ret %struct.inode* %7
}

declare dso_local %struct.inode* @__udf_iget(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
