; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_read_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pgio_header*)*, i32 (i32*, %struct.nfs_pgio_header*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_ld_read_done(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  %3 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (i32*, %struct.nfs_pgio_header*)*, i32 (i32*, %struct.nfs_pgio_header*)** %15, align 8
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 2
  %19 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %20 = call i32 %16(i32* %18, %struct.nfs_pgio_header* %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @trace_nfs4_pnfs_read(%struct.nfs_pgio_header* %22, i32 %25)
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %34 = call i32 @pnfs_ld_handle_read_error(%struct.nfs_pgio_header* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %39, align 8
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %42 = call i32 %40(%struct.nfs_pgio_header* %41)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @trace_nfs4_pnfs_read(%struct.nfs_pgio_header*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pnfs_ld_handle_read_error(%struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
