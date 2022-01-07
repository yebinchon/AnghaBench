; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_fix_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_fix_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.integrity_iint_cache = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@HASH_ALGO_SHA1 = common dso_local global i64 0, align 8
@IMA_XATTR_DIGEST = common dso_local global i32 0, align 4
@IMA_XATTR_DIGEST_NG = common dso_local global i32 0, align 4
@XATTR_NAME_IMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.integrity_iint_cache*)* @ima_fix_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_fix_xattr(%struct.dentry* %0, %struct.integrity_iint_cache* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.integrity_iint_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.integrity_iint_cache* %1, %struct.integrity_iint_cache** %4, align 8
  %8 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %9 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @HASH_ALGO_SHA1, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %17 = load i32, i32* @IMA_XATTR_DIGEST, align 4
  %18 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %19 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 8
  br label %39

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* @IMA_XATTR_DIGEST_NG, align 4
  %26 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %27 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %25, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %34 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 %32, i64* %38, align 8
  br label %39

39:                                               ; preds = %24, %16
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = load i32, i32* @XATTR_NAME_IMA, align 4
  %42 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %43 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 32, %52
  %54 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %55 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %53, %58
  %60 = call i32 @__vfs_setxattr_noperm(%struct.dentry* %40, i32 %41, i32* %50, i64 %59, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @__vfs_setxattr_noperm(%struct.dentry*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
