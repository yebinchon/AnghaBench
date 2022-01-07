; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_recdir_purge_old.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_recdir_purge_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32, i32 }

@purge_old = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"nfsd4: failed to purge old clients from recovery directory %pD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd_net*)* @nfsd4_recdir_purge_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_recdir_purge_old(%struct.nfsd_net* %0) #0 {
  %2 = alloca %struct.nfsd_net*, align 8
  %3 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %2, align 8
  %4 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %7 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mnt_want_write_file(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %35

19:                                               ; preds = %11
  %20 = load i32, i32* @purge_old, align 4
  %21 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %22 = call i32 @nfsd4_list_rec_dir(i32 %20, %struct.nfsd_net* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %27 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vfs_fsync(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %32 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mnt_drop_write_file(i32 %33)
  br label %35

35:                                               ; preds = %30, %18
  %36 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %37 = call i32 @nfs4_release_reclaim(%struct.nfsd_net* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %42 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %10, %40, %35
  ret void
}

declare dso_local i32 @mnt_want_write_file(i32) #1

declare dso_local i32 @nfsd4_list_rec_dir(i32, %struct.nfsd_net*) #1

declare dso_local i32 @vfs_fsync(i32, i32) #1

declare dso_local i32 @mnt_drop_write_file(i32) #1

declare dso_local i32 @nfs4_release_reclaim(%struct.nfsd_net*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
