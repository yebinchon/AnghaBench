; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_would_dump.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_would_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.user_namespace* }
%struct.linux_binprm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@MAY_READ = common dso_local global i32 0, align 4
@BINPRM_FLAGS_ENFORCE_NONDUMP = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @would_dump(%struct.linux_binprm* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load i32, i32* @MAY_READ, align 4
  %12 = call i64 @inode_permission(%struct.inode* %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load i32, i32* @BINPRM_FLAGS_ENFORCE_NONDUMP, align 4
  %16 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %17 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %21 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.user_namespace*, %struct.user_namespace** %23, align 8
  store %struct.user_namespace* %24, %struct.user_namespace** %6, align 8
  store %struct.user_namespace* %24, %struct.user_namespace** %7, align 8
  br label %25

25:                                               ; preds = %36, %14
  %26 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %27 = icmp ne %struct.user_namespace* %26, @init_user_ns
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @privileged_wrt_inode_uidgid(%struct.user_namespace* %29, %struct.inode* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %38 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %37, i32 0, i32 0
  %39 = load %struct.user_namespace*, %struct.user_namespace** %38, align 8
  store %struct.user_namespace* %39, %struct.user_namespace** %7, align 8
  br label %25

40:                                               ; preds = %34
  %41 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %42 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %43 = icmp ne %struct.user_namespace* %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %46 = call %struct.user_namespace* @get_user_ns(%struct.user_namespace* %45)
  %47 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %48 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.user_namespace* %46, %struct.user_namespace** %50, align 8
  %51 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %52 = call i32 @put_user_ns(%struct.user_namespace* %51)
  br label %53

53:                                               ; preds = %44, %40
  br label %54

54:                                               ; preds = %53, %2
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @privileged_wrt_inode_uidgid(%struct.user_namespace*, %struct.inode*) #1

declare dso_local %struct.user_namespace* @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @put_user_ns(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
