; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_xdr_decode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_xdr_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.xdr_stream*, %struct.nfs_entry*, i32)*, i32, i32, i32 }
%struct.nfs_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xdr_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.nfs_entry*, %struct.xdr_stream*)* @xdr_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_decode(%struct.TYPE_5__* %0, %struct.nfs_entry* %1, %struct.xdr_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.nfs_entry*, align 8
  %7 = alloca %struct.xdr_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %6, align 8
  store %struct.xdr_stream* %2, %struct.xdr_stream** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (%struct.xdr_stream*, %struct.nfs_entry*, i32)*, i32 (%struct.xdr_stream*, %struct.nfs_entry*, i32)** %10, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %13 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %11(%struct.xdr_stream* %12, %struct.nfs_entry* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
