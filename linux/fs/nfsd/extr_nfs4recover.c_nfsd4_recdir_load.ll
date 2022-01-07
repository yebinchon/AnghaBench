; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_recdir_load.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_recdir_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@load_recdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"nfsd4: failed loading clients from recovery directory %pD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfsd4_recdir_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_recdir_load(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfsd_net_id, align 4
  %8 = call %struct.nfsd_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfsd_net* %8, %struct.nfsd_net** %5, align 8
  %9 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @load_recdir, align 4
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %17 = call i32 @nfsd4_list_rec_dir(i32 %15, %struct.nfsd_net* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfsd4_list_rec_dir(i32, %struct.nfsd_net*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
