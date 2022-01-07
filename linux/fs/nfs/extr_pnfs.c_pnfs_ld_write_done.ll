; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_pgio_header*)*, i32 (i32*, %struct.nfs_pgio_header*)* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_ld_write_done(%struct.nfs_pgio_header* %0) #0 {
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
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = call i32 @pnfs_set_layoutcommit(i32 %14, i32 %17, i64 %25)
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32 (i32*, %struct.nfs_pgio_header*)*, i32 (i32*, %struct.nfs_pgio_header*)** %30, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %32, i32 0, i32 2
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %35 = call i32 %31(i32* %33, %struct.nfs_pgio_header* %34)
  br label %36

36:                                               ; preds = %11, %1
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %38 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @trace_nfs4_pnfs_write(%struct.nfs_pgio_header* %37, i32 %40)
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %49 = call i32 @pnfs_ld_handle_write_error(%struct.nfs_pgio_header* %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %54, align 8
  %56 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %57 = call i32 %55(%struct.nfs_pgio_header* %56)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pnfs_set_layoutcommit(i32, i32, i64) #1

declare dso_local i32 @trace_nfs4_pnfs_write(%struct.nfs_pgio_header*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pnfs_ld_handle_write_error(%struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
