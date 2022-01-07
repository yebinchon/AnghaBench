; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_startup_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_startup_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.nfsd_net = type { i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.net*, %struct.cred*)* @nfsd_startup_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_startup_net(i32 %0, %struct.net* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.nfsd_net*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.net* %1, %struct.net** %6, align 8
  store %struct.cred* %2, %struct.cred** %7, align 8
  %10 = load %struct.net*, %struct.net** %6, align 8
  %11 = load i32, i32* @nfsd_net_id, align 4
  %12 = call %struct.nfsd_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.nfsd_net* %12, %struct.nfsd_net** %8, align 8
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nfsd_startup_generic(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = load %struct.cred*, %struct.cred** %7, align 8
  %28 = call i32 @nfsd_init_socks(%struct.net* %26, %struct.cred* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %34 = call i64 @nfsd_needs_lockd(%struct.nfsd_net* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = load %struct.cred*, %struct.cred** %7, align 8
  %44 = call i32 @lockd_up(%struct.net* %42, %struct.cred* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %71

48:                                               ; preds = %41
  %49 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %50 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %36, %32
  %52 = load %struct.net*, %struct.net** %6, align 8
  %53 = call i32 @nfs4_state_start_net(%struct.net* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %59 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %74

60:                                               ; preds = %56
  %61 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %62 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = call i32 @lockd_down(%struct.net* %66)
  %68 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %69 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %47, %31
  %72 = call i32 (...) @nfsd_shutdown_generic()
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %57, %23, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfsd_startup_generic(i32) #1

declare dso_local i32 @nfsd_init_socks(%struct.net*, %struct.cred*) #1

declare dso_local i64 @nfsd_needs_lockd(%struct.nfsd_net*) #1

declare dso_local i32 @lockd_up(%struct.net*, %struct.cred*) #1

declare dso_local i32 @nfs4_state_start_net(%struct.net*) #1

declare dso_local i32 @lockd_down(%struct.net*) #1

declare dso_local i32 @nfsd_shutdown_generic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
