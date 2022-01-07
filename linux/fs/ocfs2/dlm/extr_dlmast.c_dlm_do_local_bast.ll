; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_4__, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s: res %.*s, lock %u:%llu, Local BAST, blocked %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_do_local_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i32)**, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 2
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = bitcast i32 (i32, i32)* %12 to i32 (i32, i32)**
  store i32 (i32, i32)** %13, i32 (i32, i32)*** %9, align 8
  %14 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %15 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %36 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = call i32 @dlm_get_lock_cookie_node(i32 %39)
  %41 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be64_to_cpu(i32 %44)
  %46 = call i32 @dlm_get_lock_cookie_seq(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %40, i32 %46, i32 %47)
  %49 = load i32 (i32, i32)**, i32 (i32, i32)*** %9, align 8
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 %50(i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
