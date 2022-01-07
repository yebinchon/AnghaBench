; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_3__, i32 (i32)* }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s: res %.*s, lock %u:%llu, Local AST\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_do_local_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.dlm_lock*, align 8
  %7 = alloca i32 (i32)**, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %6, align 8
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @be64_to_cpu(i32 %22)
  %24 = call i32 @dlm_get_lock_cookie_node(i32 %23)
  %25 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @be64_to_cpu(i32 %28)
  %30 = call i32 @dlm_get_lock_cookie_seq(i32 %29)
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18, i32 %24, i32 %30)
  %32 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %32, i32 0, i32 2
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = bitcast i32 (i32)* %34 to i32 (i32)**
  store i32 (i32)** %35, i32 (i32)*** %7, align 8
  %36 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %48 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %49 = call i32 @dlm_update_lvb(%struct.dlm_ctxt* %46, %struct.dlm_lock_resource* %47, %struct.dlm_lock* %48)
  %50 = load i32 (i32)**, i32 (i32)*** %7, align 8
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %53 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_update_lvb(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
