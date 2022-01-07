; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_encode_change.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_encode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kstat = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.kstat*, %struct.inode*, %struct.svc_export*)* @encode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_change(i32* %0, %struct.kstat* %1, %struct.inode* %2, %struct.svc_export* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.svc_export*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.svc_export* %3, %struct.svc_export** %8, align 8
  %9 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %10 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %17 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @convert_to_wallclock(i32 %20)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 0, i32* %26, align 4
  br label %56

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i64 @IS_I_VERSION(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.kstat*, %struct.kstat** %6, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @nfsd4_change_attribute(%struct.kstat* %34, %struct.inode* %35)
  %37 = call i32* @xdr_encode_hyper(i32* %33, i32 %36)
  store i32* %37, i32** %5, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.kstat*, %struct.kstat** %6, align 8
  %40 = getelementptr inbounds %struct.kstat, %struct.kstat* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.kstat*, %struct.kstat** %6, align 8
  %48 = getelementptr inbounds %struct.kstat, %struct.kstat* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %38, %32
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @convert_to_wallclock(i32) #1

declare dso_local i64 @IS_I_VERSION(%struct.inode*) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @nfsd4_change_attribute(%struct.kstat*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
