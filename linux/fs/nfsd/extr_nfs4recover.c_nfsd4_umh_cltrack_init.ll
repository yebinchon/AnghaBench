; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_umh_cltrack_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_umh_cltrack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@.str = private unnamed_addr constant [73 x i8] c"NFSD: attempt to initialize umh client tracking in a container ignored.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"NFSD: Using UMH upcall client tracking operations.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfsd4_umh_cltrack_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_umh_cltrack_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  %6 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @nfsd_net_id, align 4
  %9 = call %struct.nfsd_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.nfsd_net* %9, %struct.nfsd_net** %5, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @nfsd4_cltrack_grace_start(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = icmp ne %struct.net* %14, @init_net
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @kfree(i8* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @nfsd4_umh_cltrack_upcall(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %23, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @kfree(i8* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i8* @nfsd4_cltrack_grace_start(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nfsd4_umh_cltrack_upcall(i8*, i32*, i8*, i32*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
