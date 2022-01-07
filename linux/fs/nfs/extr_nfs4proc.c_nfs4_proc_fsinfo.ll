; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_fsinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs4_proc_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %8 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %9 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfs_fattr_init(i32 %10)
  %12 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %13 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %14 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %15 = call i32 @nfs4_do_fsinfo(%struct.nfs_server* %12, %struct.nfs_fh* %13, %struct.nfs_fsinfo* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %25 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %26 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %27 = call i32 @set_pnfs_layoutdriver(%struct.nfs_server* %24, %struct.nfs_fh* %25, %struct.nfs_fsinfo* %26)
  br label %28

28:                                               ; preds = %18, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_do_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @set_pnfs_layoutdriver(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
