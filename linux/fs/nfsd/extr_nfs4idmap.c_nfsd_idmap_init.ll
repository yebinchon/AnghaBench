; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nfsd_idmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nfsd_idmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i8*, i8* }

@nfsd_net_id = common dso_local global i32 0, align 4
@idtoname_cache_template = common dso_local global i32 0, align 4
@nametoid_cache_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_idmap_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfsd_net_id, align 4
  %8 = call %struct.nfsd_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfsd_net* %8, %struct.nfsd_net** %5, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = call i8* @cache_create_net(i32* @idtoname_cache_template, %struct.net* %9)
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %2, align 4
  br label %76

23:                                               ; preds = %1
  %24 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = call i32 @cache_register_net(i8* %26, %struct.net* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = call i8* @cache_create_net(i32* @nametoid_cache_template, %struct.net* %33)
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %32
  %48 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.net*, %struct.net** %3, align 8
  %52 = call i32 @cache_register_net(i8* %50, %struct.net* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %76

57:                                               ; preds = %55
  %58 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %59 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.net*, %struct.net** %3, align 8
  %62 = call i32 @cache_destroy_net(i8* %60, %struct.net* %61)
  br label %63

63:                                               ; preds = %57, %42
  %64 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %65 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.net*, %struct.net** %3, align 8
  %68 = call i32 @cache_unregister_net(i8* %66, %struct.net* %67)
  br label %69

69:                                               ; preds = %63, %31
  %70 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %71 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.net*, %struct.net** %3, align 8
  %74 = call i32 @cache_destroy_net(i8* %72, %struct.net* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %56, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i8* @cache_create_net(i32*, %struct.net*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @cache_register_net(i8*, %struct.net*) #1

declare dso_local i32 @cache_destroy_net(i8*, %struct.net*) #1

declare dso_local i32 @cache_unregister_net(i8*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
