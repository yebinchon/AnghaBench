; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_resolver_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_resolver_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfs_net = type { i32 }

@nfs_net_id = common dso_local global i32 0, align 4
@nfs_dns_resolve_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_dns_resolver_cache_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfs_net_id, align 4
  %8 = call %struct.nfs_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfs_net* %8, %struct.nfs_net** %5, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = call i32 @cache_create_net(i32* @nfs_dns_resolve_template, %struct.net* %9)
  %11 = load %struct.nfs_net*, %struct.nfs_net** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nfs_net*, %struct.nfs_net** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.nfs_net*, %struct.nfs_net** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.net*, %struct.net** %3, align 8
  %25 = load %struct.nfs_net*, %struct.nfs_net** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfs_cache_register_net(%struct.net* %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %31
  %34 = load %struct.nfs_net*, %struct.nfs_net** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net*, %struct.net** %3, align 8
  %38 = call i32 @cache_destroy_net(i32 %36, %struct.net* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %32, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @cache_create_net(i32*, %struct.net*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nfs_cache_register_net(%struct.net*, i32) #1

declare dso_local i32 @cache_destroy_net(i32, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
