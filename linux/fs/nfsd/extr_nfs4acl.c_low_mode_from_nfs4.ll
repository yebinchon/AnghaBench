; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_low_mode_from_nfs4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_low_mode_from_nfs4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFS4_WRITE_MODE = common dso_local global i32 0, align 4
@NFS4_ACL_DIR = common dso_local global i32 0, align 4
@NFS4_ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@NFS4_READ_MODE = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i16 0, align 2
@ACL_WRITE = common dso_local global i16 0, align 2
@NFS4_EXECUTE_MODE = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16*, i32)* @low_mode_from_nfs4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @low_mode_from_nfs4(i32 %0, i16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @NFS4_WRITE_MODE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NFS4_ACL_DIR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @NFS4_ACE_DELETE_CHILD, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i16*, i16** %5, align 8
  store i16 0, i16* %18, align 2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NFS4_READ_MODE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @NFS4_READ_MODE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i16, i16* @ACL_READ, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16*, i16** %5, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %27, align 2
  br label %32

32:                                               ; preds = %24, %17
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i16, i16* @ACL_WRITE, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16*, i16** %5, align 8
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %41, align 2
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @NFS4_EXECUTE_MODE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @NFS4_EXECUTE_MODE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i16, i16* @ACL_EXECUTE, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16*, i16** %5, align 8
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %55, align 2
  br label %60

60:                                               ; preds = %52, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
