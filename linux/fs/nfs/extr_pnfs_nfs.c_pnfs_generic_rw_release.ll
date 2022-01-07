; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_rw_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_rw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_generic_rw_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_pgio_header*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nfs_pgio_header*
  store %struct.nfs_pgio_header* %5, %struct.nfs_pgio_header** %3, align 8
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @nfs_put_client(i32 %8)
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 %14(i8* %15)
  ret void
}

declare dso_local i32 @nfs_put_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
