; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_remote_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_remote_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_3__, %struct.dlm_lockstatus* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.dlm_lockstatus = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: res %.*s, lock %u:%llu, Remote AST\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_do_remote_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.dlm_lock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_lockstatus*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %6, align 8
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %22 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @be64_to_cpu(i32 %24)
  %26 = call i32 @dlm_get_lock_cookie_node(i32 %25)
  %27 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @be64_to_cpu(i32 %30)
  %32 = call i32 @dlm_get_lock_cookie_seq(i32 %31)
  %33 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %20, i32 %26, i32 %32)
  %34 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %35 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %34, i32 0, i32 1
  %36 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %35, align 8
  store %struct.dlm_lockstatus* %36, %struct.dlm_lockstatus** %8, align 8
  %37 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %38 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %48 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %51 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %52 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %53 = call i32 @dlm_update_lvb(%struct.dlm_ctxt* %50, %struct.dlm_lock_resource* %51, %struct.dlm_lock* %52)
  %54 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %55 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %56 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dlm_send_proxy_ast(%struct.dlm_ctxt* %54, %struct.dlm_lock_resource* %55, %struct.dlm_lock* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_update_lvb(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_send_proxy_ast(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
