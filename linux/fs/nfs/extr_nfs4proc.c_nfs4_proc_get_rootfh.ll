; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_rootfh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_rootfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }

@NFS4ERR_WRONGSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_get_rootfh(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fsinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %14 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %15 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %16 = call i32 @nfs4_lookup_root(%struct.nfs_server* %13, %struct.nfs_fh* %14, %struct.nfs_fsinfo* %15)
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %12, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20, %17
  %25 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)** %30, align 8
  %32 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %33 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %34 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %35 = call i32 %31(%struct.nfs_server* %32, %struct.nfs_fh* %33, %struct.nfs_fsinfo* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %24, %20
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %41 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %42 = call i32 @nfs4_server_capabilities(%struct.nfs_server* %40, %struct.nfs_fh* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %48 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %49 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %50 = call i32 @nfs4_do_fsinfo(%struct.nfs_server* %47, %struct.nfs_fh* %48, %struct.nfs_fsinfo* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @nfs4_map_errors(i32 %52)
  ret i32 %53
}

declare dso_local i32 @nfs4_lookup_root(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs4_server_capabilities(%struct.nfs_server*, %struct.nfs_fh*) #1

declare dso_local i32 @nfs4_do_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs4_map_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
