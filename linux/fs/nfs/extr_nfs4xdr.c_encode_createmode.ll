; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_createmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_createmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*)* @encode_createmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_createmode(%struct.xdr_stream* %0, %struct.nfs_openargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_openargs*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = call i32* @reserve_space(%struct.xdr_stream* %6, i32 4)
  store i32* %7, i32** %5, align 8
  %8 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %90 [
    i32 128, label %11
    i32 129, label %33
    i32 131, label %55
    i32 130, label %63
  ]

11:                                               ; preds = %2
  %12 = call i32 @cpu_to_be32(i32 128)
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %15 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %22, i32 0, i32 2
  %24 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @encode_attrs(%struct.xdr_stream* %14, i32 %18, i32 %21, i32* %23, %struct.TYPE_4__* %26, i32 %31)
  br label %90

33:                                               ; preds = %2
  %34 = call i32 @cpu_to_be32(i32 129)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %37 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %44, i32 0, i32 2
  %46 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %50 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @encode_attrs(%struct.xdr_stream* %36, i32 %40, i32 %43, i32* %45, %struct.TYPE_4__* %48, i32 %53)
  br label %90

55:                                               ; preds = %2
  %56 = call i32 @cpu_to_be32(i32 131)
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %59 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i32 @encode_nfs4_verifier(%struct.xdr_stream* %58, i32* %61)
  br label %90

63:                                               ; preds = %2
  %64 = call i32 @cpu_to_be32(i32 130)
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %67 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %68 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = call i32 @encode_nfs4_verifier(%struct.xdr_stream* %66, i32* %69)
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %72 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %73 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %80 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %79, i32 0, i32 2
  %81 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %82 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %85 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @encode_attrs(%struct.xdr_stream* %71, i32 %75, i32 %78, i32* %80, %struct.TYPE_4__* %83, i32 %88)
  br label %90

90:                                               ; preds = %63, %2, %55, %33, %11
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_attrs(%struct.xdr_stream*, i32, i32, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @encode_nfs4_verifier(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
