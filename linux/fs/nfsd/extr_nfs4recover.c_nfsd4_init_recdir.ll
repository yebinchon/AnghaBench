; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_init_recdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_init_recdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i32, i32* }
%struct.cred = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"NFSD: Using %s as the NFSv4 state recovery directory\0A\00", align 1
@user_recovery_dirname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"NFSD: Unable to change credentials to find recovery directory: error %d\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NFSD: unable to find recovery directory %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfsd4_init_recdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_init_recdir(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @nfsd_net_id, align 4
  %9 = call %struct.nfsd_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.nfsd_net* %9, %struct.nfsd_net** %4, align 8
  %10 = load i32, i32* @user_recovery_dirname, align 4
  %11 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @BUG_ON(i32* %14)
  %16 = call i32 @nfs4_save_creds(%struct.cred** %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load i32, i32* @user_recovery_dirname, align 4
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @O_DIRECTORY, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @filp_open(i32 %24, i32 %27, i32 0)
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load i32, i32* @user_recovery_dirname, align 4
  %38 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %40 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %36, %23
  %46 = load %struct.cred*, %struct.cred** %5, align 8
  %47 = call i32 @nfs4_reset_creds(%struct.cred* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %52 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i32 @nfs4_save_creds(%struct.cred**) #1

declare dso_local i32* @filp_open(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs4_reset_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
