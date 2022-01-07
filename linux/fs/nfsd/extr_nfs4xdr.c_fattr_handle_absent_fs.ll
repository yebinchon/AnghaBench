; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_fattr_handle_absent_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_fattr_handle_absent_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORD0_ABSENT_FS_ATTRS = common dso_local global i32 0, align 4
@WORD1_ABSENT_FS_ATTRS = common dso_local global i32 0, align 4
@FATTR4_WORD0_RDATTR_ERROR = common dso_local global i32 0, align 4
@FATTR4_WORD0_FS_LOCATIONS = common dso_local global i32 0, align 4
@NFSERR_MOVED = common dso_local global i32 0, align 4
@nfserr_moved = common dso_local global i32 0, align 4
@WORD2_ABSENT_FS_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @fattr_handle_absent_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fattr_handle_absent_fs(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WORD0_ABSENT_FS_ATTRS, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WORD1_ABSENT_FS_ATTRS, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16, %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FATTR4_WORD0_RDATTR_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FATTR4_WORD0_FS_LOCATIONS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @NFSERR_MOVED, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @nfserr_moved, align 4
  store i32 %39, i32* %5, align 4
  br label %54

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* @WORD0_ABSENT_FS_ATTRS, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @WORD1_ABSENT_FS_ATTRS, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @WORD2_ABSENT_FS_ATTRS, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %50
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %41, %38
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
