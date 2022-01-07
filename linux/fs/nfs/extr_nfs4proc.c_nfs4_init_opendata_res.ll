; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_opendata_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_opendata_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_opendata*)* @nfs4_init_opendata_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_init_opendata_res(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca %struct.nfs4_opendata*, align 8
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %2, align 8
  %3 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %3, i32 0, i32 2
  %5 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32* %4, i32** %7, align 8
  %8 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %19 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %22 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %29 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %33 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %36 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %40 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %43 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %42, i32 0, i32 2
  %44 = call i32 @nfs_fattr_init(i32* %43)
  %45 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %46 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %45, i32 0, i32 2
  %47 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %48 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %47, i32 0, i32 1
  %49 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %2, align 8
  %50 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %49, i32 0, i32 0
  %51 = call i32 @nfs_fattr_init_names(i32* %46, i32* %48, i32* %50)
  ret void
}

declare dso_local i32 @nfs_fattr_init(i32*) #1

declare dso_local i32 @nfs_fattr_init_names(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
