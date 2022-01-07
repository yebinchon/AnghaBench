; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs3_proc_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_get_root(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %12 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %13 = call i32 @do_proc_get_root(i64 %10, %struct.nfs_fh* %11, %struct.nfs_fsinfo* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %33 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %34 = call i32 @do_proc_get_root(i64 %31, %struct.nfs_fh* %32, %struct.nfs_fsinfo* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %26, %16, %3
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @do_proc_get_root(i64, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
