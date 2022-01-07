; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_resolve_userfault_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_resolve_userfault_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userfaultfd_ctx = type { i32 }
%struct.uffd_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"[userfaultfd]\00", align 1
@userfaultfd_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@UFFD_SHARED_FCNTL_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.userfaultfd_ctx*, %struct.userfaultfd_ctx*, %struct.uffd_msg*)* @resolve_userfault_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_userfault_fork(%struct.userfaultfd_ctx* %0, %struct.userfaultfd_ctx* %1, %struct.uffd_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.userfaultfd_ctx*, align 8
  %6 = alloca %struct.userfaultfd_ctx*, align 8
  %7 = alloca %struct.uffd_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.userfaultfd_ctx* %0, %struct.userfaultfd_ctx** %5, align 8
  store %struct.userfaultfd_ctx* %1, %struct.userfaultfd_ctx** %6, align 8
  store %struct.uffd_msg* %2, %struct.uffd_msg** %7, align 8
  %9 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %6, align 8
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UFFD_SHARED_FCNTL_FLAGS, align 4
  %15 = and i32 %13, %14
  %16 = or i32 %10, %15
  %17 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @userfaultfd_fops, %struct.userfaultfd_ctx* %9, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.uffd_msg*, %struct.uffd_msg** %7, align 8
  %24 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.uffd_msg*, %struct.uffd_msg** %7, align 8
  %29 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.userfaultfd_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
