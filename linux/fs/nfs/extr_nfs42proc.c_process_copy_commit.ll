; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_process_copy_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_process_copy_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs42_copy_res = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_commitres = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"commit verf differs from copy verf\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.nfs42_copy_res*)* @process_copy_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_copy_commit(%struct.file* %0, i32 %1, %struct.nfs42_copy_res* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs42_copy_res*, align 8
  %7 = alloca %struct.nfs_commitres, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfs42_copy_res* %2, %struct.nfs42_copy_res** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.TYPE_7__* @kzalloc(i32 4, i32 %11)
  %13 = getelementptr inbounds %struct.nfs_commitres, %struct.nfs_commitres* %7, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %13, align 8
  %14 = getelementptr inbounds %struct.nfs_commitres, %struct.nfs_commitres* %7, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %6, align 8
  %22 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfs4_proc_commit(%struct.file* %19, i32 %20, i32 %24, %struct.nfs_commitres* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %44

29:                                               ; preds = %18
  %30 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %6, align 8
  %31 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.nfs_commitres, %struct.nfs_commitres* %7, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i64 @nfs_write_verifier_cmp(i32* %33, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = getelementptr inbounds %struct.nfs_commitres, %struct.nfs_commitres* %7, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @kfree(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %44, %17
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_proc_commit(%struct.file*, i32, i32, %struct.nfs_commitres*) #1

declare dso_local i64 @nfs_write_verifier_cmp(i32*, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
