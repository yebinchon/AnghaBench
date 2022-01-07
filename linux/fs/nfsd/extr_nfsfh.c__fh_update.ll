; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c__fh_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c__fh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.svc_export = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.fid = type { i32 }

@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@FILEID_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_fh*, %struct.svc_export*, %struct.dentry*)* @_fh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fh_update(%struct.svc_fh* %0, %struct.svc_export* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.svc_fh*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.svc_fh* %0, %struct.svc_fh** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %12 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  %15 = icmp ne %struct.dentry* %10, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %22 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = sub nsw i64 %27, 1
  %29 = inttoptr i64 %28 to %struct.fid*
  store %struct.fid* %29, %struct.fid** %7, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %31 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %34 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %32, %36
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %40 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = load %struct.fid*, %struct.fid** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @exportfs_encode_fh(%struct.dentry* %47, %struct.fid* %48, i32* %8, i32 %49)
  %51 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %52 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 4
  %56 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %57 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %66

61:                                               ; preds = %3
  %62 = load i32, i32* @FILEID_ROOT, align 4
  %63 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %64 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %16
  ret void
}

declare dso_local i32 @exportfs_encode_fh(%struct.dentry*, %struct.fid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
