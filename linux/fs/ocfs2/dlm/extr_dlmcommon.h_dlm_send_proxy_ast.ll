; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_send_proxy_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_send_proxy_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { i32 }

@DLM_AST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32)* @dlm_send_proxy_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_proxy_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %12 = load i32, i32* @DLM_AST, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @dlm_send_proxy_ast_msg(%struct.dlm_ctxt* %9, %struct.dlm_lock_resource* %10, %struct.dlm_lock* %11, i32 %12, i32 0, i32 %13)
  ret i32 %14
}

declare dso_local i32 @dlm_send_proxy_ast_msg(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
