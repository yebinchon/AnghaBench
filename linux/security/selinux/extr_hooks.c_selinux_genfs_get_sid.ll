; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_genfs_get_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_genfs_get_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SE_SBPROC = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i32, i32*)* @selinux_genfs_get_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_genfs_get_sid(%struct.dentry* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @__get_free_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %85

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i8* @dentry_path_raw(%struct.dentry* %26, i8* %27, i32 %28)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %10, align 4
  br label %80

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SE_SBPROC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 57
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i1 [ false, %42 ], [ %53, %48 ]
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 47, i8* %58, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  br label %42

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.super_block*, %struct.super_block** %11, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @security_genfs_sid(i32* @selinux_state, i32 %67, i8* %68, i32 %69, i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @SECINITSID_UNLABELED, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %62
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i8*, i8** %12, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = call i32 @free_page(i64 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %22
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @dentry_path_raw(%struct.dentry*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @security_genfs_sid(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
